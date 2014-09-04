.class public Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 7
    .param p1, "thepic"    # [B
    .param p2, "len"    # I
    .param p3, "sample"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x100

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->netindex:[I

    .line 112
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->bias:[I

    .line 115
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->freq:[I

    .line 117
    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->radpower:[I

    .line 130
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->thepicture:[B

    .line 131
    iput p2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    .line 132
    iput p3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->samplefac:I

    .line 134
    new-array v2, v5, [[I

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 136
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 137
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v1, v2, v0

    .line 138
    .local v1, "p":[I
    const/4 v2, 0x1

    const/4 v3, 0x2

    shl-int/lit8 v4, v0, 0xc

    div-int/lit16 v4, v4, 0x100

    aput v4, v1, v3

    aput v4, v1, v2

    aput v4, v1, v6

    .line 139
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->freq:[I

    aput v5, v2, v0

    .line 140
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->bias:[I

    aput v6, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "p":[I
    :cond_0
    return-void
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 14
    .param p1, "rad"    # I
    .param p2, "i"    # I
    .param p3, "b"    # I
    .param p4, "g"    # I
    .param p5, "r"    # I

    .prologue
    .line 396
    sub-int v6, p2, p1

    .line 397
    .local v6, "lo":I
    const/4 v10, -0x1

    if-ge v6, v10, :cond_0

    .line 398
    const/4 v6, -0x1

    .line 399
    :cond_0
    add-int v1, p2, p1

    .line 400
    .local v1, "hi":I
    const/16 v10, 0x100

    if-le v1, v10, :cond_1

    .line 401
    const/16 v1, 0x100

    .line 403
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 404
    .local v2, "j":I
    add-int/lit8 v4, p2, -0x1

    .line 405
    .local v4, "k":I
    const/4 v7, 0x1

    .local v7, "m":I
    move v8, v7

    .end local v7    # "m":I
    .local v8, "m":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    move v3, v2

    .line 406
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-lt v3, v1, :cond_2

    if-le v5, v6, :cond_3

    .line 407
    :cond_2
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->radpower:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "m":I
    .restart local v7    # "m":I
    aget v0, v10, v8

    .line 408
    .local v0, "a":I
    if-ge v3, v1, :cond_5

    .line 409
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-object v9, v10, v3

    .line 410
    .local v9, "p":[I
    const/4 v10, 0x0

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v12, v9, v12

    sub-int v12, v12, p3

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 411
    const/4 v10, 0x1

    aget v11, v9, v10

    const/4 v12, 0x1

    aget v12, v9, v12

    sub-int v12, v12, p4

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 412
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x2

    aget v12, v9, v12

    sub-int v12, v12, p5

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 414
    .end local v9    # "p":[I
    :goto_1
    if-le v5, v6, :cond_4

    .line 415
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    aget-object v9, v10, v5

    .line 416
    .restart local v9    # "p":[I
    const/4 v10, 0x0

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v12, v9, v12

    sub-int v12, v12, p3

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 417
    const/4 v10, 0x1

    aget v11, v9, v10

    const/4 v12, 0x1

    aget v12, v9, v12

    sub-int v12, v12, p4

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 418
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x2

    aget v12, v9, v12

    sub-int v12, v12, p5

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    move v8, v7

    .end local v7    # "m":I
    .restart local v8    # "m":I
    move v5, v4

    .end local v4    # "k":I
    .restart local v5    # "k":I
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 421
    .end local v0    # "a":I
    .end local v9    # "p":[I
    :cond_3
    return-void

    .end local v3    # "j":I
    .end local v8    # "m":I
    .restart local v0    # "a":I
    .restart local v2    # "j":I
    .restart local v7    # "m":I
    :cond_4
    move v8, v7

    .end local v7    # "m":I
    .restart local v8    # "m":I
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .end local v8    # "m":I
    .restart local v7    # "m":I
    :cond_5
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method

.method protected altersingle(IIIII)V
    .locals 6
    .param p1, "alpha"    # I
    .param p2, "i"    # I
    .param p3, "b"    # I
    .param p4, "g"    # I
    .param p5, "r"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v0, v1, p2

    .line 431
    .local v0, "n":[I
    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 432
    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 433
    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 434
    return-void
.end method

.method public colorMap()[B
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 145
    const/16 v6, 0x300

    new-array v5, v6, [B

    .line 146
    .local v5, "map":[B
    new-array v1, v8, [I

    .line 147
    .local v1, "index":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 148
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    aput v0, v1, v6

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    const/4 v3, 0x0

    .line 150
    .local v3, "k":I
    const/4 v0, 0x0

    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    :goto_1
    if-ge v0, v8, :cond_1

    .line 151
    aget v2, v1, v0

    .line 152
    .local v2, "j":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 153
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 154
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 150
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "k":I
    .restart local v4    # "k":I
    goto :goto_1

    .line 156
    .end local v2    # "j":I
    :cond_1
    return-object v5
.end method

.method protected contest(III)I
    .locals 13
    .param p1, "b"    # I
    .param p2, "g"    # I
    .param p3, "r"    # I

    .prologue
    .line 453
    const v3, 0x7fffffff

    .line 454
    .local v3, "bestd":I
    move v1, v3

    .line 455
    .local v1, "bestbiasd":I
    const/4 v4, -0x1

    .line 456
    .local v4, "bestpos":I
    move v2, v4

    .line 458
    .local v2, "bestbiaspos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v10, 0x100

    if-ge v8, v10, :cond_5

    .line 459
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v9, v10, v8

    .line 460
    .local v9, "n":[I
    const/4 v10, 0x0

    aget v10, v9, v10

    sub-int v7, v10, p1

    .line 461
    .local v7, "dist":I
    if-gez v7, :cond_0

    .line 462
    neg-int v7, v7

    .line 463
    :cond_0
    const/4 v10, 0x1

    aget v10, v9, v10

    sub-int v0, v10, p2

    .line 464
    .local v0, "a":I
    if-gez v0, :cond_1

    .line 465
    neg-int v0, v0

    .line 466
    :cond_1
    add-int/2addr v7, v0

    .line 467
    const/4 v10, 0x2

    aget v10, v9, v10

    sub-int v0, v10, p3

    .line 468
    if-gez v0, :cond_2

    .line 469
    neg-int v0, v0

    .line 470
    :cond_2
    add-int/2addr v7, v0

    .line 471
    if-ge v7, v3, :cond_3

    .line 472
    move v3, v7

    .line 473
    move v4, v8

    .line 475
    :cond_3
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->bias:[I

    aget v10, v10, v8

    shr-int/lit8 v10, v10, 0xc

    sub-int v6, v7, v10

    .line 476
    .local v6, "biasdist":I
    if-ge v6, v1, :cond_4

    .line 477
    move v1, v6

    .line 478
    move v2, v8

    .line 480
    :cond_4
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->freq:[I

    aget v10, v10, v8

    shr-int/lit8 v5, v10, 0xa

    .line 481
    .local v5, "betafreq":I
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->freq:[I

    aget v11, v10, v8

    sub-int/2addr v11, v5

    aput v11, v10, v8

    .line 482
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->bias:[I

    aget v11, v10, v8

    shl-int/lit8 v12, v5, 0xa

    add-int/2addr v11, v12

    aput v11, v10, v8

    .line 458
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "a":I
    .end local v5    # "betafreq":I
    .end local v6    # "biasdist":I
    .end local v7    # "dist":I
    .end local v9    # "n":[I
    :cond_5
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->freq:[I

    aget v11, v10, v4

    add-int/lit8 v11, v11, 0x40

    aput v11, v10, v4

    .line 485
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->bias:[I

    aget v11, v10, v4

    const/high16 v12, 0x10000

    sub-int/2addr v11, v12

    aput v11, v10, v4

    .line 486
    return v2
.end method

.method public inxbuild()V
    .locals 15

    .prologue
    const/16 v14, 0x100

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "previouscol":I
    const/4 v7, 0x0

    .line 174
    .local v7, "startpos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v14, :cond_5

    .line 175
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v2, v8, v0

    .line 176
    .local v2, "p":[I
    move v5, v0

    .line 177
    .local v5, "smallpos":I
    aget v6, v2, v10

    .line 179
    .local v6, "smallval":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v1, v14, :cond_1

    .line 180
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v4, v8, v1

    .line 181
    .local v4, "q":[I
    aget v8, v4, v10

    if-ge v8, v6, :cond_0

    .line 182
    move v5, v1

    .line 183
    aget v6, v4, v10

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    .end local v4    # "q":[I
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v4, v8, v5

    .line 188
    .restart local v4    # "q":[I
    if-eq v0, v5, :cond_2

    .line 189
    aget v1, v4, v11

    .line 190
    aget v8, v2, v11

    aput v8, v4, v11

    .line 191
    aput v1, v2, v11

    .line 192
    aget v1, v4, v10

    .line 193
    aget v8, v2, v10

    aput v8, v4, v10

    .line 194
    aput v1, v2, v10

    .line 195
    aget v1, v4, v12

    .line 196
    aget v8, v2, v12

    aput v8, v4, v12

    .line 197
    aput v1, v2, v12

    .line 198
    aget v1, v4, v13

    .line 199
    aget v8, v2, v13

    aput v8, v4, v13

    .line 200
    aput v1, v2, v13

    .line 203
    :cond_2
    if-eq v6, v3, :cond_4

    .line 204
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->netindex:[I

    add-int v9, v7, v0

    ushr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 205
    add-int/lit8 v1, v3, 0x1

    :goto_2
    if-ge v1, v6, :cond_3

    .line 206
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->netindex:[I

    aput v0, v8, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    :cond_3
    move v3, v6

    .line 208
    move v7, v0

    .line 174
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "j":I
    .end local v2    # "p":[I
    .end local v4    # "q":[I
    .end local v5    # "smallpos":I
    .end local v6    # "smallval":I
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->netindex:[I

    add-int/lit16 v9, v7, 0xff

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 212
    add-int/lit8 v1, v3, 0x1

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v14, :cond_6

    .line 213
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->netindex:[I

    const/16 v9, 0xff

    aput v9, v8, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 214
    :cond_6
    return-void
.end method

.method public learn()V
    .locals 21

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-ge v1, v7, :cond_0

    .line 227
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->samplefac:I

    .line 228
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->samplefac:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->alphadec:I

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->thepicture:[B

    move-object/from16 v16, v0

    .line 230
    .local v16, "p":[B
    const/16 v17, 0x0

    .line 231
    .local v17, "pix":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    .line 232
    .local v15, "lim":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->samplefac:I

    mul-int/lit8 v7, v7, 0x3

    div-int v19, v1, v7

    .line 233
    .local v19, "samplepixels":I
    div-int/lit8 v13, v19, 0x64

    .line 234
    .local v13, "delta":I
    const/16 v2, 0x400

    .line 235
    .local v2, "alpha":I
    const/16 v18, 0x800

    .line 237
    .local v18, "radius":I
    shr-int/lit8 v8, v18, 0x6

    .line 238
    .local v8, "rad":I
    const/4 v1, 0x1

    if-gt v8, v1, :cond_1

    .line 239
    const/4 v8, 0x0

    .line 240
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v8, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v14, v14

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/2addr v7, v2

    aput v7, v1, v14

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-ge v1, v7, :cond_8

    .line 244
    const/16 v20, 0x3

    .line 258
    .local v20, "step":I
    :goto_1
    const/4 v14, 0x0

    .line 259
    :cond_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_c

    .line 260
    add-int/lit8 v1, v17, 0x0

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 261
    .local v4, "b":I
    add-int/lit8 v1, v17, 0x1

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v1, 0x4

    .line 262
    .local v5, "g":I
    add-int/lit8 v1, v17, 0x2

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x4

    .line 263
    .local v6, "r":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->contest(III)I

    move-result v3

    .local v3, "j":I
    move-object/from16 v1, p0

    .line 265
    invoke-virtual/range {v1 .. v6}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->altersingle(IIIII)V

    .line 266
    if-eqz v8, :cond_4

    move-object/from16 v7, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 267
    invoke-virtual/range {v7 .. v12}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->alterneigh(IIIII)V

    .line 269
    :cond_4
    add-int v17, v17, v20

    .line 270
    move/from16 v0, v17

    if-lt v0, v15, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    sub-int v17, v17, v1

    .line 273
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 274
    if-nez v13, :cond_6

    .line 275
    const/4 v13, 0x1

    .line 276
    :cond_6
    rem-int v1, v14, v13

    if-nez v1, :cond_3

    .line 277
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->alphadec:I

    div-int v1, v2, v1

    sub-int/2addr v2, v1

    .line 278
    div-int/lit8 v1, v18, 0x1e

    sub-int v18, v18, v1

    .line 279
    shr-int/lit8 v8, v18, 0x6

    .line 280
    const/4 v1, 0x1

    if-gt v8, v1, :cond_7

    .line 281
    const/4 v8, 0x0

    .line 282
    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_3

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v3, v3

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/2addr v7, v2

    aput v7, v1, v3

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 245
    .end local v3    # "j":I
    .end local v4    # "b":I
    .end local v5    # "g":I
    .end local v6    # "r":I
    .end local v20    # "step":I
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1f3

    if-eqz v1, :cond_9

    .line 246
    const/16 v20, 0x5d9

    .restart local v20    # "step":I
    goto :goto_1

    .line 248
    .end local v20    # "step":I
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1eb

    if-eqz v1, :cond_a

    .line 249
    const/16 v20, 0x5c1

    .restart local v20    # "step":I
    goto/16 :goto_1

    .line 251
    .end local v20    # "step":I
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1e7

    if-eqz v1, :cond_b

    .line 252
    const/16 v20, 0x5b5

    .restart local v20    # "step":I
    goto/16 :goto_1

    .line 254
    .end local v20    # "step":I
    :cond_b
    const/16 v20, 0x5e5

    .restart local v20    # "step":I
    goto/16 :goto_1

    .line 286
    :cond_c
    return-void
.end method

.method public map(III)I
    .locals 8
    .param p1, "b"    # I
    .param p2, "g"    # I
    .param p3, "r"    # I

    .prologue
    .line 300
    const/16 v2, 0x3e8

    .line 301
    .local v2, "bestd":I
    const/4 v1, -0x1

    .line 302
    .local v1, "best":I
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->netindex:[I

    aget v4, v7, p2

    .line 303
    .local v4, "i":I
    add-int/lit8 v5, v4, -0x1

    .line 305
    .local v5, "j":I
    :cond_0
    :goto_0
    const/16 v7, 0x100

    if-lt v4, v7, :cond_1

    if-ltz v5, :cond_b

    .line 306
    :cond_1
    const/16 v7, 0x100

    if-ge v4, v7, :cond_2

    .line 307
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v6, v7, v4

    .line 308
    .local v6, "p":[I
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, v7, p2

    .line 309
    .local v3, "dist":I
    if-lt v3, v2, :cond_3

    .line 310
    const/16 v4, 0x100

    .line 331
    .end local v3    # "dist":I
    .end local v6    # "p":[I
    :cond_2
    :goto_1
    if-ltz v5, :cond_0

    .line 332
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v6, v7, v5

    .line 333
    .restart local v6    # "p":[I
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, p2, v7

    .line 334
    .restart local v3    # "dist":I
    if-lt v3, v2, :cond_7

    .line 335
    const/4 v5, -0x1

    goto :goto_0

    .line 312
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 313
    if-gez v3, :cond_4

    .line 314
    neg-int v3, v3

    .line 315
    :cond_4
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 316
    .local v0, "a":I
    if-gez v0, :cond_5

    .line 317
    neg-int v0, v0

    .line 318
    :cond_5
    add-int/2addr v3, v0

    .line 319
    if-ge v3, v2, :cond_2

    .line 320
    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 321
    if-gez v0, :cond_6

    .line 322
    neg-int v0, v0

    .line 323
    :cond_6
    add-int/2addr v3, v0

    .line 324
    if-ge v3, v2, :cond_2

    .line 325
    move v2, v3

    .line 326
    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_1

    .line 337
    .end local v0    # "a":I
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 338
    if-gez v3, :cond_8

    .line 339
    neg-int v3, v3

    .line 340
    :cond_8
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 341
    .restart local v0    # "a":I
    if-gez v0, :cond_9

    .line 342
    neg-int v0, v0

    .line 343
    :cond_9
    add-int/2addr v3, v0

    .line 344
    if-ge v3, v2, :cond_0

    .line 345
    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 346
    if-gez v0, :cond_a

    .line 347
    neg-int v0, v0

    .line 348
    :cond_a
    add-int/2addr v3, v0

    .line 349
    if-ge v3, v2, :cond_0

    .line 350
    move v2, v3

    .line 351
    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_0

    .line 357
    .end local v0    # "a":I
    .end local v3    # "dist":I
    .end local v6    # "p":[I
    :cond_b
    return v1
.end method

.method public process()[B
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->learn()V

    .line 362
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->unbiasnet()V

    .line 363
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->inxbuild()V

    .line 364
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->colorMap()[B

    move-result-object v0

    return-object v0
.end method

.method public unbiasnet()V
    .locals 4

    .prologue
    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 379
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 380
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 381
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method
