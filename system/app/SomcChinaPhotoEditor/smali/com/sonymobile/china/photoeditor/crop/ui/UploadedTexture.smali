.class abstract Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;
.super Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$1;,
        Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$1;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sBorderKey:Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sTextureId:[I

    .line 213
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;-><init>(Z)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .param p1, "hasBorder"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V

    .line 53
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mContentValid:Z

    .line 55
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mOpaque:Z

    .line 57
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mThrottled:Z

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->setBorder(Z)V

    .line 75
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    .line 77
    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 146
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 148
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 129
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 132
    .local v1, "w":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 133
    .local v0, "h":I
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 134
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->setSize(II)V

    .line 141
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v2

    .line 135
    .restart local v0    # "h":I
    .restart local v1    # "w":I
    :cond_1
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHeight:I

    if-eq v2, v0, :cond_0

    .line 136
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot change size: this = %s, orig = %sx%s, new = %sx%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "vertical"    # Z
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x1

    .line 115
    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sBorderKey:Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;

    .line 116
    .local v1, "key":Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;
    iput-boolean p0, v1, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;->vertical:Z

    .line 117
    iput-object p1, v1, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 118
    iput p2, v1, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;->length:I

    .line 119
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 120
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 121
    if-eqz p0, :cond_1

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    :goto_0
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;->clone()Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    return-object v0

    .line 121
    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sUploadedCount:I

    .line 205
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 208
    sget v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 25
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 216
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    .line 218
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 219
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_4

    .line 221
    :try_start_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 222
    .local v23, "bWidth":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 223
    .local v22, "bHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getTextureWidth()I

    move-result v5

    .line 224
    .local v5, "texWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getTextureHeight()I

    move-result v6

    .line 229
    .local v6, "texHeight":I
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    int-to-float v7, v7

    aput v7, v2, v3

    .line 230
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    add-int v7, v7, v22

    int-to-float v7, v7

    aput v7, v2, v3

    .line 231
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x2

    move/from16 v0, v23

    int-to-float v7, v0

    aput v7, v2, v3

    .line 232
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x3

    move/from16 v0, v22

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v2, v3

    .line 235
    const/4 v2, 0x1

    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 236
    const/16 v2, 0xde1

    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 237
    const/16 v2, 0xde1

    const v3, 0x8b9d

    sget-object v7, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sCropRect:[F

    const/4 v8, 0x0

    invoke-interface {v1, v2, v3, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 239
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 241
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 243
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 244
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 246
    move/from16 v0, v23

    if-ne v0, v5, :cond_1

    move/from16 v0, v22

    if-ne v0, v6, :cond_1

    .line 247
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v14, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->freeBitmap()V

    .line 286
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->setAssociatedCanvas(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 287
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sTextureId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mId:I

    .line 288
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mState:I

    .line 289
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mContentValid:Z

    .line 294
    return-void

    .line 249
    :cond_1
    :try_start_1
    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 250
    .local v4, "format":I
    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v9

    .line 251
    .local v9, "type":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    .line 253
    .local v24, "config":Landroid/graphics/Bitmap$Config;
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v4

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 255
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    if-lez v2, :cond_2

    .line 260
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 261
    .local v19, "line":Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 264
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 265
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 269
    .end local v19    # "line":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v23

    if-ge v2, v5, :cond_3

    .line 270
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 271
    .restart local v19    # "line":Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    add-int v17, v2, v23

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 276
    .end local v19    # "line":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v22

    if-ge v2, v6, :cond_0

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 278
    .restart local v19    # "line":Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    add-int v18, v2, v22

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 283
    .end local v4    # "format":I
    .end local v5    # "texWidth":I
    .end local v6    # "texHeight":I
    .end local v9    # "type":I
    .end local v19    # "line":Landroid/graphics/Bitmap;
    .end local v22    # "bHeight":I
    .end local v23    # "bWidth":I
    .end local v24    # "config":Landroid/graphics/Bitmap$Config;
    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->freeBitmap()V

    throw v2

    .line 291
    :cond_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mState:I

    .line 292
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Texture load fail, no bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 161
    :cond_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 154
    :cond_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->freeBitmap()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mContentValid:Z

    .line 172
    return-void
.end method

.method public isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->recycle()V

    .line 313
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->freeBitmap()V

    .line 315
    :cond_0
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .param p1, "isOpaque"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mOpaque:Z

    .line 304
    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0
    .param p1, "throttled"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mThrottled:Z

    .line 112
    return-void
.end method

.method public updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    const/16 v0, 0xde1

    .line 187
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->uploadToCanvas(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 194
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 195
    .local v5, "format":I
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 196
    .local v6, "type":I
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mId:I

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 197
    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mBorder:I

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 198
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->freeBitmap()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
