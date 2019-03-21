/*
 * zlibtclDecls.h --
 *
 *	Declarations of functions in the platform independent public ZLIBTCL API.
 *
 */

#ifndef _ZLIBTCLDECLS
#define _ZLIBTCLDECLS

/*
 * WARNING: The contents of this file is automatically generated by the
 * genStubs.tcl script. Any modifications to the function declarations
 * below should be made in the zlibtcl.decls script.
 */

#include <tcl.h>

#ifdef ZEXTERN
#   undef TCL_STORAGE_CLASS
#   define TCL_STORAGE_CLASS DLLEXPORT
#else
#   define ZEXTERN extern
#   undef USE_ZLIBTCL_STUBS
#   define USE_ZLIBTCL_STUBS 1
#endif

EXTERN int Zlibtcl_Init(Tcl_Interp *interp);
EXTERN int Zlibtcl_SafeInit(Tcl_Interp *interp);

#include "../compat/zlib/zlib.h"

#undef gzgetc /* Became a macro in zlib 1.2.7 */

/* !BEGIN!: Do not edit below this line. */

/*
 * Exported function declarations:
 */

/* 0 */
ZEXTERN const char *	zlibVersion(void);
/* 1 */
ZEXTERN const char *	zError(int err);
/* 2 */
ZEXTERN uLong		crc32(uLong crc, const Bytef *buf, uInt len);
/* 3 */
ZEXTERN uLong		adler32(uLong adler, const Bytef *buf, uInt len);
/* Slot 4 is reserved */
/* Slot 5 is reserved */
/* Slot 6 is reserved */
/* Slot 7 is reserved */
/* Slot 8 is reserved */
/* Slot 9 is reserved */
/* 10 */
ZEXTERN int		deflateInit_(z_streamp stream, int level,
				const char *version, int stream_size);
/* 11 */
ZEXTERN int		deflateInit2_(z_streamp stream, int level,
				int method, int windowBits, int memLevel,
				int strategy, const char *version,
				int stream_size);
/* 12 */
ZEXTERN int		deflate(z_streamp stream, int flush);
/* 13 */
ZEXTERN int		deflateEnd(z_streamp stream);
/* 14 */
ZEXTERN int		deflateSetDictionary(z_streamp stream,
				const Bytef *dict, uInt dictLength);
/* 15 */
ZEXTERN int		deflateCopy(z_streamp dst, z_streamp src);
/* 16 */
ZEXTERN int		deflateReset(z_streamp stream);
/* 17 */
ZEXTERN int		deflateParams(z_streamp stream, int level,
				int strategy);
/* 18 */
ZEXTERN int		compress(Bytef *dest, uLongf *destLen,
				const Bytef *source, uLong sourceLen);
/* 19 */
ZEXTERN int		compress2(Bytef *dest, uLongf *destLen,
				const Bytef *source, uLong sourceLen,
				int level);
/* 20 */
ZEXTERN int		inflateInit_(z_streamp stream, const char *version,
				int stream_size);
/* 21 */
ZEXTERN int		inflateInit2_(z_streamp stream, int windowBits,
				const char *version, int stream_size);
/* 22 */
ZEXTERN int		inflate(z_streamp stream, int flush);
/* 23 */
ZEXTERN int		inflateEnd(z_streamp stream);
/* 24 */
ZEXTERN int		inflateSetDictionary(z_streamp stream,
				const Bytef *dict, uInt dictLength);
/* 25 */
ZEXTERN int		inflateSync(z_streamp stream);
/* 26 */
ZEXTERN int		inflateReset(z_streamp stream);
/* 27 */
ZEXTERN int		uncompress(Bytef *dest, uLongf *destLen,
				const Bytef *source, uLong sourceLen);
/* 28 */
ZEXTERN int		inflateReset2(z_streamp strm, int windowBits);
/* 29 */
ZEXTERN int		inflateValidate(z_streamp strm, int check);
/* 30 */
ZEXTERN gzFile		gzopen(const char *path, const char *mode);
/* 31 */
ZEXTERN gzFile		gzdopen(int fd, const char *mode);
/* 32 */
ZEXTERN int		gzsetparams(gzFile file, int level, int strategy);
/* 33 */
ZEXTERN int		gzread(gzFile file, voidp buf, unsigned len);
/* 34 */
ZEXTERN int		gzwrite(gzFile file, voidpc buf, unsigned len);
/* 35 */
ZEXTERN int		gzprintf(gzFile file, const char *format, ...);
/* 36 */
ZEXTERN int		gzputs(gzFile file, const char *s);
/* 37 */
ZEXTERN char *		gzgets(gzFile file, char *buf, int len);
/* 38 */
ZEXTERN int		gzputc(gzFile file, int c);
/* 39 */
ZEXTERN int		gzgetc(gzFile file);
/* 40 */
ZEXTERN int		gzflush(gzFile file, int flush);
/* 41 */
ZEXTERN z_off_t		gzseek(gzFile file, z_off_t offset, int whence);
/* 42 */
ZEXTERN int		gzrewind(gzFile file);
/* 43 */
ZEXTERN z_off_t		gztell(gzFile file);
/* 44 */
ZEXTERN int		gzeof(gzFile file);
/* 45 */
ZEXTERN int		gzclose(gzFile file);
/* 46 */
ZEXTERN const char *	gzerror(gzFile file, int *errnum);

