.class public Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageStyleFilter.java"


# static fields
.field protected static final EYELASH_SIZE:I = 0x100

.field protected static final EYE_SIZE:I = 0x100


# instance fields
.field protected blushId:I

.field protected eyeId:I

.field protected eyelashId:I

.field protected lowerId:I

.field protected mContext:Landroid/content/Context;

.field private mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

.field private mStyleIndex:I

.field protected shadowId:I

.field protected upperId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleIndex"    # I
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 37
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->setFilterType(B)V

    .line 38
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mStyleIndex:I

    .line 39
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private isSameRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Z
    .locals 5
    .param p1, "rects"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 98
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    array-length v3, v3

    array-length v4, p1

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    aget-object v3, v3, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 103
    goto :goto_0

    .line 101
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    move v1, v2

    .line 107
    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->beauty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected beauty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    .line 63
    .local v8, "byteCnt":I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 64
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v7}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 65
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "faceBeautyEngine":Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mStyleIndex:I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;->beautyStyleRgbM(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I

    .line 68
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    invoke-virtual {p1, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 70
    return-object p1
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;

    .line 46
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual {v1}, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    iput-object v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 47
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z
    .locals 4
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v0

    .line 81
    .local v0, "isStyleFilter":Z
    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 87
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;

    .line 88
    .local v1, "styleFilter":Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;
    iget-object v3, v1, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-direct {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->isSameRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setFaceRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V
    .locals 1
    .param p1, "rects"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 75
    invoke-virtual {p1}, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 76
    return-void
.end method
