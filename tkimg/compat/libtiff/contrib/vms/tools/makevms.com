$!========================================================================
$!
$! Name      : MAKEVMS
$!
$! Purpose   : Compile TIFF tools
$!
$! Arguments : 
$!
$! Created   6-DEC-1991   Karsten Spang
$!
$!========================================================================
$   CURRENT_DIR=F$ENVIRONMENT("DEFAULT")
$   ON CONTROL_Y THEN GOTO EXIT
$   ON ERROR THEN GOTO EXIT
$!
$! Get hold on definitions
$!
$!  Older versions of VMS may not recoqnize the "ARCH_NAME" keyword
$!  This happens only on VAX
$!
$   SAVE_MESS=F$ENVIRONMENT("MESSAGE")
$   SET MESSAGE/NOID/NOFAC/NOSEV/NOTEXT
$   ARCH=F$GETSYI("ARCH_NAME")
$   SET MESSAGE 'SAVE_MESS'
$   IF F$TYPE(ARCH).EQS."" THEN ARCH="VAX"
$   ARCH=F$EDIT(ARCH,"UPCASE")
$!
$   DEFINE SYS SYS$LIBRARY
$   THIS_FILE=F$ENVIRONMENT("PROCEDURE")
$   PROC_NAME=F$PARSE(THIS_FILE,,,"NAME","SYNTAX_ONLY")
$   THIS_DIR=F$PARSE(THIS_FILE,,,"DEVICE","SYNTAX_ONLY")+ -
        F$PARSE(THIS_FILE,,,"DIRECTORY","SYNTAX_ONLY")
$   SET DEFAULT 'THIS_DIR'
$   LIB_DIR=F$PARSE("[-.LIBTIFF]")
$   LIB_DIR=F$PARSE(LIB_DIR,,,"DEVICE","SYNTAX_ONLY")+ -
        F$PARSE(LIB_DIR,,,"DIRECTORY","SYNTAX_ONLY")
$   DEFINE TIFFSHR 'LIB_DIR'TIFFSHR
$   CONF_LIBRARY="USE_VARARGS=0,USE_PROTOTYPES=1,USE_CONST=1,"+ -
	"BSDTYPES,MMAP_SUPPORT"
$   IF ARCH.EQS."ALPHA"
$   THEN
$!
$! You may want a different floating point option
$!
$       CONF_FP="HAVE_IEEEFP=1"
$       ALPHA_OPT="/PREFIX_LIBRARY_ENTRIES=ALL_ENTRIES/FLOAT=IEEE_FLOAT"
$   ELSE
$       CONF_FP="HAVE_IEEEFP=0"
$       ALPHA_OPT=""
$   ENDIF
$   DEFINES="/DEFINE=("+CONF_LIBRARY+","+CONF_FP+")"
$   INCLUDES="/INCLUDE="+LIB_DIR
$   IF P1.EQS."DEBUG"
$   THEN
$       DEBUG_OPTIONS="/DEBUG/NOOPTIMIZE"
$       LINK_OPTIONS="/DEBUG"
$   ELSE
$       DEBUG_OPTIONS=""
$       LINK_OPTIONS=""
$   ENDIF
$   C_COMPILE="CC"+DEBUG_OPTIONS+DEFINES+INCLUDES+ALPHA_OPT
$   LIBPORT="[-.PORT]PORT"
$!
$   SOURCES="FAX2PS,FAX2TIFF,GIF2TIFF,PAL2RGB," + -
        "PPM2TIFF,RAS2TIFF,RGB2YCBCR," + -
        "THUMBNAIL,TIFF2BW," + -
        "TIFF2PS,TIFFCMP,TIFFCP,TIFFDITHER," + -
        "TIFFDUMP,TIFFINFO,TIFFMEDIAN,TIFFSPLIT,YCBCR"
$!
$! Loop over programs
$!
$   NUMBER=0
$COMPILE_LOOP:
$       FILE=F$ELEMENT(NUMBER,",",SOURCES)
$       IF FILE.EQS."," THEN GOTO END_COMPILE
$       C_FILE=F$PARSE(FILE,".C",,,"SYNTAX_ONLY")
$       C_FILE=F$SEARCH(C_FILE)
$       IF C_FILE.EQS.""
$       THEN
$           WRITE SYS$OUTPUT "Source file "+FILE+" not found"
$           GOTO EXIT
$       ENDIF
$       C_DATE=F$CVTIME(F$FILE_ATTRIBUTES(C_FILE,"RDT"))
$       EXE_FILE=F$PARSE("",".EXE",C_FILE,,"SYNTAX_ONLY")
$       EXE_FILE=F$EXTRACT(0,F$LOCATE(";",EXE_FILE),EXE_FILE)
$       FOUND_EXE_FILE=F$SEARCH(EXE_FILE)
$       IF FOUND_EXE_FILE.EQS.""
$       THEN
$           EXE_DATE=""
$       ELSE
$           EXE_DATE=F$CVTIME(F$FILE_ATTRIBUTES(FOUND_EXE_FILE,"CDT"))
$       ENDIF
$       IF EXE_DATE.LTS.C_DATE
$       THEN
$           WRITE SYS$OUTPUT "Compiling "+FILE
$           C_COMPILE 'FILE'
$           IF ARCH.EQS."ALPHA"
$           THEN
$               LINK'LINK_OPTIONS' 'FILE','LIBPORT'/LIB,'LIB_DIR'TIFF/OPTIONS
$           ELSE
$               LINK'LINK_OPTIONS' 'FILE','LIBPORT'/LIB, -
                    'LIB_DIR'TIFF/OPTIONS,SYS$INPUT:/OPTIONS
SYS$SHARE:VAXCRTL/SHAREABLE
$           ENDIF
$           DELETE 'FILE'.OBJ;*
$           PURGE 'EXE_FILE'
$       ENDIF
$       NUMBER=NUMBER+1
$   GOTO COMPILE_LOOP
$END_COMPILE:
$EXIT:
$   SET DEFAULT 'CURRENT_DIR'
$   EXIT
