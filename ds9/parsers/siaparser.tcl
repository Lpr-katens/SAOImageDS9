package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval sia {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc sia::YYABORT {} {
    return -code return 1
}

proc sia::YYACCEPT {} {
    return -code return 0
}

proc sia::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc sia::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc sia::yyerror {s} {
    puts stderr $s
}

proc sia::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc sia::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set sia::table {
  34:336,target 89
  12:298 shift
  16:283,target 85
  4:336 goto
  51:298 reduce
  27:0 reduce
  21:298,target 70
  66:298,target 8
  4:340 goto
  90:298 reduce
  89:298 reduce
  48:0 reduce
  0:306,target 8
  1:298 reduce
  16:262,target 64
  21:298 reduce
  70:0 reduce
  69:0 reduce
  55:298,target 59
  60:298 reduce
  59:298 reduce
  32:296,target 41
  91:0 reduce
  2:0 reduce
  80:0,target 22
  79:0,target 21
  98:298 reduce
  72:0,target 14
  31:292,target 40
  9:298 reduce
  64:0,target 6
  16:281,target 83
  0:325,target 27
  56:0,target 35
  44:298,target 53
  30:298 reduce
  29:298 reduce
  24:0 reduce
  90:298,target 52
  89:298,target 63
  48:0,target 28
  1:298,target 46
  68:298 reduce
  25:0,target 74
  0:304,target 6
  16:259,target 61
  16:260,target 62
  17:0,target 62
  66:0 reduce
  78:298,target 20
  10:296,target 32
  38:298 reduce
  77:298 reduce
  7:331,target 42
  89:333 goto
  31:290,target 40
  31:289,target 40
  22:298,target 71
  67:298,target 9
  47:295 shift
  21:0 reduce
  16:278,target 80
  0:323,target 25
  47:296 shift
  0:302,target 4
  11:298,target 55
  16:257,target 59
  86:298 reduce
  63:0 reduce
  56:298,target 35
  95:291 shift
  95:292 shift
  17:298 reduce
  13:336,target 47
  95:293 shift
  84:0 reduce
  32:292,target 41
  56:298 reduce
  7:328,target 39
  91:298,target 37
  31:287,target 40
  17:0 reduce
  2:298,target 47
  29:338 goto
  16:276,target 78
  0:321,target 23
  47:336,target 95
  6:324,target 26
  14:288,target 52
  26:298 reduce
  4:336,target 34
  99:0,target 58
  92:0,target 38
  88:290,target 54
  88:289,target 53
  80:298,target 22
  79:298,target 21
  65:298 reduce
  60:0 reduce
  59:0 reduce
  0:300,target 2
  3:0,target 48
  95:293,target 93
  84:0,target 26
  76:0,target 18
  6:316 shift
  81:0 reduce
  68:0,target 10
  6:317 shift
  61:0,target 3
  0:339,target 29
  6:318 shift
  53:0,target 33
  35:298 reduce
  32:290,target 41
  32:289,target 41
  23:298,target 72
  6:319 shift
  6:320 shift
  14:284 shift
  68:298,target 10
  6:321 shift
  14:285 shift
  6:322 shift
  7:326,target 37
  14:286 shift
  15:291,target 56
  74:298 reduce
  31:285,target 40
  30:0,target 45
  29:0,target 42
  6:323 shift
  14:287 shift
  47:336 goto
  22:0,target 71
  16:274,target 76
  0:318,target 20
  6:324 shift
  14:288 shift
  35:0 reduce
  6:322,target 24
  6:325 shift
  14:286,target 50
  14:289 shift
  14:290 shift
  12:298,target 46
  57:298,target 36
  56:0 reduce
  44:298 reduce
  34:296,target 32
  88:287,target 51
  95:291,target 91
  83:298 reduce
  77:0 reduce
  46:298,target 57
  0:337,target 28
  98:0 reduce
  95:335 goto
  92:298,target 38
  32:287,target 41
  3:298,target 48
  6:341,target 36
  9:0 reduce
  11:0 reduce
  53:298 reduce
  32:284 reduce
  32:285 reduce
  32:286 reduce
  32:0 reduce
  16:272,target 74
  0:316,target 18
  92:298 reduce
  35:298,target 49
  32:287 reduce
  3:298 reduce
  6:341 goto
  6:319,target 21
  6:320,target 22
  14:284,target 48
  89:290,target 54
  89:289,target 53
  81:298,target 23
  32:288 reduce
  53:0 reduce
  32:290 reduce
  32:289 reduce
  23:298 reduce
  32:291 reduce
  88:285,target 49
  32:292 reduce
  74:0 reduce
  62:298 reduce
  32:293 reduce
  24:298,target 73
  70:298,target 12
  69:298,target 11
  32:295 reduce
  32:296 reduce
  32:285,target 41
  32:298 reduce
  45:292,target 92
  96:0,target 44
  28:0 accept
  88:0,target 65
  71:298 reduce
  58:298,target 60
  16:270,target 72
  16:269,target 71
  0:314,target 16
  81:0,target 23
  6:317,target 19
  89:287,target 51
  73:0,target 15
  50:0 reduce
  49:0 reduce
  88:284 shift
  65:0,target 7
  14:333 goto
  88:285 shift
  57:0,target 36
  88:286 shift
  71:0 reduce
  50:0,target 30
  49:0,target 29
  41:298 reduce
  88:287 shift
  93:298,target 39
  88:288 shift
  92:0 reduce
  88:290 shift
  88:289 shift
  80:298 reduce
  79:298 reduce
  26:0,target 75
  0:300 shift
  3:0 reduce
  88:333,target 97
  18:0,target 67
  0:301 shift
  0:302 shift
  11:0,target 55
  11:298 reduce
  16:257 shift
  0:303 shift
  16:258 shift
  36:298,target 51
  25:0 reduce
  0:304 shift
  16:259 shift
  16:260 shift
  82:298,target 24
  50:298 reduce
  49:298 reduce
  0:305 shift
  13:296,target 32
  16:261 shift
  16:267,target 69
  0:312,target 14
  0:306 shift
  16:262 shift
  46:0 reduce
  0:307 shift
  16:263 shift
  89:285,target 49
  88:298 reduce
  0:308 shift
  15:334,target 58
  16:264 shift
  0:310 shift
  0:309 shift
  0:299 shift
  16:265 shift
  67:0 reduce
  25:298,target 74
  20:298 reduce
  19:298 reduce
  0:311 shift
  16:266 shift
  71:298,target 13
  0:312 shift
  16:267 shift
  47:296,target 32
  16:268 shift
  0:313 shift
  88:0 reduce
  58:298 reduce
  16:270 shift
  16:269 shift
  0:314 shift
  4:296,target 32
  16:271 shift
  0:315 shift
  16:272 shift
  0:316 shift
  97:298 reduce
  16:273 shift
  0:317 shift
  8:298 shift
  60:298,target 2
  59:298,target 1
  22:0 reduce
  16:274 shift
  0:318 shift
  16:275 shift
  0:319 shift
  0:320 shift
  16:276 shift
  0:321 shift
  16:277 shift
  0:310,target 12
  0:309,target 11
  0:299,target 1
  0:322 shift
  16:265,target 67
  67:298 reduce
  16:278 shift
  0:323 shift
  16:280 shift
  16:279 shift
  0:324 shift
  64:0 reduce
  48:298,target 28
  16:281 shift
  0:325 shift
  94:298,target 56
  16:282 shift
  5:298,target 50
  16:283 shift
  89:333,target 98
  85:0 reduce
  37:298 reduce
  93:0,target 39
  31:295,target 40
  85:0,target 27
  76:298 reduce
  37:298,target 77
  88:333 goto
  83:298,target 25
  77:0,target 19
  18:0 reduce
  70:0,target 12
  69:0,target 11
  62:0,target 4
  54:0,target 34
  46:298 reduce
  46:0,target 57
  0:307,target 9
  0:337 goto
  16:263,target 65
  26:298,target 75
  72:298,target 14
  61:0 reduce
  45:335,target 94
  31:0,target 40
  0:339 goto
  85:298 reduce
  23:0,target 72
  0:341 goto
  82:0 reduce
  61:298,target 3
  55:298 reduce
  31:293,target 40
  16:282,target 84
  94:298 reduce
  5:298 reduce
  36:0 reduce
  25:298 reduce
  16:332,target 86
  50:298,target 30
  49:298,target 29
  0:305,target 7
  16:261,target 63
  57:0 reduce
  29:338,target 87
  64:298 reduce
  78:0 reduce
  34:295 shift
  34:296 shift
  32:295,target 41
  38:298,target 78
  99:0 reduce
  84:298,target 26
  31:291,target 40
  16:280,target 82
  16:279,target 81
  0:324,target 26
  73:298 reduce
  4:340,target 35
  27:298,target 76
  16:332 goto
  73:298,target 15
  54:0 reduce
  0:303,target 5
  16:258,target 60
  43:298 shift
  97:0,target 66
  33:297,target 88
  90:0,target 52
  89:0,target 63
  75:0 reduce
  1:0,target 46
  10:295,target 31
  13:295 shift
  82:298 reduce
  82:0,target 24
  13:296 shift
  74:0,target 16
  62:298,target 4
  32:293,target 41
  96:0 reduce
  66:0,target 8
  58:0,target 60
  7:329,target 40
  7:330,target 41
  15:294,target 57
  51:0,target 31
  31:288,target 40
  52:298 reduce
  31:284 reduce
  16:277,target 79
  0:322,target 24
  35:0,target 49
  31:285 reduce
  30:0 reduce
  29:0 reduce
  6:325,target 27
  14:289,target 53
  14:290,target 54
  51:298,target 31
  31:286 reduce
  27:0,target 76
  91:298 reduce
  31:287 reduce
  20:0,target 69
  19:0,target 68
  2:298 reduce
  51:0 reduce
  31:288 reduce
  31:290 reduce
  31:289 reduce
  22:298 reduce
  0:301,target 3
  31:291 reduce
  72:0 reduce
  31:292 reduce
  61:298 reduce
  40:298,target 80
  39:298,target 79
  31:293 reduce
  85:298,target 27
  34:336 goto
  0:341,target 30
  93:0 reduce
  32:291,target 41
  31:295 reduce
  99:298 reduce
  31:296 reduce
  7:327,target 38
  31:298 reduce
  31:286,target 40
  26:0 reduce
  16:275,target 77
  0:319,target 21
  0:320,target 22
  74:298,target 16
  6:323,target 25
  14:287,target 51
  70:298 reduce
  69:298 reduce
  88:288,target 52
  95:292,target 92
  68:0 reduce
  17:298,target 62
  63:298,target 5
  40:298 reduce
  39:298 reduce
  13:336 goto
  90:0 reduce
  89:0 reduce
  1:0 reduce
  10:295 shift
  78:298 reduce
  32:288,target 41
  10:296 shift
  52:298,target 32
  31:284,target 40
  23:0 reduce
  97:298,target 66
  16:273,target 75
  0:317,target 19
  8:298,target 44
  48:298 reduce
  6:321,target 23
  14:285,target 49
  94:0,target 56
  44:0 reduce
  5:0,target 50
  86:0,target 61
  87:298 shift
  78:0,target 20
  34:295,target 31
  88:286,target 50
  71:0,target 13
  65:0 reduce
  41:298,target 81
  86:298,target 61
  63:0,target 5
  18:298 reduce
  55:0,target 59
  86:0 reduce
  57:298 reduce
  32:286,target 41
  32:0,target 41
  30:298,target 45
  29:298,target 43
  24:0,target 73
  75:298,target 17
  45:293,target 93
  20:0 reduce
  19:0 reduce
  27:298 reduce
  16:271,target 73
  0:315,target 17
  6:318,target 20
  89:288,target 52
  66:298 reduce
  18:298,target 67
  64:298,target 6
  62:0 reduce
  88:284,target 48
  14:333,target 55
  83:0 reduce
  7:342,target 43
  36:298 reduce
  45:291 shift
  10:336 goto
  53:298,target 33
  45:292 shift
  32:284,target 41
  98:298,target 64
  75:298 reduce
  45:293 shift
  9:298,target 54
  45:291,target 91
  10:336,target 45
  16:268,target 70
  0:313,target 15
  7:326 shift
  15:291 shift
  6:316,target 18
  7:327 shift
  89:286,target 50
  42:298,target 82
  7:328 shift
  87:298,target 96
  58:0 reduce
  7:329 shift
  7:330 shift
  15:294 shift
  7:331 shift
  84:298 reduce
  80:0 reduce
  79:0 reduce
  4:297,target 33
  31:298,target 40
  76:298,target 18
  98:0,target 64
  95:335,target 99
  54:298 reduce
  4:295 shift
  9:0,target 54
  91:0,target 37
  2:0,target 47
  4:296 shift
  83:0,target 25
  4:297 shift
  93:298 reduce
  75:0,target 17
  13:295,target 31
  67:0,target 9
  20:298,target 69
  19:298,target 68
  0:311,target 13
  7:342 goto
  16:266,target 68
  65:298,target 7
  60:0,target 2
  59:0,target 1
  24:298 reduce
  89:284,target 48
  55:0 reduce
  52:0,target 32
  44:0,target 53
  63:298 reduce
  36:0,target 51
  76:0 reduce
  28:0,target 0
  47:295,target 31
  21:0,target 70
  54:298,target 34
  4:295,target 31
  99:298,target 58
  97:0 reduce
  33:297 shift
  31:296,target 40
  72:298 reduce
  45:335 goto
  31:0 reduce
  43:298,target 90
  88:298,target 65
  0:308,target 10
  16:264,target 66
  89:284 shift
  52:0 reduce
  89:285 shift
  15:334 goto
  89:286 shift
  42:298 reduce
  89:287 shift
  73:0 reduce
  89:288 shift
  32:298,target 41
  89:290 shift
  89:289 shift
  81:298 reduce
  77:298,target 19
  94:0 reduce
  5:0 reduce
}

array set sia::rules {
  9,l 332
  11,l 332
  32,l 333
  53,l 339
  74,l 341
  6,l 332
  28,l 333
  50,l 339
  49,l 339
  71,l 341
  3,l 332
  25,l 332
  46,l 339
  67,l 341
  0,l 343
  22,l 332
  43,l 338
  64,l 340
  18,l 332
  40,l 336
  39,l 335
  61,l 339
  82,l 342
  15,l 332
  36,l 334
  57,l 339
  78,l 342
  12,l 332
  33,l 333
  54,l 339
  75,l 341
  7,l 332
  29,l 333
  30,l 333
  51,l 339
  72,l 341
  4,l 332
  26,l 332
  47,l 339
  68,l 341
  1,l 332
  23,l 332
  44,l 337
  65,l 340
  19,l 332
  20,l 332
  41,l 336
  62,l 339
  16,l 332
  37,l 335
  58,l 339
  80,l 342
  79,l 342
  13,l 332
  34,l 333
  55,l 339
  76,l 341
  8,l 332
  10,l 332
  31,l 333
  52,l 339
  73,l 341
  5,l 332
  27,l 332
  48,l 339
  70,l 341
  69,l 341
  2,l 332
  24,l 332
  45,l 339
  66,l 340
  21,l 332
  42,l 337
  63,l 340
  17,l 332
  38,l 335
  60,l 339
  59,l 339
  81,l 342
  14,l 332
  35,l 334
  56,l 339
  77,l 342
}

array set sia::rules {
  63,dc 2
  12,dc 1
  77,dc 1
  26,dc 1
  3,dc 1
  41,dc 1
  55,dc 1
  70,dc 1
  69,dc 1
  18,dc 1
  33,dc 1
  9,dc 1
  47,dc 1
  62,dc 1
  11,dc 1
  76,dc 1
  25,dc 1
  2,dc 1
  40,dc 1
  39,dc 1
  54,dc 1
  68,dc 1
  17,dc 1
  32,dc 1
  8,dc 1
  46,dc 1
  61,dc 2
  10,dc 1
  75,dc 1
  24,dc 1
  1,dc 1
  38,dc 1
  53,dc 2
  67,dc 1
  16,dc 1
  82,dc 1
  31,dc 1
  7,dc 1
  45,dc 1
  60,dc 2
  59,dc 2
  74,dc 1
  23,dc 1
  0,dc 1
  37,dc 1
  52,dc 3
  66,dc 3
  15,dc 1
  81,dc 1
  29,dc 1
  30,dc 1
  6,dc 1
  44,dc 3
  58,dc 4
  73,dc 1
  22,dc 1
  36,dc 1
  51,dc 2
  65,dc 2
  14,dc 1
  80,dc 1
  79,dc 1
  28,dc 1
  5,dc 1
  43,dc 0
  57,dc 2
  72,dc 1
  21,dc 1
  35,dc 1
  50,dc 1
  49,dc 2
  64,dc 3
  13,dc 1
  78,dc 1
  27,dc 1
  4,dc 1
  42,dc 1
  56,dc 3
  71,dc 1
  19,dc 1
  20,dc 1
  34,dc 1
  48,dc 1
}

array set sia::rules {
  41,line 189
  7,line 150
  37,line 184
  4,line 147
  34,line 178
  1,line 144
  31,line 175
  27,line 170
  24,line 167
  80,line 238
  79,line 237
  21,line 164
  76,line 232
  17,line 160
  73,line 229
  43,e 1
  14,line 157
  70,line 226
  69,line 225
  11,line 154
  66,line 220
  63,line 217
  60,line 212
  59,line 211
  56,line 207
  53,line 204
  50,line 201
  49,line 200
  46,line 197
  43,line 192
  9,line 152
  40,line 188
  39,line 186
  6,line 149
  36,line 181
  3,line 146
  33,line 177
  29,line 173
  30,line 174
  26,line 169
  82,line 240
  23,line 166
  78,line 236
  19,line 162
  20,line 163
  75,line 231
  16,line 159
  72,line 228
  13,line 156
  68,line 224
  10,line 153
  65,line 219
  62,line 214
  58,line 210
  55,line 206
  52,line 203
  48,line 199
  45,line 196
  42,line 192
  8,line 151
  38,line 185
  5,line 148
  35,line 180
  2,line 145
  32,line 176
  28,line 172
  25,line 168
  81,line 239
  22,line 165
  77,line 235
  18,line 161
  74,line 230
  15,line 158
  71,line 227
  12,line 155
  67,line 223
  64,line 218
  61,line 213
  57,line 209
  54,line 205
  51,line 202
  47,line 198
  44,line 193
}

array set sia::lr1_table {
  35 {{49 {0 298} 2}}
  66,trans {}
  36 {{51 {0 298} 2}}
  85,trans {}
  37 {{77 298 1}}
  38 {{78 298 1}}
  40 {{80 298 1}}
  39 {{79 298 1}}
  41 {{81 298 1}}
  42 {{82 298 1}}
  43 {{52 {0 298} 2}}
  44 {{53 {0 298} 2}}
  45 {{40 {291 292 293} 1}}
  46 {{41 {291 292 293} 1}}
  47 {{56 {0 298} 2} {37 {0 298} 0} {38 {0 298} 0} {39 {0 298} 0}}
  48 {{57 {0 298} 2}}
  49 {{58 {0 298} 2} {40 {291 292 293} 0} {41 {291 292 293} 0}}
  50 {{28 {0 298} 1}}
  27,trans {}
  51 {{29 {0 298} 1}}
  46,trans {}
  52 {{30 {0 298} 1}}
  65,trans {}
  53 {{31 {0 298} 1}}
  84,trans {}
  54 {{32 {0 298} 1}}
  55 {{33 {0 298} 1}}
  56 {{34 {0 298} 1}}
  57 {{59 {0 298} 2}}
  58 {{35 {0 298} 1}}
  59 {{36 {0 298} 1}}
  60 {{60 {0 298} 2}}
  61 {{1 {0 298} 1}}
  62 {{2 {0 298} 1}}
  63 {{3 {0 298} 1}}
  64 {{4 {0 298} 1}}
  65 {{5 {0 298} 1}}
  66 {{6 {0 298} 1}}
  26,trans {}
  67 {{7 {0 298} 1}}
  45,trans {}
  68 {{8 {0 298} 1}}
  64,trans {}
  69 {{9 {0 298} 1}}
  70 {{10 {0 298} 1}}
  83,trans {}
  71 {{11 {0 298} 1}}
  72 {{12 {0 298} 1}}
  73 {{13 {0 298} 1}}
  74 {{14 {0 298} 1}}
  75 {{15 {0 298} 1}}
  76 {{16 {0 298} 1}}
  77 {{17 {0 298} 1}}
  78 {{18 {0 298} 1}}
  79 {{19 {0 298} 1}}
  80 {{20 {0 298} 1}}
  81 {{21 {0 298} 1}}
  82 {{22 {0 298} 1}}
  83 {{23 {0 298} 1}}
  25,trans {}
  84 {{24 {0 298} 1}}
  44,trans {}
  85 {{25 {0 298} 1}}
  63,trans {}
  86 {{26 {0 298} 1}}
  82,trans {}
  87 {{27 {0 298} 1}}
  0 {{0 0 0} {42 0 0} {44 0 0} {45 {0 298} 0} {46 {0 298} 0} {47 {0 298} 0} {48 {0 298} 0} {49 {0 298} 0} {50 {0 298} 0} {51 {0 298} 0} {52 {0 298} 0} {53 {0 298} 0} {54 {0 298} 0} {55 {0 298} 0} {56 {0 298} 0} {57 {0 298} 0} {58 {0 298} 0} {59 {0 298} 0} {60 {0 298} 0} {61 {0 298} 0} {62 {0 298} 0} {67 {0 298} 0} {68 {0 298} 0} {69 {0 298} 0} {70 {0 298} 0} {71 {0 298} 0} {72 {0 298} 0} {73 {0 298} 0} {74 {0 298} 0} {75 {0 298} 0} {76 {0 298} 0}}
  88 {{61 {0 298} 2}}
  1 {{46 {0 298} 1}}
  89 {{44 0 2}}
  90 {{65 {0 298} 2} {66 {0 298} 2} {28 {0 298} 0} {29 {0 298} 0} {30 {0 298} 0} {31 {0 298} 0} {32 {0 298} 0} {33 {0 298} 0} {34 {0 298} 0}}
  2 {{47 {0 298} 1}}
  91 {{40 {0 284 285 286 287 288 289 290 298} 1}}
  3 {{48 {0 298} 1}}
  92 {{41 {0 284 285 286 287 288 289 290 298} 1}}
  4 {{49 {0 298} 1} {63 {0 298} 0} {64 {0 298} 0} {65 {0 298} 0} {66 {0 298} 0} {40 {295 296} 0} {41 {295 296} 0}}
  93 {{63 {0 298} 2} {64 {0 298} 2} {28 {0 298} 0} {29 {0 298} 0} {30 {0 298} 0} {31 {0 298} 0} {32 {0 298} 0} {33 {0 298} 0} {34 {0 298} 0}}
  5 {{50 {0 298} 1}}
  94 {{52 {0 298} 3}}
  6 {{51 {0 298} 1} {67 {0 298} 0} {68 {0 298} 0} {69 {0 298} 0} {70 {0 298} 0} {71 {0 298} 0} {72 {0 298} 0} {73 {0 298} 0} {74 {0 298} 0} {75 {0 298} 0} {76 {0 298} 0}}
  95 {{37 {0 298} 1}}
  7 {{52 {0 298} 1} {77 298 0} {78 298 0} {79 298 0} {80 298 0} {81 298 0} {82 298 0}}
  96 {{38 {0 298} 1}}
  8 {{53 {0 298} 1}}
  97 {{39 {0 298} 1}}
  9 {{54 {0 298} 1}}
  98 {{56 {0 298} 3}}
  24,trans {}
  99 {{58 {0 298} 3} {37 {0 298} 0} {38 {0 298} 0} {39 {0 298} 0}}
  43,trans {{298 94}}
  62,trans {}
  81,trans {}
  99,trans {{291 95} {292 96} {293 97} {335 103}}
  23,trans {}
  42,trans {}
  61,trans {}
  79,trans {}
  80,trans {}
  98,trans {}
  9,trans {}
  22,trans {}
  41,trans {}
  59,trans {}
  60,trans {}
  78,trans {}
  97,trans {}
  8,trans {{298 44}}
  100 {{44 0 3}}
  101 {{66 {0 298} 3}}
  102 {{64 {0 298} 3}}
  103 {{58 {0 298} 4}}
  21,trans {}
  39,trans {}
  40,trans {}
  58,trans {}
  77,trans {}
  96,trans {}
  7,trans {{326 37} {327 38} {328 39} {329 40} {330 41} {331 42} {342 43}}
  19,trans {}
  20,trans {}
  38,trans {}
  57,trans {}
  76,trans {}
  95,trans {}
  6,trans {{316 18} {317 19} {318 20} {319 21} {320 22} {321 23} {322 24} {323 25} {324 26} {325 27} {341 36}}
  18,trans {}
  37,trans {}
  56,trans {}
  75,trans {}
  94,trans {}
  5,trans {}
  17,trans {}
  36,trans {}
  55,trans {}
  74,trans {}
  93,trans {{284 50} {285 51} {286 52} {287 53} {288 54} {289 55} {290 56} {333 102}}
  4,trans {{295 31} {296 32} {297 33} {336 34} {340 35}}
  16,trans {{257 61} {258 62} {259 63} {260 64} {261 65} {262 66} {263 67} {264 68} {265 69} {266 70} {267 71} {268 72} {269 73} {270 74} {271 75} {272 76} {273 77} {274 78} {275 79} {276 80} {277 81} {278 82} {279 83} {280 84} {281 85} {282 86} {283 87} {332 88}}
  35,trans {}
  54,trans {}
  73,trans {}
  92,trans {}
  3,trans {}
  15,trans {{291 58} {294 59} {334 60}}
  34,trans {{295 91} {296 92} {336 93}}
  53,trans {}
  72,trans {}
  91,trans {}
  2,trans {}
  14,trans {{284 50} {285 51} {286 52} {287 53} {288 54} {289 55} {290 56} {333 57}}
  33,trans {{297 90}}
  52,trans {}
  71,trans {}
  90,trans {{284 50} {285 51} {286 52} {287 53} {288 54} {289 55} {290 56} {333 101}}
  1,trans {}
  89,trans {{298 100}}
  103,trans {}
  13,trans {{295 31} {296 32} {336 49}}
  32,trans {}
  51,trans {}
  69,trans {}
  70,trans {}
  0,trans {{299 1} {300 2} {301 3} {302 4} {303 5} {304 6} {305 7} {306 8} {307 9} {308 10} {309 11} {310 12} {311 13} {312 14} {313 15} {314 16} {315 17} {316 18} {317 19} {318 20} {319 21} {320 22} {321 23} {322 24} {323 25} {324 26} {325 27} {337 28} {339 29} {341 30}}
  88,trans {}
  102,trans {}
  12,trans {{298 48}}
  31,trans {}
  49,trans {{295 45} {296 46} {336 99}}
  50,trans {}
  68,trans {}
  87,trans {}
  101,trans {}
  10 {{56 {0 298} 1} {40 {291 292 293} 0} {41 {291 292 293} 0}}
  11 {{55 {0 298} 1}}
  12 {{57 {0 298} 1}}
  13 {{58 {0 298} 1} {40 {295 296} 0} {41 {295 296} 0}}
  14 {{59 {0 298} 1} {28 {0 298} 0} {29 {0 298} 0} {30 {0 298} 0} {31 {0 298} 0} {32 {0 298} 0} {33 {0 298} 0} {34 {0 298} 0}}
  15 {{60 {0 298} 1} {35 {0 298} 0} {36 {0 298} 0}}
  11,trans {}
  16 {{61 {0 298} 1} {1 {0 298} 0} {2 {0 298} 0} {3 {0 298} 0} {4 {0 298} 0} {5 {0 298} 0} {6 {0 298} 0} {7 {0 298} 0} {8 {0 298} 0} {9 {0 298} 0} {10 {0 298} 0} {11 {0 298} 0} {12 {0 298} 0} {13 {0 298} 0} {14 {0 298} 0} {15 {0 298} 0} {16 {0 298} 0} {17 {0 298} 0} {18 {0 298} 0} {19 {0 298} 0} {20 {0 298} 0} {21 {0 298} 0} {22 {0 298} 0} {23 {0 298} 0} {24 {0 298} 0} {25 {0 298} 0} {26 {0 298} 0} {27 {0 298} 0}}
  29,trans {{338 89}}
  30,trans {}
  17 {{62 {0 298} 1}}
  48,trans {}
  18 {{67 {0 298} 1}}
  67,trans {}
  20 {{69 {0 298} 1}}
  19 {{68 {0 298} 1}}
  86,trans {}
  21 {{70 {0 298} 1}}
  22 {{71 {0 298} 1}}
  100,trans {}
  23 {{72 {0 298} 1}}
  24 {{73 {0 298} 1}}
  25 {{74 {0 298} 1}}
  26 {{75 {0 298} 1}}
  27 {{76 {0 298} 1}}
  28 {{0 0 1}}
  30 {{45 {0 298} 1}}
  29 {{42 0 1} {44 0 1} {43 298 0}}
  31 {{40 {295 296} 1}}
  32 {{41 {295 296} 1}}
  10,trans {{295 45} {296 46} {336 47}}
  33 {{65 {0 298} 1} {66 {0 298} 1}}
  28,trans {}
  34 {{63 {0 298} 1} {64 {0 298} 1} {40 {0 284 285 286 287 288 289 290 298} 0} {41 {0 284 285 286 287 288 289 290 298} 0}}
  47,trans {{291 95} {292 96} {293 97} {335 98}}
}

array set sia::token_id_table {
  286 FK5_
  286,t 0
  287 J2000_
  292,line 44
  302,line 61
  288 ICRS_
  317,t 0
  265,title WCSH
  289 GALACTIC_
  290 ECLIPTIC_
  300 CLEAR_
  284,title FK4
  291 DEGREES_
  301 CLOSE_
  313,title SKYFORMAT
  292 ARCMIN_
  302 COORDINATE_
  338,t 1
  332,title {}
  288,line 39
  293 ARCSEC_
  303 CROSSHAIR_
  294 SEXAGESIMAL_
  304 CURRENT_
  305 EXPORT_
  295 INT_
  306 NAME_
  296 REAL_
  307 PRINT_
  262,t 0
  297 SEXSTR_
  308 RADIUS_
  285,line 36
  298 STRING_
  310 SAVE_
  309 RETRIEVE_
  299 CANCEL_
  311 SIZE_
  283,t 0
  312 SKY_
  313 SKYFORMAT_
  314,t 0
  314 SYSTEM_
  282,line 32
  315 UPDATE_
  316 2MASS_
  264,title WCSG
  335,t 1
  317 AKARI_
  283,title WCSZ
  318 ASTROWISE_
  312,title SKY
  331,title TSV
  320 CXC_
  319 CADC_
  278,line 28
  error,line 142
  321 HLA_
  322 MAST_
  258,t 0
  323 SDSS_
  324 SKYVIEW_
  325 TGSSADR_
  275,line 25
  279,t 0
  280,t 0
  326 XML_
  341,line 222
  327 VOT_
  328 SB_
  311,t 0
  330 CSV_
  329 STARBASE_
  331 TSV_
  272,line 22
  332,t 1
  332 wcssys
  337,line 191
  333 skyframe
  263,title WCSF
  334 skyformat
  282,title WCSY
  335 rformat
  311,title SIZE
  336 numeric
  330,title CSV
  329,title STARBASE
  268,line 18
  337 command
  338 @PSEUDO1
  334,line 179
  340 coordinate
  339 sia
  276,t 0
  341 site
  342 writer
  265,line 15
  343 start'
  307,t 0
  297,t 0
  331,line 92
  328,t 0
  262,line 12
  0,t 0
  0 {$}
  327,line 88
  262,title WCSE
  281,title WCSX
  error,t 0
  310,title SAVE
  309,title RETRIEVE
  299,title CANCEL
  328,title SB
  258,line 8
  273,t 0
  324,line 84
  294,t 0
  304,t 0
  325,t 0
  321,line 81
  317,line 77
  261,title WCSD
  279,title WCSV
  280,title WCSW
  308,title RADIUS
  269,t 0
  270,t 0
  298,title string
  327,title VOT
  314,line 73
  291,t 0
  301,t 0
  322,t 0
  311,line 70
  343,t 1
  307,line 66
  266,t 0
  260,title WCSC
  259,title WCSB
  297,line 52
  278,title WCSU
  307,title PRINT
  297,title sexagesimal
  326,title XML
  287,t 0
  294,line 47
  304,line 63
  318,t 0
  340,t 1
  339,t 1
  error,title {}
  291,line 43
  301,line 60
  263,t 0
  258,title WCSA
  287,line 38
  277,title WCST
  284,t 0
  306,title NAME
  296,title float
  325,title TGSSADR
  315,t 0
  284,line 35
  336,t 1
  281,line 31
  260,t 0
  259,t 0
  281,t 0
  257,title WCS
  277,line 27
  276,title WCSS
  343,line 241
  312,t 0
  305,title EXPORT
  295,title integer
  324,title SKYVIEW
  343,title {}
  333,t 1
  274,line 24
  340,line 216
  339,line 195
  271,line 21
  336,line 187
  277,t 0
  308,t 0
  267,line 17
  298,t 0
  275,title WCSR
  333,line 171
  294,title SEXAGESIMAL
  304,title CURRENT
  330,t 0
  329,t 0
  323,title SDSS
  342,title {}
  264,line 14
  330,line 91
  329,line 90
  261,line 11
  274,t 0
  326,line 87
  305,t 0
  295,t 0
  257,line 7
  326,t 0
  274,title WCSQ
  323,line 83
  293,title ARCSEC
  303,title CROSSHAIR
  322,title MAST
  341,title {}
  320,line 80
  319,line 79
  error error
  271,t 0
  292,t 0
  302,t 0
  316,line 76
  323,t 0
  273,title WCSP
  313,line 72
  292,title ARCMIN
  302,title COORDINATE
  321,title HLA
  340,title {}
  339,title {}
  267,t 0
  310,line 69
  309,line 68
  299,line 58
  288,t 0
  320,t 0
  319,t 0
  306,line 65
  296,line 50
  341,t 1
  272,title WCSO
  291,title DEGREES
  293,line 45
  301,title CLOSE
  303,line 62
  320,title CXC
  319,title CADC
  338,title {}
  264,t 0
  285,t 0
  289,line 40
  290,line 41
  300,line 59
  316,t 0
  286,line 37
  337,t 1
  271,title WCSN
  261,t 0
  283,line 33
  289,title GALACTIC
  290,title ECLIPTIC
  300,title CLEAR
  318,title ASTROWISE
  337,title {}
  282,t 0
  279,line 29
  280,line 30
  313,t 0
  334,t 1
  276,line 26
  342,line 234
  257,t 0
  269,title WCSL
  270,title WCSM
  273,line 23
  288,title ICRS
  317,title AKARI
  278,t 0
  338,line 192
  336,title {}
  310,t 0
  309,t 0
  299,t 0
  269,line 19
  270,line 20
  335,line 183
  331,t 0
  266,line 16
  332,line 143
  268,title WCSK
  275,t 0
  263,line 13
  287,title J2000
  316,title 2MASS
  335,title {}
  328,line 89
  306,t 0
  296,t 0
  327,t 0
  260,line 10
  259,line 9
  325,line 85
  322,line 82
  272,t 0
  267,title WCSJ
  257 WCS_
  286,title FK5
  293,t 0
  303,t 0
  315,title UPDATE
  258 WCSA_
  334,title {}
  318,line 78
  260 WCSC_
  259 WCSB_
  324,t 0
  261 WCSD_
  262 WCSE_
  263 WCSF_
  264 WCSG_
  315,line 74
  265 WCSH_
  266 WCSI_
  267 WCSJ_
  268,t 0
  268 WCSK_
  269 WCSL_
  270 WCSM_
  312,line 71
  271 WCSN_
  272 WCSO_
  289,t 0
  290,t 0
  300,t 0
  266,title WCSI
  273 WCSP_
  274 WCSQ_
  285,title B1950
  321,t 0
  314,title SYSTEM
  275 WCSR_
  333,title {}
  308,line 67
  276 WCSS_
  298,line 54
  277 WCST_
  342,t 1
  278 WCSU_
  279 WCSV_
  280 WCSW_
  281 WCSX_
  305,line 64
  282 WCSY_
  295,line 49
  265,t 0
  283 WCSZ_
  284 FK4_
  285 B1950_
}

proc sia::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt
    variable lr1_table
    variable token_id_table
    variable yyerr
    variable save_state

    set yycnt 0
    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0
    set yyerr 0
    set save_state 0

    while {$accepted == 0} {
        set state [lindex $state_stack end]
        if {$token == ""} {
            set yylval ""
            set token [yylex]
            set buflval $yylval
	    if {$token>0} {
	        incr yycnt
            }
        }
        if {![info exists table($state:$token)] || $yyerr} {
	    if {!$yyerr} {
	        set save_state $state
	    }
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
 
	        set rr { }
                if {[info exists lr1_table($save_state,trans)] && [llength $lr1_table($save_state,trans)] >= 1} {
                    foreach trans $lr1_table($save_state,trans) {
                        foreach {tok_id nextstate} $trans {
			    set ss $token_id_table($tok_id,title)
			    if {$ss != {}} {
			        append rr "$ss, "
                            }
                        }
                    }
                }
		set rr [string trimleft $rr { }]
		set rr [string trimright $rr {, }]
                yyerror "parse error, expecting: $rr"


                return 1
            }
            lappend state_stack [set state $table($state:error,target)]
            lappend value_stack {}
            # consume tokens until it finds an acceptable one
            while {![info exists table($state:$token)]} {
                if {$token == 0} {
                    yyerror "end of file while recovering from error"
                    return 1
                }
                set yylval {}
                set token [yylex]
                set buflval $yylval
            }
            continue
        }
        switch -- $table($state:$token) {
            shift {
                lappend state_stack $table($state:$token,target)
                lappend value_stack $buflval
                set token ""
            }
            reduce {
                set rule $table($state:$token,target)
                set ll $rules($rule,l)
                if {[info exists rules($rule,e)]} {
                    set dc $rules($rule,e)
                } else {
                    set dc $rules($rule,dc)
                }
                set stackpointer [expr {[llength $state_stack]-$dc}]
                setupvalues $value_stack $stackpointer $dc
                set _ $1
                set yylval [lindex $value_stack end]
                switch -- $rule {
                    1 { set _ wcs }
                    2 { set _ wcsa }
                    3 { set _ wcsb }
                    4 { set _ wcsc }
                    5 { set _ wcsd }
                    6 { set _ wcse }
                    7 { set _ wcsf }
                    8 { set _ wcsg }
                    9 { set _ wcsh }
                    10 { set _ wcsi }
                    11 { set _ wcsj }
                    12 { set _ wcsk }
                    13 { set _ wcsl }
                    14 { set _ wcsm }
                    15 { set _ wcsn }
                    16 { set _ wcso }
                    17 { set _ wcsp }
                    18 { set _ wcsq }
                    19 { set _ wcsr }
                    20 { set _ wcss }
                    21 { set _ wcst }
                    22 { set _ wcsu }
                    23 { set _ wcsv }
                    24 { set _ wcsw }
                    25 { set _ wcsx }
                    26 { set _ wcsy }
                    27 { set _ wcsz }
                    28 { set _ fk4 }
                    29 { set _ fk4 }
                    30 { set _ fk5 }
                    31 { set _ fk5 }
                    32 { set _ icrs }
                    33 { set _ galactic }
                    34 { set _ ecliptic }
                    35 { set _ degrees }
                    36 { set _ sexagesimal }
                    37 { set _ degrees }
                    38 { set _ arcmin }
                    39 { set _ arcsec }
                    40 { set _ $1 }
                    41 { set _ $1 }
                    43 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    45 { SIACmdRetrieve $1 }
                    46 { ProcessCmdCVAR0 ARCancel }
                    47 { ProcessCmdCVAR0 SIAOff }
                    48 { ProcessCmdCVAR0 SIADestroy }
                    50 { ProcessCmdCVAR0 SIACrosshair }
                    51 { SIACmdRef $2 }
                    52 { TBLCmdSave $3 $2 }
                    53 { ProcessCmdCVAR name $2 }
                    54 { ProcessCmdCVAR0 TBLCmdPrint }
                    55 { global cvarname; SIAApply $cvarname 1 }
                    56 { TBLCmdSize $2 $3 }
                    57 { TBLCmdSave $2 VOTWrite }
                    58 { TBLCmdSize [expr ($2+$3)/2.] $4 }
                    59 { TBLCmdSkyframe $2 }
                    60 { ProcessCmdCVAR skyformat $2 }
                    61 { TBLCmdSystem $2 }
                    62 { ProcessCVAR0 TBLUpdate }
                    63 { TBLCmdCoord $1 $2 fk5 }
                    64 { TBLCmdCoord $1 $2 $3 }
                    65 { TBLCmdCoord $1 $2 fk5 }
                    66 { TBLCmdCoord $1 $2 $3 }
                    67 { set _ 2mass }
                    68 { set _ akari }
                    69 { set _ astrowise }
                    70 { set _ cadc }
                    71 { set _ cxc }
                    72 { set _ hla }
                    73 { set _ mast }
                    74 { set _ sdss }
                    75 { set _ skyview }
                    76 { set _ tgssadr }
                    77 { set _ VOTWrite }
                    78 { set _ VOTWrite }
                    79 { set _ starbase_write }
                    80 { set _ starbase_write }
                    81 { set _ TSVWrite }
                    82 { set _ TSVWrite }
                }
                unsetupvalues $dc
                # pop off tokens from the stack if normal rule
                if {![info exists rules($rule,e)]} {
                    incr stackpointer -1
                    set state_stack [lrange $state_stack 0 $stackpointer]
                    set value_stack [lrange $value_stack 0 $stackpointer]
                }
                # now do the goto transition
                lappend state_stack $table([lindex $state_stack end]:$ll,target)
                lappend value_stack $_
            }
            accept {
                set accepted 1
            }
            goto -
            default {
                puts stderr "Internal parser error: illegal command $table($state:$token)"
                return 2
            }
        }
    }
    return 0
}

######
# end autogenerated taccle functions
######

proc sia::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