typedef struct ZlibtclStubs {
    int magic;
    const struct ZlibtclStubHooks *hooks;

    const char * (*zlibVersionPtr) (void); /* 0 */
    const char * (*zErrorPtr) (int err); /* 1 */
    uLong (*crc32Ptr) (uLong crc, const Bytef *buf, uInt len); /* 2 */
    uLong (*adler32Ptr) (uLong adler, const Bytef *buf, uInt len); /* 3 */
    void (*reserved4)(void);
    void (*reserved5)(void);
    void (*reserved6)(void);
    void (*reserved7)(void);
    void (*reserved8)(void);
    void (*reserved9)(void);
    int (*deflateInit_Ptr) (z_streamp stream, int level, const char *version, int stream_size); /* 10 */
    int (*deflateInit2_Ptr) (z_streamp stream, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size); /* 11 */
    int (*deflatePtr) (z_streamp stream, int flush); /* 12 */
    int (*deflateEndPtr) (z_streamp stream); /* 13 */
    int (*deflateSetDictionaryPtr) (z_streamp stream, const Bytef *dict, uInt dictLength); /* 14 */
    int (*deflateCopyPtr) (z_streamp dst, z_streamp src); /* 15 */
    int (*deflateResetPtr) (z_streamp stream); /* 16 */
    int (*deflateParamsPtr) (z_streamp stream, int level, int strategy); /* 17 */
    int (*compressPtr) (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen); /* 18 */
    int (*compress2Ptr) (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level); /* 19 */
    int (*inflateInit_Ptr) (z_streamp stream, const char *version, int stream_size); /* 20 */
    int (*inflateInit2_Ptr) (z_streamp stream, int windowBits, const char *version, int stream_size); /* 21 */
    int (*inflatePtr) (z_streamp stream, int flush); /* 22 */
    int (*inflateEndPtr) (z_streamp stream); /* 23 */
    int (*inflateSetDictionaryPtr) (z_streamp stream, const Bytef *dict, uInt dictLength); /* 24 */
    int (*inflateSyncPtr) (z_streamp stream); /* 25 */
    int (*inflateResetPtr) (z_streamp stream); /* 26 */
    int (*uncompressPtr) (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen); /* 27 */
    int (*inflateReset2Ptr) (z_streamp strm, int windowBits); /* 28 */
    int (*inflateValidatePtr) (z_streamp strm, int check); /* 29 */
    gzFile (*gzopenPtr) (const char *path, const char *mode); /* 30 */
    gzFile (*gzdopenPtr) (int fd, const char *mode); /* 31 */
    int (*gzsetparamsPtr) (gzFile file, int level, int strategy); /* 32 */
    int (*gzreadPtr) (gzFile file, voidp buf, unsigned len); /* 33 */
    int (*gzwritePtr) (gzFile file, voidpc buf, unsigned len); /* 34 */
    int (*gzprintfPtr) (gzFile file, const char *format, ...); /* 35 */
    int (*gzputsPtr) (gzFile file, const char *s); /* 36 */
    char * (*gzgetsPtr) (gzFile file, char *buf, int len); /* 37 */
    int (*gzputcPtr) (gzFile file, int c); /* 38 */
    int (*gzgetcPtr) (gzFile file); /* 39 */
    int (*gzflushPtr) (gzFile file, int flush); /* 40 */
    z_off_t (*gzseekPtr) (gzFile file, z_off_t offset, int whence); /* 41 */
    int (*gzrewindPtr) (gzFile file); /* 42 */
    z_off_t (*gztellPtr) (gzFile file); /* 43 */
    int (*gzeofPtr) (gzFile file); /* 44 */
    int (*gzclosePtr) (gzFile file); /* 45 */
    const char * (*gzerrorPtr) (gzFile file, int *errnum); /* 46 */
} ZlibtclStubs;

#ifdef __cplusplus
extern "C" {
#endif
ZEXTERN const ZlibtclStubs *zlibtclStubsPtr;
#ifdef __cplusplus
}
#endif

