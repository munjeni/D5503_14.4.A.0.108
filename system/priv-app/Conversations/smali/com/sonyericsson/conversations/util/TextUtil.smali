.class public Lcom/sonyericsson/conversations/util/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# static fields
.field private static final SKIPPED_CHAR:C

.field private static final sRedundantCharacterPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "[\\s\\.\\-/\\\\\\(\\)]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/util/TextUtil;->sRedundantCharacterPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertForCostSaving(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6
    .param p0, "sourceText"    # Ljava/lang/String;
    .param p1, "alwaysConvert"    # Z
    .param p2, "allowUcs2"    # Z

    .prologue
    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, "length":I
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/16 v5, 0x46

    if-gt v1, v5, :cond_1

    .line 175
    .end local p0    # "sourceText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 126
    .restart local p0    # "sourceText":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_1
    if-ge v2, v1, :cond_b

    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 130
    .local v4, "sourceChar":C
    const/16 v5, 0x60

    if-ne v4, v5, :cond_5

    .line 133
    const/16 v0, 0x27

    .line 156
    .local v0, "convertedChar":C
    :goto_2
    if-nez p2, :cond_2

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/TextUtil;->isInGsmAlphabet(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 158
    const/16 v0, 0x3f

    .line 161
    :cond_2
    if-eq v4, v0, :cond_3

    if-nez v3, :cond_3

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "convertedChar":C
    :cond_5
    const/16 v5, 0x7f

    if-gt v4, v5, :cond_6

    .line 138
    move v0, v4

    .restart local v0    # "convertedChar":C
    goto :goto_2

    .line 139
    .end local v0    # "convertedChar":C
    :cond_6
    const/16 v5, 0xff

    if-gt v4, v5, :cond_7

    .line 141
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertLatin1Supplement(C)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_2

    .line 142
    .end local v0    # "convertedChar":C
    :cond_7
    const/16 v5, 0x36f

    if-gt v4, v5, :cond_8

    .line 144
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertLatinExtendedEtc(C)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_2

    .line 145
    .end local v0    # "convertedChar":C
    :cond_8
    const/16 v5, 0x3ff

    if-gt v4, v5, :cond_9

    .line 147
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertGreek(C)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_2

    .line 148
    .end local v0    # "convertedChar":C
    :cond_9
    const/16 v5, 0x1e00

    if-lt v4, v5, :cond_a

    const/16 v5, 0x1eff

    if-gt v4, v5, :cond_a

    .line 150
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertLatinExtendedAdditional(C)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_2

    .line 153
    .end local v0    # "convertedChar":C
    :cond_a
    move v0, v4

    .restart local v0    # "convertedChar":C
    goto :goto_2

    .line 175
    .end local v0    # "convertedChar":C
    .end local v4    # "sourceChar":C
    :cond_b
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static convertGreek(C)C
    .locals 0
    .param p0, "ch"    # C

    .prologue
    .line 304
    packed-switch p0, :pswitch_data_0

    .line 496
    :goto_0
    :pswitch_0
    return p0

    .line 306
    :pswitch_1
    const/16 p0, 0x3b

    .line 307
    goto :goto_0

    .line 309
    :pswitch_2
    const/4 p0, 0x0

    .line 310
    goto :goto_0

    .line 312
    :pswitch_3
    const/4 p0, 0x0

    .line 313
    goto :goto_0

    .line 315
    :pswitch_4
    const/16 p0, 0x41

    .line 316
    goto :goto_0

    .line 318
    :pswitch_5
    const/16 p0, 0x2e

    .line 319
    goto :goto_0

    .line 321
    :pswitch_6
    const/16 p0, 0x45

    .line 322
    goto :goto_0

    .line 324
    :pswitch_7
    const/16 p0, 0x48

    .line 325
    goto :goto_0

    .line 327
    :pswitch_8
    const/16 p0, 0x49

    .line 328
    goto :goto_0

    .line 330
    :pswitch_9
    const/16 p0, 0x4f

    .line 331
    goto :goto_0

    .line 333
    :pswitch_a
    const/16 p0, 0x59

    .line 334
    goto :goto_0

    .line 336
    :pswitch_b
    const/16 p0, 0x3a9

    .line 337
    goto :goto_0

    .line 339
    :pswitch_c
    const/16 p0, 0x49

    .line 340
    goto :goto_0

    .line 342
    :pswitch_d
    const/16 p0, 0x41

    .line 343
    goto :goto_0

    .line 345
    :pswitch_e
    const/16 p0, 0x42

    .line 346
    goto :goto_0

    .line 348
    :pswitch_f
    const/16 p0, 0x45

    .line 349
    goto :goto_0

    .line 351
    :pswitch_10
    const/16 p0, 0x5a

    .line 352
    goto :goto_0

    .line 354
    :pswitch_11
    const/16 p0, 0x48

    .line 355
    goto :goto_0

    .line 357
    :pswitch_12
    const/16 p0, 0x49

    .line 358
    goto :goto_0

    .line 360
    :pswitch_13
    const/16 p0, 0x4b

    .line 361
    goto :goto_0

    .line 363
    :pswitch_14
    const/16 p0, 0x4d

    .line 364
    goto :goto_0

    .line 366
    :pswitch_15
    const/16 p0, 0x4e

    .line 367
    goto :goto_0

    .line 369
    :pswitch_16
    const/16 p0, 0x4f

    .line 370
    goto :goto_0

    .line 372
    :pswitch_17
    const/16 p0, 0x50

    .line 373
    goto :goto_0

    .line 375
    :pswitch_18
    const/16 p0, 0x54

    .line 376
    goto :goto_0

    .line 378
    :pswitch_19
    const/16 p0, 0x59

    .line 379
    goto :goto_0

    .line 381
    :pswitch_1a
    const/16 p0, 0x58

    .line 382
    goto :goto_0

    .line 384
    :pswitch_1b
    const/16 p0, 0x49

    .line 385
    goto :goto_0

    .line 387
    :pswitch_1c
    const/16 p0, 0x59

    .line 388
    goto :goto_0

    .line 390
    :pswitch_1d
    const/16 p0, 0x41

    .line 391
    goto :goto_0

    .line 393
    :pswitch_1e
    const/16 p0, 0x45

    .line 394
    goto :goto_0

    .line 396
    :pswitch_1f
    const/16 p0, 0x48

    .line 397
    goto :goto_0

    .line 399
    :pswitch_20
    const/16 p0, 0x49

    .line 400
    goto :goto_0

    .line 402
    :pswitch_21
    const/16 p0, 0x59

    .line 403
    goto :goto_0

    .line 405
    :pswitch_22
    const/16 p0, 0x41

    .line 406
    goto :goto_0

    .line 408
    :pswitch_23
    const/16 p0, 0x42

    .line 409
    goto :goto_0

    .line 411
    :pswitch_24
    const/16 p0, 0x393

    .line 412
    goto :goto_0

    .line 414
    :pswitch_25
    const/16 p0, 0x394

    .line 415
    goto :goto_0

    .line 417
    :pswitch_26
    const/16 p0, 0x45

    .line 418
    goto :goto_0

    .line 420
    :pswitch_27
    const/16 p0, 0x5a

    .line 421
    goto :goto_0

    .line 423
    :pswitch_28
    const/16 p0, 0x48

    .line 424
    goto :goto_0

    .line 426
    :pswitch_29
    const/16 p0, 0x398

    .line 427
    goto :goto_0

    .line 429
    :pswitch_2a
    const/16 p0, 0x49

    .line 430
    goto :goto_0

    .line 432
    :pswitch_2b
    const/16 p0, 0x4b

    .line 433
    goto :goto_0

    .line 435
    :pswitch_2c
    const/16 p0, 0x39b

    .line 436
    goto/16 :goto_0

    .line 438
    :pswitch_2d
    const/16 p0, 0x4d

    .line 439
    goto/16 :goto_0

    .line 441
    :pswitch_2e
    const/16 p0, 0x4e

    .line 442
    goto/16 :goto_0

    .line 444
    :pswitch_2f
    const/16 p0, 0x39e

    .line 445
    goto/16 :goto_0

    .line 447
    :pswitch_30
    const/16 p0, 0x4f

    .line 448
    goto/16 :goto_0

    .line 450
    :pswitch_31
    const/16 p0, 0x3a0

    .line 451
    goto/16 :goto_0

    .line 453
    :pswitch_32
    const/16 p0, 0x50

    .line 454
    goto/16 :goto_0

    .line 456
    :pswitch_33
    const/16 p0, 0x3a3

    .line 457
    goto/16 :goto_0

    .line 459
    :pswitch_34
    const/16 p0, 0x3a3

    .line 460
    goto/16 :goto_0

    .line 462
    :pswitch_35
    const/16 p0, 0x54

    .line 463
    goto/16 :goto_0

    .line 465
    :pswitch_36
    const/16 p0, 0x59

    .line 466
    goto/16 :goto_0

    .line 468
    :pswitch_37
    const/16 p0, 0x3a6

    .line 469
    goto/16 :goto_0

    .line 471
    :pswitch_38
    const/16 p0, 0x58

    .line 472
    goto/16 :goto_0

    .line 474
    :pswitch_39
    const/16 p0, 0x3a8

    .line 475
    goto/16 :goto_0

    .line 477
    :pswitch_3a
    const/16 p0, 0x3a9

    .line 478
    goto/16 :goto_0

    .line 480
    :pswitch_3b
    const/16 p0, 0x49

    .line 481
    goto/16 :goto_0

    .line 483
    :pswitch_3c
    const/16 p0, 0x59

    .line 484
    goto/16 :goto_0

    .line 486
    :pswitch_3d
    const/16 p0, 0x4f

    .line 487
    goto/16 :goto_0

    .line 489
    :pswitch_3e
    const/16 p0, 0x59

    .line 490
    goto/16 :goto_0

    .line 492
    :pswitch_3f
    const/16 p0, 0x3a9

    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x37e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch
.end method

.method private static convertLatin1Supplement(C)C
    .locals 0
    .param p0, "ch"    # C

    .prologue
    .line 973
    packed-switch p0, :pswitch_data_0

    .line 1132
    :goto_0
    :pswitch_0
    return p0

    .line 975
    :pswitch_1
    const/16 p0, 0x63

    .line 976
    goto :goto_0

    .line 978
    :pswitch_2
    const/16 p0, 0x7c

    .line 979
    goto :goto_0

    .line 981
    :pswitch_3
    const/16 p0, 0x22

    .line 982
    goto :goto_0

    .line 984
    :pswitch_4
    const/16 p0, 0x3c

    .line 985
    goto :goto_0

    .line 987
    :pswitch_5
    const/16 p0, 0x2d

    .line 988
    goto :goto_0

    .line 990
    :pswitch_6
    const/16 p0, 0x2d

    .line 991
    goto :goto_0

    .line 993
    :pswitch_7
    const/16 p0, 0x2d

    .line 994
    goto :goto_0

    .line 996
    :pswitch_8
    const/16 p0, 0x27

    .line 997
    goto :goto_0

    .line 999
    :pswitch_9
    const/16 p0, 0x2e

    .line 1000
    goto :goto_0

    .line 1002
    :pswitch_a
    const/16 p0, 0x2c

    .line 1003
    goto :goto_0

    .line 1005
    :pswitch_b
    const/16 p0, 0x3e

    .line 1006
    goto :goto_0

    .line 1008
    :pswitch_c
    const/16 p0, 0x41

    .line 1009
    goto :goto_0

    .line 1011
    :pswitch_d
    const/16 p0, 0x41

    .line 1012
    goto :goto_0

    .line 1014
    :pswitch_e
    const/16 p0, 0x41

    .line 1015
    goto :goto_0

    .line 1017
    :pswitch_f
    const/16 p0, 0x41

    .line 1018
    goto :goto_0

    .line 1020
    :pswitch_10
    const/16 p0, 0x45

    .line 1021
    goto :goto_0

    .line 1023
    :pswitch_11
    const/16 p0, 0x45

    .line 1024
    goto :goto_0

    .line 1026
    :pswitch_12
    const/16 p0, 0x45

    .line 1027
    goto :goto_0

    .line 1029
    :pswitch_13
    const/16 p0, 0x49

    .line 1030
    goto :goto_0

    .line 1032
    :pswitch_14
    const/16 p0, 0x49

    .line 1033
    goto :goto_0

    .line 1035
    :pswitch_15
    const/16 p0, 0x49

    .line 1036
    goto :goto_0

    .line 1038
    :pswitch_16
    const/16 p0, 0x49

    .line 1039
    goto :goto_0

    .line 1041
    :pswitch_17
    const/16 p0, 0x44

    .line 1042
    goto :goto_0

    .line 1044
    :pswitch_18
    const/16 p0, 0x4f

    .line 1045
    goto :goto_0

    .line 1047
    :pswitch_19
    const/16 p0, 0x4f

    .line 1048
    goto :goto_0

    .line 1050
    :pswitch_1a
    const/16 p0, 0x4f

    .line 1051
    goto :goto_0

    .line 1053
    :pswitch_1b
    const/16 p0, 0x4f

    .line 1054
    goto :goto_0

    .line 1056
    :pswitch_1c
    const/16 p0, 0x78

    .line 1057
    goto :goto_0

    .line 1059
    :pswitch_1d
    const/16 p0, 0x55

    .line 1060
    goto :goto_0

    .line 1062
    :pswitch_1e
    const/16 p0, 0x55

    .line 1063
    goto :goto_0

    .line 1065
    :pswitch_1f
    const/16 p0, 0x55

    .line 1066
    goto :goto_0

    .line 1068
    :pswitch_20
    const/16 p0, 0x59

    .line 1069
    goto :goto_0

    .line 1071
    :pswitch_21
    const/16 p0, 0x54

    .line 1072
    goto :goto_0

    .line 1074
    :pswitch_22
    const/16 p0, 0x61

    .line 1075
    goto :goto_0

    .line 1077
    :pswitch_23
    const/16 p0, 0x61

    .line 1078
    goto :goto_0

    .line 1080
    :pswitch_24
    const/16 p0, 0x61

    .line 1081
    goto :goto_0

    .line 1083
    :pswitch_25
    const/16 p0, 0x63

    .line 1084
    goto :goto_0

    .line 1086
    :pswitch_26
    const/16 p0, 0x65

    .line 1087
    goto :goto_0

    .line 1089
    :pswitch_27
    const/16 p0, 0x65

    .line 1090
    goto :goto_0

    .line 1092
    :pswitch_28
    const/16 p0, 0x69

    .line 1093
    goto :goto_0

    .line 1095
    :pswitch_29
    const/16 p0, 0x69

    .line 1096
    goto :goto_0

    .line 1098
    :pswitch_2a
    const/16 p0, 0x69

    .line 1099
    goto :goto_0

    .line 1101
    :pswitch_2b
    const/16 p0, 0x64

    .line 1102
    goto/16 :goto_0

    .line 1104
    :pswitch_2c
    const/16 p0, 0x6f

    .line 1105
    goto/16 :goto_0

    .line 1107
    :pswitch_2d
    const/16 p0, 0x6f

    .line 1108
    goto/16 :goto_0

    .line 1110
    :pswitch_2e
    const/16 p0, 0x6f

    .line 1111
    goto/16 :goto_0

    .line 1113
    :pswitch_2f
    const/16 p0, 0x2f

    .line 1114
    goto/16 :goto_0

    .line 1116
    :pswitch_30
    const/16 p0, 0x75

    .line 1117
    goto/16 :goto_0

    .line 1119
    :pswitch_31
    const/16 p0, 0x75

    .line 1120
    goto/16 :goto_0

    .line 1122
    :pswitch_32
    const/16 p0, 0x79

    .line 1123
    goto/16 :goto_0

    .line 1125
    :pswitch_33
    const/16 p0, 0x74

    .line 1126
    goto/16 :goto_0

    .line 1128
    :pswitch_34
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 973
    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_31
        :pswitch_0
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method

.method private static convertLatinExtendedAdditional(C)C
    .locals 0
    .param p0, "ch"    # C

    .prologue
    .line 259
    sparse-switch p0, :sswitch_data_0

    .line 289
    :goto_0
    return p0

    .line 261
    :sswitch_0
    const/16 p0, 0x45

    .line 262
    goto :goto_0

    .line 264
    :sswitch_1
    const/16 p0, 0x4f

    .line 265
    goto :goto_0

    .line 267
    :sswitch_2
    const/16 p0, 0x53

    .line 268
    goto :goto_0

    .line 270
    :sswitch_3
    const/16 p0, 0x65

    .line 271
    goto :goto_0

    .line 273
    :sswitch_4
    const/16 p0, 0x6f

    .line 274
    goto :goto_0

    .line 276
    :sswitch_5
    const/16 p0, 0x73

    .line 277
    goto :goto_0

    .line 279
    :sswitch_6
    const/16 p0, 0x49

    .line 280
    goto :goto_0

    .line 282
    :sswitch_7
    const/16 p0, 0x69

    .line 283
    goto :goto_0

    .line 285
    :sswitch_8
    const/16 p0, 0x55

    goto :goto_0

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e62 -> :sswitch_2
        0x1e63 -> :sswitch_5
        0x1eb8 -> :sswitch_0
        0x1eb9 -> :sswitch_3
        0x1eca -> :sswitch_6
        0x1ecb -> :sswitch_7
        0x1ecc -> :sswitch_1
        0x1ecd -> :sswitch_4
        0x1ee4 -> :sswitch_8
    .end sparse-switch
.end method

.method private static convertLatinExtendedEtc(C)C
    .locals 0
    .param p0, "ch"    # C

    .prologue
    .line 508
    sparse-switch p0, :sswitch_data_0

    .line 962
    :goto_0
    return p0

    .line 510
    :sswitch_0
    const/16 p0, 0x41

    .line 511
    goto :goto_0

    .line 513
    :sswitch_1
    const/16 p0, 0x61

    .line 514
    goto :goto_0

    .line 516
    :sswitch_2
    const/16 p0, 0x41

    .line 517
    goto :goto_0

    .line 519
    :sswitch_3
    const/16 p0, 0x61

    .line 520
    goto :goto_0

    .line 522
    :sswitch_4
    const/16 p0, 0x41

    .line 523
    goto :goto_0

    .line 525
    :sswitch_5
    const/16 p0, 0x61

    .line 526
    goto :goto_0

    .line 528
    :sswitch_6
    const/16 p0, 0x43

    .line 529
    goto :goto_0

    .line 531
    :sswitch_7
    const/16 p0, 0x63

    .line 532
    goto :goto_0

    .line 534
    :sswitch_8
    const/16 p0, 0x43

    .line 535
    goto :goto_0

    .line 537
    :sswitch_9
    const/16 p0, 0x63

    .line 538
    goto :goto_0

    .line 540
    :sswitch_a
    const/16 p0, 0x43

    .line 541
    goto :goto_0

    .line 543
    :sswitch_b
    const/16 p0, 0x63

    .line 544
    goto :goto_0

    .line 546
    :sswitch_c
    const/16 p0, 0x43

    .line 547
    goto :goto_0

    .line 549
    :sswitch_d
    const/16 p0, 0x63

    .line 550
    goto :goto_0

    .line 552
    :sswitch_e
    const/16 p0, 0x44

    .line 553
    goto :goto_0

    .line 555
    :sswitch_f
    const/16 p0, 0x64

    .line 556
    goto :goto_0

    .line 558
    :sswitch_10
    const/16 p0, 0x44

    .line 559
    goto :goto_0

    .line 561
    :sswitch_11
    const/16 p0, 0x64

    .line 562
    goto :goto_0

    .line 564
    :sswitch_12
    const/16 p0, 0x45

    .line 565
    goto :goto_0

    .line 567
    :sswitch_13
    const/16 p0, 0x65

    .line 568
    goto :goto_0

    .line 570
    :sswitch_14
    const/16 p0, 0x45

    .line 571
    goto :goto_0

    .line 573
    :sswitch_15
    const/16 p0, 0x65

    .line 574
    goto :goto_0

    .line 576
    :sswitch_16
    const/16 p0, 0x45

    .line 577
    goto :goto_0

    .line 579
    :sswitch_17
    const/16 p0, 0x65

    .line 580
    goto :goto_0

    .line 582
    :sswitch_18
    const/16 p0, 0x45

    .line 583
    goto :goto_0

    .line 585
    :sswitch_19
    const/16 p0, 0x65

    .line 586
    goto :goto_0

    .line 588
    :sswitch_1a
    const/16 p0, 0x45

    .line 589
    goto :goto_0

    .line 591
    :sswitch_1b
    const/16 p0, 0x65

    .line 592
    goto :goto_0

    .line 594
    :sswitch_1c
    const/16 p0, 0x47

    .line 595
    goto :goto_0

    .line 597
    :sswitch_1d
    const/16 p0, 0x67

    .line 598
    goto :goto_0

    .line 600
    :sswitch_1e
    const/16 p0, 0x47

    .line 601
    goto :goto_0

    .line 603
    :sswitch_1f
    const/16 p0, 0x67

    .line 604
    goto :goto_0

    .line 606
    :sswitch_20
    const/16 p0, 0x47

    .line 607
    goto :goto_0

    .line 609
    :sswitch_21
    const/16 p0, 0x67

    .line 610
    goto :goto_0

    .line 612
    :sswitch_22
    const/16 p0, 0x47

    .line 613
    goto :goto_0

    .line 615
    :sswitch_23
    const/16 p0, 0x67

    .line 616
    goto :goto_0

    .line 618
    :sswitch_24
    const/16 p0, 0x48

    .line 619
    goto :goto_0

    .line 621
    :sswitch_25
    const/16 p0, 0x68

    .line 622
    goto :goto_0

    .line 624
    :sswitch_26
    const/16 p0, 0x48

    .line 625
    goto :goto_0

    .line 627
    :sswitch_27
    const/16 p0, 0x68

    .line 628
    goto :goto_0

    .line 630
    :sswitch_28
    const/16 p0, 0x49

    .line 631
    goto :goto_0

    .line 633
    :sswitch_29
    const/16 p0, 0x69

    .line 634
    goto :goto_0

    .line 636
    :sswitch_2a
    const/16 p0, 0x49

    .line 637
    goto/16 :goto_0

    .line 639
    :sswitch_2b
    const/16 p0, 0x69

    .line 640
    goto/16 :goto_0

    .line 642
    :sswitch_2c
    const/16 p0, 0x49

    .line 643
    goto/16 :goto_0

    .line 645
    :sswitch_2d
    const/16 p0, 0x69

    .line 646
    goto/16 :goto_0

    .line 648
    :sswitch_2e
    const/16 p0, 0x49

    .line 649
    goto/16 :goto_0

    .line 651
    :sswitch_2f
    const/16 p0, 0x69

    .line 652
    goto/16 :goto_0

    .line 654
    :sswitch_30
    const/16 p0, 0x49

    .line 655
    goto/16 :goto_0

    .line 657
    :sswitch_31
    const/16 p0, 0x69

    .line 658
    goto/16 :goto_0

    .line 660
    :sswitch_32
    const/16 p0, 0x49

    .line 661
    goto/16 :goto_0

    .line 663
    :sswitch_33
    const/16 p0, 0x69

    .line 664
    goto/16 :goto_0

    .line 666
    :sswitch_34
    const/16 p0, 0x4a

    .line 667
    goto/16 :goto_0

    .line 669
    :sswitch_35
    const/16 p0, 0x6a

    .line 670
    goto/16 :goto_0

    .line 672
    :sswitch_36
    const/16 p0, 0x4b

    .line 673
    goto/16 :goto_0

    .line 675
    :sswitch_37
    const/16 p0, 0x6b

    .line 676
    goto/16 :goto_0

    .line 678
    :sswitch_38
    const/16 p0, 0x6b

    .line 679
    goto/16 :goto_0

    .line 681
    :sswitch_39
    const/16 p0, 0x4c

    .line 682
    goto/16 :goto_0

    .line 684
    :sswitch_3a
    const/16 p0, 0x6c

    .line 685
    goto/16 :goto_0

    .line 687
    :sswitch_3b
    const/16 p0, 0x4c

    .line 688
    goto/16 :goto_0

    .line 690
    :sswitch_3c
    const/16 p0, 0x6c

    .line 691
    goto/16 :goto_0

    .line 693
    :sswitch_3d
    const/16 p0, 0x4c

    .line 694
    goto/16 :goto_0

    .line 696
    :sswitch_3e
    const/16 p0, 0x6c

    .line 697
    goto/16 :goto_0

    .line 699
    :sswitch_3f
    const/16 p0, 0x4c

    .line 700
    goto/16 :goto_0

    .line 702
    :sswitch_40
    const/16 p0, 0x6c

    .line 703
    goto/16 :goto_0

    .line 705
    :sswitch_41
    const/16 p0, 0x4c

    .line 706
    goto/16 :goto_0

    .line 708
    :sswitch_42
    const/16 p0, 0x6c

    .line 709
    goto/16 :goto_0

    .line 711
    :sswitch_43
    const/16 p0, 0x4e

    .line 712
    goto/16 :goto_0

    .line 714
    :sswitch_44
    const/16 p0, 0x6e

    .line 715
    goto/16 :goto_0

    .line 717
    :sswitch_45
    const/16 p0, 0x4e

    .line 718
    goto/16 :goto_0

    .line 720
    :sswitch_46
    const/16 p0, 0x6e

    .line 721
    goto/16 :goto_0

    .line 723
    :sswitch_47
    const/16 p0, 0x4e

    .line 724
    goto/16 :goto_0

    .line 726
    :sswitch_48
    const/16 p0, 0x6e

    .line 727
    goto/16 :goto_0

    .line 729
    :sswitch_49
    const/16 p0, 0x6e

    .line 730
    goto/16 :goto_0

    .line 732
    :sswitch_4a
    const/16 p0, 0x4e

    .line 733
    goto/16 :goto_0

    .line 735
    :sswitch_4b
    const/16 p0, 0x6e

    .line 736
    goto/16 :goto_0

    .line 738
    :sswitch_4c
    const/16 p0, 0x4f

    .line 739
    goto/16 :goto_0

    .line 741
    :sswitch_4d
    const/16 p0, 0x6f

    .line 742
    goto/16 :goto_0

    .line 744
    :sswitch_4e
    const/16 p0, 0x4f

    .line 745
    goto/16 :goto_0

    .line 747
    :sswitch_4f
    const/16 p0, 0x6f

    .line 748
    goto/16 :goto_0

    .line 750
    :sswitch_50
    const/16 p0, 0x4f

    .line 751
    goto/16 :goto_0

    .line 753
    :sswitch_51
    const/16 p0, 0x6f

    .line 754
    goto/16 :goto_0

    .line 756
    :sswitch_52
    const/16 p0, 0x4f

    .line 757
    goto/16 :goto_0

    .line 759
    :sswitch_53
    const/16 p0, 0x6f

    .line 760
    goto/16 :goto_0

    .line 762
    :sswitch_54
    const/16 p0, 0x52

    .line 763
    goto/16 :goto_0

    .line 765
    :sswitch_55
    const/16 p0, 0x72

    .line 766
    goto/16 :goto_0

    .line 768
    :sswitch_56
    const/16 p0, 0x52

    .line 769
    goto/16 :goto_0

    .line 771
    :sswitch_57
    const/16 p0, 0x72

    .line 772
    goto/16 :goto_0

    .line 774
    :sswitch_58
    const/16 p0, 0x52

    .line 775
    goto/16 :goto_0

    .line 777
    :sswitch_59
    const/16 p0, 0x72

    .line 778
    goto/16 :goto_0

    .line 780
    :sswitch_5a
    const/16 p0, 0x53

    .line 781
    goto/16 :goto_0

    .line 783
    :sswitch_5b
    const/16 p0, 0x73

    .line 784
    goto/16 :goto_0

    .line 786
    :sswitch_5c
    const/16 p0, 0x53

    .line 787
    goto/16 :goto_0

    .line 789
    :sswitch_5d
    const/16 p0, 0x73

    .line 790
    goto/16 :goto_0

    .line 792
    :sswitch_5e
    const/16 p0, 0x53

    .line 793
    goto/16 :goto_0

    .line 795
    :sswitch_5f
    const/16 p0, 0x73

    .line 796
    goto/16 :goto_0

    .line 798
    :sswitch_60
    const/16 p0, 0x53

    .line 799
    goto/16 :goto_0

    .line 801
    :sswitch_61
    const/16 p0, 0x73

    .line 802
    goto/16 :goto_0

    .line 804
    :sswitch_62
    const/16 p0, 0x54

    .line 805
    goto/16 :goto_0

    .line 807
    :sswitch_63
    const/16 p0, 0x74

    .line 808
    goto/16 :goto_0

    .line 810
    :sswitch_64
    const/16 p0, 0x54

    .line 811
    goto/16 :goto_0

    .line 813
    :sswitch_65
    const/16 p0, 0x74

    .line 814
    goto/16 :goto_0

    .line 816
    :sswitch_66
    const/16 p0, 0x54

    .line 817
    goto/16 :goto_0

    .line 819
    :sswitch_67
    const/16 p0, 0x74

    .line 820
    goto/16 :goto_0

    .line 822
    :sswitch_68
    const/16 p0, 0x55

    .line 823
    goto/16 :goto_0

    .line 825
    :sswitch_69
    const/16 p0, 0x75

    .line 826
    goto/16 :goto_0

    .line 828
    :sswitch_6a
    const/16 p0, 0x55

    .line 829
    goto/16 :goto_0

    .line 831
    :sswitch_6b
    const/16 p0, 0x75

    .line 832
    goto/16 :goto_0

    .line 834
    :sswitch_6c
    const/16 p0, 0x55

    .line 835
    goto/16 :goto_0

    .line 837
    :sswitch_6d
    const/16 p0, 0x75

    .line 838
    goto/16 :goto_0

    .line 840
    :sswitch_6e
    const/16 p0, 0x55

    .line 841
    goto/16 :goto_0

    .line 843
    :sswitch_6f
    const/16 p0, 0x75

    .line 844
    goto/16 :goto_0

    .line 846
    :sswitch_70
    const/16 p0, 0x55

    .line 847
    goto/16 :goto_0

    .line 849
    :sswitch_71
    const/16 p0, 0x75

    .line 850
    goto/16 :goto_0

    .line 852
    :sswitch_72
    const/16 p0, 0x55

    .line 853
    goto/16 :goto_0

    .line 855
    :sswitch_73
    const/16 p0, 0x75

    .line 856
    goto/16 :goto_0

    .line 858
    :sswitch_74
    const/16 p0, 0x57

    .line 859
    goto/16 :goto_0

    .line 861
    :sswitch_75
    const/16 p0, 0x77

    .line 862
    goto/16 :goto_0

    .line 864
    :sswitch_76
    const/16 p0, 0x59

    .line 865
    goto/16 :goto_0

    .line 867
    :sswitch_77
    const/16 p0, 0x79

    .line 868
    goto/16 :goto_0

    .line 870
    :sswitch_78
    const/16 p0, 0x59

    .line 871
    goto/16 :goto_0

    .line 873
    :sswitch_79
    const/16 p0, 0x5a

    .line 874
    goto/16 :goto_0

    .line 876
    :sswitch_7a
    const/16 p0, 0x7a

    .line 877
    goto/16 :goto_0

    .line 879
    :sswitch_7b
    const/16 p0, 0x5a

    .line 880
    goto/16 :goto_0

    .line 882
    :sswitch_7c
    const/16 p0, 0x7a

    .line 883
    goto/16 :goto_0

    .line 885
    :sswitch_7d
    const/16 p0, 0x5a

    .line 886
    goto/16 :goto_0

    .line 888
    :sswitch_7e
    const/16 p0, 0x7a

    .line 889
    goto/16 :goto_0

    .line 891
    :sswitch_7f
    const/16 p0, 0x66

    .line 892
    goto/16 :goto_0

    .line 894
    :sswitch_80
    const/16 p0, 0x42

    .line 895
    goto/16 :goto_0

    .line 897
    :sswitch_81
    const/16 p0, 0x44

    .line 898
    goto/16 :goto_0

    .line 900
    :sswitch_82
    const/16 p0, 0x45

    .line 901
    goto/16 :goto_0

    .line 903
    :sswitch_83
    const/16 p0, 0x4b

    .line 904
    goto/16 :goto_0

    .line 906
    :sswitch_84
    const/16 p0, 0x6b

    .line 907
    goto/16 :goto_0

    .line 909
    :sswitch_85
    const/16 p0, 0x4f

    .line 910
    goto/16 :goto_0

    .line 912
    :sswitch_86
    const/16 p0, 0x6f

    .line 913
    goto/16 :goto_0

    .line 915
    :sswitch_87
    const/16 p0, 0x55

    .line 916
    goto/16 :goto_0

    .line 918
    :sswitch_88
    const/16 p0, 0x75

    .line 919
    goto/16 :goto_0

    .line 921
    :sswitch_89
    const/16 p0, 0x59

    .line 922
    goto/16 :goto_0

    .line 924
    :sswitch_8a
    const/16 p0, 0x79

    .line 925
    goto/16 :goto_0

    .line 927
    :sswitch_8b
    const/16 p0, 0x62

    .line 928
    goto/16 :goto_0

    .line 930
    :sswitch_8c
    const/16 p0, 0x64

    .line 931
    goto/16 :goto_0

    .line 933
    :sswitch_8d
    const/16 p0, 0x65

    .line 934
    goto/16 :goto_0

    .line 936
    :sswitch_8e
    const/16 p0, 0x27

    .line 937
    goto/16 :goto_0

    .line 939
    :sswitch_8f
    const/16 p0, 0x27

    .line 940
    goto/16 :goto_0

    .line 942
    :sswitch_90
    const/16 p0, 0x27

    .line 943
    goto/16 :goto_0

    .line 945
    :sswitch_91
    const/16 p0, 0x27

    .line 946
    goto/16 :goto_0

    .line 948
    :sswitch_92
    const/16 p0, 0x22

    .line 949
    goto/16 :goto_0

    .line 958
    :sswitch_93
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_3
        0x104 -> :sswitch_4
        0x105 -> :sswitch_5
        0x106 -> :sswitch_6
        0x107 -> :sswitch_7
        0x108 -> :sswitch_8
        0x109 -> :sswitch_9
        0x10a -> :sswitch_a
        0x10b -> :sswitch_b
        0x10c -> :sswitch_c
        0x10d -> :sswitch_d
        0x10e -> :sswitch_e
        0x10f -> :sswitch_f
        0x110 -> :sswitch_10
        0x111 -> :sswitch_11
        0x112 -> :sswitch_12
        0x113 -> :sswitch_13
        0x114 -> :sswitch_14
        0x115 -> :sswitch_15
        0x116 -> :sswitch_16
        0x117 -> :sswitch_17
        0x118 -> :sswitch_18
        0x119 -> :sswitch_19
        0x11a -> :sswitch_1a
        0x11b -> :sswitch_1b
        0x11c -> :sswitch_1c
        0x11d -> :sswitch_1d
        0x11e -> :sswitch_1e
        0x11f -> :sswitch_1f
        0x120 -> :sswitch_20
        0x121 -> :sswitch_21
        0x122 -> :sswitch_22
        0x123 -> :sswitch_23
        0x124 -> :sswitch_24
        0x125 -> :sswitch_25
        0x126 -> :sswitch_26
        0x127 -> :sswitch_27
        0x128 -> :sswitch_28
        0x129 -> :sswitch_29
        0x12a -> :sswitch_2a
        0x12b -> :sswitch_2b
        0x12c -> :sswitch_2c
        0x12d -> :sswitch_2d
        0x12e -> :sswitch_2e
        0x12f -> :sswitch_2f
        0x130 -> :sswitch_30
        0x131 -> :sswitch_31
        0x132 -> :sswitch_32
        0x133 -> :sswitch_33
        0x134 -> :sswitch_34
        0x135 -> :sswitch_35
        0x136 -> :sswitch_36
        0x137 -> :sswitch_37
        0x138 -> :sswitch_38
        0x139 -> :sswitch_39
        0x13a -> :sswitch_3a
        0x13b -> :sswitch_3b
        0x13c -> :sswitch_3c
        0x13d -> :sswitch_3d
        0x13e -> :sswitch_3e
        0x13f -> :sswitch_3f
        0x140 -> :sswitch_40
        0x141 -> :sswitch_41
        0x142 -> :sswitch_42
        0x143 -> :sswitch_43
        0x144 -> :sswitch_44
        0x145 -> :sswitch_45
        0x146 -> :sswitch_46
        0x147 -> :sswitch_47
        0x148 -> :sswitch_48
        0x149 -> :sswitch_49
        0x14a -> :sswitch_4a
        0x14b -> :sswitch_4b
        0x14c -> :sswitch_4c
        0x14d -> :sswitch_4d
        0x14e -> :sswitch_4e
        0x14f -> :sswitch_4f
        0x150 -> :sswitch_50
        0x151 -> :sswitch_51
        0x152 -> :sswitch_52
        0x153 -> :sswitch_53
        0x154 -> :sswitch_54
        0x155 -> :sswitch_55
        0x156 -> :sswitch_56
        0x157 -> :sswitch_57
        0x158 -> :sswitch_58
        0x159 -> :sswitch_59
        0x15a -> :sswitch_5a
        0x15b -> :sswitch_5b
        0x15c -> :sswitch_5c
        0x15d -> :sswitch_5d
        0x15e -> :sswitch_5e
        0x15f -> :sswitch_5f
        0x160 -> :sswitch_60
        0x161 -> :sswitch_61
        0x162 -> :sswitch_62
        0x163 -> :sswitch_63
        0x164 -> :sswitch_64
        0x165 -> :sswitch_65
        0x166 -> :sswitch_66
        0x167 -> :sswitch_67
        0x168 -> :sswitch_68
        0x169 -> :sswitch_69
        0x16a -> :sswitch_6a
        0x16b -> :sswitch_6b
        0x16c -> :sswitch_6c
        0x16d -> :sswitch_6d
        0x16e -> :sswitch_6e
        0x16f -> :sswitch_6f
        0x170 -> :sswitch_70
        0x171 -> :sswitch_71
        0x172 -> :sswitch_72
        0x173 -> :sswitch_73
        0x174 -> :sswitch_74
        0x175 -> :sswitch_75
        0x176 -> :sswitch_76
        0x177 -> :sswitch_77
        0x178 -> :sswitch_78
        0x179 -> :sswitch_79
        0x17a -> :sswitch_7a
        0x17b -> :sswitch_7b
        0x17c -> :sswitch_7c
        0x17d -> :sswitch_7d
        0x17e -> :sswitch_7e
        0x17f -> :sswitch_7f
        0x181 -> :sswitch_80
        0x18a -> :sswitch_81
        0x18f -> :sswitch_82
        0x198 -> :sswitch_83
        0x199 -> :sswitch_84
        0x1a0 -> :sswitch_85
        0x1a1 -> :sswitch_86
        0x1af -> :sswitch_87
        0x1b0 -> :sswitch_88
        0x1b3 -> :sswitch_89
        0x1b4 -> :sswitch_8a
        0x253 -> :sswitch_8b
        0x257 -> :sswitch_8c
        0x259 -> :sswitch_8d
        0x2bb -> :sswitch_8e
        0x2bc -> :sswitch_8f
        0x2bd -> :sswitch_90
        0x2d9 -> :sswitch_91
        0x2dd -> :sswitch_92
        0x300 -> :sswitch_93
        0x301 -> :sswitch_93
        0x303 -> :sswitch_93
        0x309 -> :sswitch_93
        0x323 -> :sswitch_93
        0x344 -> :sswitch_93
    .end sparse-switch
.end method

.method public static final decodeRawString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "rawBytes"    # Ljava/lang/String;
    .param p1, "charset"    # I

    .prologue
    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const-string p0, ""

    .line 71
    .end local p0    # "rawBytes":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 56
    .restart local p0    # "rawBytes":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    const-string v4, "iso-8859-1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 66
    .local v0, "data":[B
    :try_start_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "rawBytes":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance p0, Ljava/lang/String;

    const-string v4, "iso-8859-1"

    invoke-direct {p0, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v3

    .line 71
    .local v3, "e2":Ljava/io/UnsupportedEncodingException;
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 62
    .end local v0    # "data":[B
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "e2":Ljava/io/UnsupportedEncodingException;
    .restart local p0    # "rawBytes":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string p0, ""

    goto :goto_0
.end method

.method public static getMmsTextSize(Ljava/lang/String;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "nrBytes":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 90
    .local v0, "bytes":[B
    array-length v1, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static isInGsmAlphabet(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    const/16 v2, 0x60

    if-ne p0, v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    const/16 v2, 0x20

    if-lt p0, v2, :cond_2

    const/16 v2, 0x7e

    if-gt p0, v2, :cond_2

    move v0, v1

    .line 192
    goto :goto_0

    .line 193
    :cond_2
    const/16 v2, 0x20ac

    if-ne p0, v2, :cond_3

    move v0, v1

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    const/16 v2, 0x400

    if-ge p0, v2, :cond_0

    .line 201
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 243
    goto :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xbf -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xd1 -> :sswitch_0
        0xd6 -> :sswitch_0
        0xd8 -> :sswitch_0
        0xdc -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe4 -> :sswitch_0
        0xe5 -> :sswitch_0
        0xe6 -> :sswitch_0
        0xe8 -> :sswitch_0
        0xe9 -> :sswitch_0
        0xec -> :sswitch_0
        0xf1 -> :sswitch_0
        0xf2 -> :sswitch_0
        0xf6 -> :sswitch_0
        0xf8 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfc -> :sswitch_0
        0x393 -> :sswitch_0
        0x394 -> :sswitch_0
        0x398 -> :sswitch_0
        0x39b -> :sswitch_0
        0x39e -> :sswitch_0
        0x3a0 -> :sswitch_0
        0x3a3 -> :sswitch_0
        0x3a6 -> :sswitch_0
        0x3a8 -> :sswitch_0
        0x3a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;

    .prologue
    .line 1136
    move-object v1, p0

    .line 1137
    .local v1, "s2":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1138
    sget-object v2, Lcom/sonyericsson/conversations/util/TextUtil;->sRedundantCharacterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1139
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1141
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v1
.end method
