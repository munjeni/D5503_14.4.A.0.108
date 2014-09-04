.class public Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "photoeditor"


# instance fields
.field protected closeStream:Z

.field protected colorDepth:I

.field protected colorTab:[B

.field protected delay:I

.field protected dispose:I

.field protected firstFrame:Z

.field protected height:I

.field protected image:Landroid/graphics/Bitmap;

.field protected indexedPixels:[B

.field protected out:Ljava/io/OutputStream;

.field protected palSize:I

.field protected pixels:[B

.field protected repeat:I

.field protected sample:I

.field protected sizeSet:Z

.field protected started:Z

.field protected transIndex:I

.field protected transparent:I

.field protected usedEntry:[Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->delay:I

    .line 48
    iput v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->repeat:I

    .line 58
    iput v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transparent:I

    .line 65
    const/16 v1, 0x100

    new-array v0, v1, [Z

    .line 66
    .local v0, "arrayOfBoolean":[Z
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->usedEntry:[Z

    .line 67
    const/4 v1, 0x7

    iput v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->palSize:I

    .line 68
    iput v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->dispose:I

    .line 69
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->closeStream:Z

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->firstFrame:Z

    .line 71
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->sizeSet:Z

    .line 72
    const/16 v1, 0xa

    iput v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->sample:I

    .line 73
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    .local v3, "ok":Z
    if-eqz p1, :cond_0

    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->started:Z

    if-nez v5, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v4

    .line 82
    :cond_1
    :try_start_0
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->sizeSet:Z

    if-nez v4, :cond_2

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 84
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 85
    .local v1, "l":I
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->setSize(II)V

    .line 87
    .end local v0    # "i":I
    .end local v1    # "l":I
    :cond_2
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->getImagePixels()V

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->analyzePixels()V

    .line 90
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeLSD()V

    .line 92
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writePalette()V

    .line 93
    iget v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->repeat:I

    if-ltz v4, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeNetscapeExt()V

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeImageDesc()V

    .line 100
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->firstFrame:Z

    if-nez v4, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writePalette()V

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writePixels()V

    .line 103
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->firstFrame:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v3

    .line 109
    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "localIOException1":Ljava/io/IOException;
    const-string v4, "photoeditor"

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected analyzePixels()V
    .locals 17

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    array-length v10, v14

    .line 115
    .local v10, "len":I
    div-int/lit8 v11, v10, 0x3

    .line 116
    .local v11, "nPix":I
    new-array v1, v11, [B

    .line 117
    .local v1, "arrayOfByte1":[B
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->indexedPixels:[B

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    .line 119
    .local v2, "arrayOfByte2":[B
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->sample:I

    .line 120
    .local v6, "k":I
    new-instance v12, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;

    invoke-direct {v12, v2, v10, v6}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;-><init>([BII)V

    .line 121
    .local v12, "nq":Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;
    invoke-virtual {v12}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->process()[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    .line 122
    const/4 v9, 0x0

    .line 123
    .local v9, "l":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    array-length v4, v14

    .line 124
    .local v4, "i1":I
    if-lt v9, v4, :cond_0

    .line 125
    const/4 v9, 0x0

    .line 128
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    array-length v14, v14

    if-ge v3, v14, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    aget-byte v13, v14, v3

    .line 130
    .local v13, "temp":B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v16, v3, 0x2

    aget-byte v15, v15, v16

    aput-byte v15, v14, v3

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v15, v3, 0x2

    aput-byte v13, v14, v15

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v15, v3, 0x3

    const/16 v16, 0x0

    aput-boolean v16, v14, v15

    .line 128
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 134
    .end local v13    # "temp":B
    :cond_1
    const/4 v7, 0x0

    .line 135
    .local v7, "k1":I
    const/4 v3, 0x0

    move v8, v7

    .end local v7    # "k1":I
    .local v8, "k1":I
    :goto_1
    if-ge v3, v11, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "k1":I
    .restart local v7    # "k1":I
    aget-byte v14, v14, v8

    and-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "k1":I
    .restart local v8    # "k1":I
    aget-byte v15, v15, v7

    and-int/lit16 v15, v15, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    move-object/from16 v16, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "k1":I
    .restart local v7    # "k1":I
    aget-byte v16, v16, v8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/NeuQuant;->map(III)I

    move-result v5

    .line 137
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v15, 0x1

    aput-boolean v15, v14, v5

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v15, v5

    aput-byte v15, v14, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7    # "k1":I
    .restart local v8    # "k1":I
    goto :goto_1

    .line 140
    .end local v5    # "index":I
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    .line 141
    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorDepth:I

    .line 142
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->palSize:I

    .line 143
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transparent:I

    if-eqz v14, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transparent:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->findClosest(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transIndex:I

    .line 147
    :cond_3
    return-void
.end method

.method protected findClosest(I)I
    .locals 15
    .param p1, "paramInt"    # I

    .prologue
    .line 151
    iget-object v13, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    if-nez v13, :cond_1

    .line 152
    const/4 v11, -0x1

    .line 173
    :cond_0
    return v11

    .line 154
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 155
    .local v12, "r":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 156
    .local v6, "g":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 157
    .local v0, "b":I
    const/4 v11, 0x0

    .line 158
    .local v11, "minpos":I
    const/high16 v4, 0x1000000

    .line 159
    .local v4, "dmin":I
    iget-object v13, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    array-length v10, v13

    .line 161
    .local v10, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 162
    iget-object v13, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    sub-int v5, v12, v13

    .line 163
    .local v5, "dr":I
    iget-object v13, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .restart local v8    # "i":I
    aget-byte v13, v13, v7

    and-int/lit16 v13, v13, 0xff

    sub-int v3, v6, v13

    .line 164
    .local v3, "dg":I
    iget-object v13, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    sub-int v2, v0, v13

    .line 165
    .local v2, "db":I
    mul-int v13, v5, v5

    mul-int v14, v3, v3

    add-int/2addr v13, v14

    mul-int v14, v2, v2

    add-int v1, v13, v14

    .line 166
    .local v1, "d":I
    div-int/lit8 v9, v8, 0x3

    .line 167
    .local v9, "index":I
    iget-object v13, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v13, v13, v9

    if-eqz v13, :cond_2

    if-ge v1, v4, :cond_2

    .line 168
    move v4, v1

    .line 169
    move v11, v9

    .line 171
    :cond_2
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    move v8, v7

    .line 172
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_0
.end method

.method public finish()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 177
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->started:Z

    if-nez v3, :cond_0

    move v1, v2

    .line 201
    :goto_0
    return v1

    .line 179
    :cond_0
    const/4 v1, 0x1

    .line 180
    .local v1, "ok":Z
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->started:Z

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 183
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 184
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->closeStream:Z

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    :goto_1
    iput v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transIndex:I

    .line 193
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 194
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 195
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    .line 196
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->indexedPixels:[B

    .line 197
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    .line 198
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->closeStream:Z

    .line 199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->firstFrame:Z

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getImagePixels()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 205
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 206
    .local v3, "w":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 207
    .local v7, "h":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 208
    .local v9, "localConfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v3, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "localBitmap1":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    .local v8, "localCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 211
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 212
    .local v11, "localPaint":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2, v12, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 215
    mul-int v2, v3, v7

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    .line 216
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 217
    .local v1, "arrayOfInt":[I
    const/4 v4, 0x0

    .line 218
    .local v4, "k":I
    const/4 v5, 0x0

    .line 219
    .local v5, "l":I
    move v6, v3

    .line 220
    .local v6, "i1":I
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 221
    const/4 v10, 0x0

    .line 224
    .local v10, "localObject":I
    :goto_0
    array-length v2, v1

    if-lt v10, v2, :cond_0

    .line 225
    return-void

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    mul-int/lit8 v12, v10, 0x3

    aget v13, v1, v10

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v2, v12

    .line 227
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    mul-int/lit8 v12, v10, 0x3

    add-int/lit8 v12, v12, 0x1

    aget v13, v1, v10

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v2, v12

    .line 228
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->pixels:[B

    mul-int/lit8 v12, v10, 0x3

    add-int/lit8 v12, v12, 0x2

    aget v13, v1, v10

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v2, v12

    .line 229
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public setDelay(I)V
    .locals 2
    .param p1, "ms"    # I

    .prologue
    .line 234
    int-to-float v0, p1

    const/high16 v1, 0x41200000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->delay:I

    .line 235
    return-void
.end method

.method public setDispose(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 238
    if-ltz p1, :cond_0

    .line 239
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->dispose:I

    .line 241
    :cond_0
    return-void
.end method

.method public setFrameRate(F)V
    .locals 1
    .param p1, "fps"    # F

    .prologue
    .line 244
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 245
    const/high16 v0, 0x42c80000

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->delay:I

    .line 247
    :cond_0
    return-void
.end method

.method public setQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 250
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 251
    const/4 p1, 0x1

    .line 252
    :cond_0
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->sample:I

    .line 253
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "iter"    # I

    .prologue
    .line 256
    if-ltz p1, :cond_0

    .line 257
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->repeat:I

    .line 259
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->width:I

    .line 265
    iput p2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->height:I

    .line 266
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->width:I

    if-ge v0, v1, :cond_1

    .line 267
    const/16 v0, 0x140

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->width:I

    .line 268
    :cond_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->height:I

    if-ge v0, v1, :cond_2

    .line 269
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->height:I

    .line 270
    :cond_2
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->sizeSet:Z

    goto :goto_0
.end method

.method public setTransparent(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transparent:I

    .line 275
    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 278
    if-nez p1, :cond_0

    move v1, v2

    .line 290
    :goto_0
    return v1

    .line 281
    :cond_0
    const/4 v1, 0x1

    .line 282
    .local v1, "ok":Z
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->closeStream:Z

    .line 283
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 285
    :try_start_0
    const-string v2, "GIF89a"

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_1
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->started:Z

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "photoeditor"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public start(Ljava/lang/String;)Z
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v1, 0x1

    .line 296
    .local v1, "ok":Z
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 297
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v1

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->closeStream:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->started:Z

    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected writeGraphicCtrlExt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 307
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0xf9

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 308
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 310
    iget v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transparent:I

    if-nez v2, :cond_1

    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "transp":I
    const/4 v0, 0x0

    .line 317
    .local v0, "disp":I
    :goto_0
    iget v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->dispose:I

    if-ltz v2, :cond_0

    .line 318
    iget v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->dispose:I

    and-int/lit8 v0, v2, 0x7

    .line 320
    :cond_0
    shl-int/lit8 v0, v0, 0x2

    .line 323
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    or-int/lit8 v3, v0, 0x0

    or-int/lit8 v3, v3, 0x0

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 328
    iget v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->delay:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 329
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 330
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 331
    return-void

    .line 314
    .end local v0    # "disp":I
    .end local v1    # "transp":I
    :cond_1
    const/4 v1, 0x1

    .line 315
    .restart local v1    # "transp":I
    const/4 v0, 0x2

    .restart local v0    # "disp":I
    goto :goto_0
.end method

.method protected writeImageDesc()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 335
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 336
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 337
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 338
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 340
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 351
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method protected writeLSD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 355
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 356
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 358
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 363
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 364
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 365
    return-void
.end method

.method protected writeNetscapeExt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 369
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 370
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 371
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 373
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 374
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->repeat:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->writeShort(I)V

    .line 375
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 376
    return-void
.end method

.method protected writePalette()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 379
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 380
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v2

    rsub-int v1, v2, 0x300

    .line 381
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method protected writePixels()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    new-instance v0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;-><init>(II[BI)V

    .line 388
    .local v0, "encoder":Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    .line 389
    return-void
.end method

.method protected writeShort(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 393
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 394
    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    return-void
.end method
