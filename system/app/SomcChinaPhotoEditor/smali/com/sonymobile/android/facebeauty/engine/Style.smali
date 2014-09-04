.class public Lcom/sonymobile/android/facebeauty/engine/Style;
.super Ljava/lang/Object;
.source "Style.java"


# instance fields
.field protected mBlushId:I

.field protected mBlushTemplate:[B

.field protected mContext:Landroid/content/Context;

.field protected mEyeByteArray:[B

.field protected mEyeId:I

.field protected mEyeLashSize:I

.field protected mEyeSize:I

.field protected mEyelashId:I

.field protected mEyelashTemplate:[B

.field protected mIsReal:Z

.field protected mLowerId:I

.field protected mParams:[I

.field protected mRawLowerBuffer:[B

.field protected mRawShadowBuffer:[B

.field protected mRawUpperBuffer:[B

.field protected mRealEyeLashSize:I

.field protected mRealEyeSize:I

.field protected mShadowId:I

.field protected mStyleId:I

.field protected mUpperId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I
    .param p3, "isReal"    # Z

    .prologue
    const/16 v4, 0x100

    const/16 v3, 0x80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x25

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    .line 25
    iput v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushId:I

    .line 27
    iput v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeId:I

    .line 29
    iput v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashId:I

    .line 31
    iput v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mLowerId:I

    .line 33
    iput v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mShadowId:I

    .line 35
    iput v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mUpperId:I

    .line 37
    iput v4, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    .line 39
    iput v4, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeLashSize:I

    .line 41
    iput v3, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    .line 43
    iput v3, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeLashSize:I

    .line 45
    iput-object v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeByteArray:[B

    .line 47
    iput-object v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    .line 49
    iput-object v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    .line 51
    iput-object v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    .line 53
    iput-object v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushTemplate:[B

    .line 55
    iput-object v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashTemplate:[B

    .line 58
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mContext:Landroid/content/Context;

    .line 59
    iput p2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mStyleId:I

    .line 60
    iput-boolean p3, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    .line 61
    return-void
.end method

.method public static changeEndianOrder([BI)V
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "size"    # I

    .prologue
    const/4 v7, 0x0

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 196
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, p1, :cond_1

    .line 197
    mul-int v5, v2, p1

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v6, v4, 0x4

    add-int v3, v5, v6

    .line 198
    .local v3, "index":I
    aget-byte v5, p0, v3

    if-nez v5, :cond_0

    .line 199
    aput-byte v7, p0, v3

    .line 200
    add-int/lit8 v5, v3, 0x1

    aput-byte v7, p0, v5

    .line 201
    add-int/lit8 v5, v3, 0x2

    aput-byte v7, p0, v5

    .line 202
    add-int/lit8 v5, v3, 0x3

    aput-byte v7, p0, v5

    .line 196
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    :cond_0
    add-int/lit8 v5, v3, 0x3

    aget-byte v0, p0, v5

    .line 206
    .local v0, "B":B
    add-int/lit8 v5, v3, 0x1

    aget-byte v1, p0, v5

    .line 208
    .local v1, "R":B
    add-int/lit8 v5, v3, 0x3

    aput-byte v1, p0, v5

    .line 209
    add-int/lit8 v5, v3, 0x1

    aput-byte v0, p0, v5

    goto :goto_2

    .line 195
    .end local v0    # "B":B
    .end local v1    # "R":B
    .end local v3    # "index":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v4    # "j":I
    :cond_2
    return-void
.end method

.method private getHalfByte([BII)[B
    .locals 6
    .param p1, "srcTemplate"    # [B
    .param p2, "srcSize"    # I
    .param p3, "dstSize"    # I

    .prologue
    .line 241
    mul-int v3, p3, p3

    mul-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .line 242
    .local v0, "dstTemplate":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 243
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 244
    mul-int v3, v1, p3

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    mul-int v4, v1, p2

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    .line 246
    mul-int v3, v1, p3

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    mul-int v4, v1, p2

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    .line 248
    mul-int v3, v1, p3

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    mul-int v4, v1, p2

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    .line 250
    mul-int v3, v1, p3

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    mul-int v4, v1, p2

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    .line 252
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 254
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 256
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method private getHalfEyeByte([BII)[B
    .locals 6
    .param p1, "srcTemplate"    # [B
    .param p2, "srcSize"    # I
    .param p3, "dstSize"    # I

    .prologue
    .line 226
    mul-int v5, p3, p3

    new-array v0, v5, [B

    .line 227
    .local v0, "dstTemplate":[B
    const/4 v4, 0x0

    .line 228
    .local v4, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 229
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 230
    mul-int v5, v1, p2

    add-int v2, v5, v3

    .line 231
    .local v2, "index":I
    aget-byte v5, p1, v2

    aput-byte v5, v0, v4

    .line 232
    add-int/lit8 v4, v4, 0x1

    .line 233
    add-int/lit8 v3, v3, 0x2

    .line 234
    goto :goto_1

    .line 235
    .end local v2    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 237
    .end local v3    # "j":I
    :cond_1
    return-object v0
.end method

.method public static readRawData(Landroid/content/Context;I)[B
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v12, 0x0

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, "bufferList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 157
    .local v5, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 159
    .local v1, "bufferInputStream":Ljava/io/BufferedInputStream;
    const/high16 v10, 0x100000

    new-array v0, v10, [B

    .line 161
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 164
    .local v6, "readBytes":I
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    .line 165
    new-array v8, v6, [B

    .line 166
    .local v8, "store":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v8    # "store":[B
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    .end local v3    # "e1":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 176
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 190
    :goto_2
    return-object v10

    .line 169
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 170
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 178
    :cond_1
    const/4 v9, 0x0

    .line 179
    .local v9, "sum":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 180
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    add-int/2addr v9, v10

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 183
    :cond_2
    new-array v7, v9, [B

    .line 185
    .local v7, "resultBuffer":[B
    const/4 v9, 0x0

    .line 186
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 187
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    invoke-static {v11, v12, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    add-int/2addr v9, v10

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    move-object v10, v7

    .line 190
    goto :goto_2
.end method


# virtual methods
.method protected changeColor(I)I
    .locals 3
    .param p1, "sColor"    # I

    .prologue
    .line 216
    if-lez p1, :cond_0

    .line 217
    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    shr-int/lit8 v0, v2, 0x10

    .line 218
    .local v0, "b":I
    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v1, v2, 0x10

    .line 219
    .local v1, "r":I
    const v2, -0xff0100

    and-int/2addr p1, v2

    .line 220
    or-int v2, p1, v1

    or-int p1, v2, v0

    .line 222
    .end local v0    # "b":I
    .end local v1    # "r":I
    :cond_0
    return p1
.end method

.method protected changeParamsForReal()V
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x6

    .line 260
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->changeColor(I)I

    move-result v1

    aput v1, v0, v2

    .line 261
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->changeColor(I)I

    move-result v1

    aput v1, v0, v3

    .line 262
    return-void
.end method

.method public getBlush()[B
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushTemplate:[B

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushId:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->readRawData(Landroid/content/Context;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushTemplate:[B

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushTemplate:[B

    return-object v0
.end method

.method public getEye()[B
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeByteArray:[B

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeId:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->readRawData(Landroid/content/Context;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeByteArray:[B

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeByteArray:[B

    array-length v0, v0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeByteArray:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/android/facebeauty/engine/Style;->getHalfEyeByte([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeByteArray:[B

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeByteArray:[B

    return-object v0
.end method

.method public getEyeLash()[B
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashTemplate:[B

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashId:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->readRawData(Landroid/content/Context;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashTemplate:[B

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashTemplate:[B

    array-length v0, v0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashTemplate:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/android/facebeauty/engine/Style;->getHalfByte([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashTemplate:[B

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashTemplate:[B

    return-object v0
.end method

.method public getEyeLashSize()I
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeLashSize:I

    .line 135
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeLashSize:I

    goto :goto_0
.end method

.method public getEyeSize()I
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_0

    .line 69
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    .line 71
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    goto :goto_0
.end method

.method public getLower()[B
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mLowerId:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->readRawData(Landroid/content/Context;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    .line 114
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->changeEndianOrder([BI)V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/android/facebeauty/engine/Style;->getHalfByte([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawLowerBuffer:[B

    return-object v0
.end method

.method public getParams()[I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    return-object v0
.end method

.method public getShadow()[B
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mShadowId:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->readRawData(Landroid/content/Context;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    .line 88
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->changeEndianOrder([BI)V

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/android/facebeauty/engine/Style;->getHalfByte([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawShadowBuffer:[B

    return-object v0
.end method

.method public getStyleId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mStyleId:I

    return v0
.end method

.method public getUpper()[B
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mUpperId:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->readRawData(Landroid/content/Context;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    .line 101
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/Style;->changeEndianOrder([BI)V

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mIsReal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeSize:I

    iget v2, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRealEyeSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/android/facebeauty/engine/Style;->getHalfByte([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mRawUpperBuffer:[B

    return-object v0
.end method