#if defined(USE_ZLIBTCL_STUBS)

/*
 * Inline function declarations:
 */

#define zlibVersion \
	(zlibtclStubsPtr->zlibVersionPtr) /* 0 */
#define zError \
	(zlibtclStubsPtr->zErrorPtr) /* 1 */
#define crc32 \
	(zlibtclStubsPtr->crc32Ptr) /* 2 */
#define adler32 \
	(zlibtclStubsPtr->adler32Ptr) /* 3 */
/* Slot 4 is reserved */
/* Slot 5 is reserved */
/* Slot 6 is reserved */
/* Slot 7 is reserved */
/* Slot 8 is reserved */
/* Slot 9 is reserved */
#define deflateInit_ \
	(zlibtclStubsPtr->deflateInit_Ptr) /* 10 */
#define deflateInit2_ \
	(zlibtclStubsPtr->deflateInit2_Ptr) /* 11 */
#define deflate \
	(zlibtclStubsPtr->deflatePtr) /* 12 */
#define deflateEnd \
	(zlibtclStubsPtr->deflateEndPtr) /* 13 */
#define deflateSetDictionary \
	(zlibtclStubsPtr->deflateSetDictionaryPtr) /* 14 */
#define deflateCopy \
	(zlibtclStubsPtr->deflateCopyPtr) /* 15 */
#define deflateReset \
	(zlibtclStubsPtr->deflateResetPtr) /* 16 */
#define deflateParams \
	(zlibtclStubsPtr->deflateParamsPtr) /* 17 */
#define compress \
	(zlibtclStubsPtr->compressPtr) /* 18 */
#define compress2 \
	(zlibtclStubsPtr->compress2Ptr) /* 19 */
#define inflateInit_ \
	(zlibtclStubsPtr->inflateInit_Ptr) /* 20 */
#define inflateInit2_ \
	(zlibtclStubsPtr->inflateInit2_Ptr) /* 21 */
#define inflate \
	(zlibtclStubsPtr->inflatePtr) /* 22 */
#define inflateEnd \
	(zlibtclStubsPtr->inflateEndPtr) /* 23 */
#define inflateSetDictionary \
	(zlibtclStubsPtr->inflateSetDictionaryPtr) /* 24 */
#define inflateSync \
	(zlibtclStubsPtr->inflateSyncPtr) /* 25 */
#define inflateReset \
	(zlibtclStubsPtr->inflateResetPtr) /* 26 */
#define uncompress \
	(zlibtclStubsPtr->uncompressPtr) /* 27 */
#define inflateReset2 \
	(zlibtclStubsPtr->inflateReset2Ptr) /* 28 */
#define inflateValidate \
	(zlibtclStubsPtr->inflateValidatePtr) /* 29 */
#define gzopen \
	(zlibtclStubsPtr->gzopenPtr) /* 30 */
#define gzdopen \
	(zlibtclStubsPtr->gzdopenPtr) /* 31 */
#define gzsetparams \
	(zlibtclStubsPtr->gzsetparamsPtr) /* 32 */
#define gzread \
	(zlibtclStubsPtr->gzreadPtr) /* 33 */
#define gzwrite \
	(zlibtclStubsPtr->gzwritePtr) /* 34 */
#define gzprintf \
	(zlibtclStubsPtr->gzprintfPtr) /* 35 */
#define gzputs \
	(zlibtclStubsPtr->gzputsPtr) /* 36 */
#define gzgets \
	(zlibtclStubsPtr->gzgetsPtr) /* 37 */
#define gzputc \
	(zlibtclStubsPtr->gzputcPtr) /* 38 */
#define gzgetc \
	(zlibtclStubsPtr->gzgetcPtr) /* 39 */
#define gzflush \
	(zlibtclStubsPtr->gzflushPtr) /* 40 */
#define gzseek \
	(zlibtclStubsPtr->gzseekPtr) /* 41 */
#define gzrewind \
	(zlibtclStubsPtr->gzrewindPtr) /* 42 */
#define gztell \
	(zlibtclStubsPtr->gztellPtr) /* 43 */
#define gzeof \
	(zlibtclStubsPtr->gzeofPtr) /* 44 */
#define gzclose \
	(zlibtclStubsPtr->gzclosePtr) /* 45 */
#define gzerror \
	(zlibtclStubsPtr->gzerrorPtr) /* 46 */

#endif /* defined(USE_ZLIBTCL_STUBS) */

/* !END!: Do not edit above this line. */

#undef TCL_STORAGE_CLASS
#define TCL_STORAGE_CLASS DLLIMPORT

#endif /* _ZLIBTCLDECLS */

