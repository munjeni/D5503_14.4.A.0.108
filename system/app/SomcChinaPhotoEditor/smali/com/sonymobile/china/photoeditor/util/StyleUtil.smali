.class public Lcom/sonymobile/china/photoeditor/util/StyleUtil;
.super Ljava/lang/Object;
.source "StyleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectFaces(Landroid/content/Context;Landroid/graphics/Bitmap;F[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F
    .param p3, "faceRects"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "F[",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v15, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_1

    .line 39
    :cond_0
    return-object v15

    .line 25
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v10

    .line 26
    .local v10, "byteCnt":I
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 27
    .local v9, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 29
    new-instance v1, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;-><init>(Landroid/content/Context;)V

    .line 30
    .local v1, "faceBeautyEngine":Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;->faceDetectRgb([BIIIF[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v16

    .line 32
    .local v16, "result":[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_0

    .line 34
    move-object/from16 v8, v16

    .local v8, "arr$":[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v13, v8, v11

    .local v13, "o":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    move-object v14, v13

    .line 35
    check-cast v14, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 36
    .local v14, "obj":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method
