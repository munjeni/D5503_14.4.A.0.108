.class public Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;
.super Ljava/lang/Object;
.source "ShaderProgramFactory.java"


# static fields
.field public static final GLSL_FIELD_ID_ALPHA_MASK_TEXTURE:Ljava/lang/String; = "uAlphaMaskTexture"

.field public static final GLSL_FIELD_ID_ATTRIB_TEXCOORD:Ljava/lang/String; = "aTexCoord"

.field public static final GLSL_FIELD_ID_ATTRIB_VERTEX:Ljava/lang/String; = "aVertex"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_BLUR_SPREAD:Ljava/lang/String; = "uBlurSpread"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_CENTER_WEIGHT:Ljava/lang/String; = "uCenterWeight"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_LOD:Ljava/lang/String; = "uLod"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_SPREAD_OFFSET:Ljava/lang/String; = "uSpreadOffset"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_HEIGHT:Ljava/lang/String; = "uTextureHeight"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_WIDTH:Ljava/lang/String; = "uTextureWidth"

.field public static final GLSL_FIELD_ID_MASK_TEXTURE_COORD:Ljava/lang/String; = "aMaskTexCoord"

.field public static final GLSL_FIELD_ID_SAMPLER2D_TEXTURE:Ljava/lang/String; = "sTexture"

.field public static final GLSL_FIELD_ID_SIMPLE_COLOR:Ljava/lang/String; = "simpleColor"

.field public static final GLSL_FIELD_ID_TEXTURE_COORD:Ljava/lang/String; = "texCoord"

.field public static final GLSL_FIELD_ID_TEXTURE_RGB:Ljava/lang/String; = "uTextureRgb"

.field public static final GLSL_FIELD_ID_TEXTURE_U:Ljava/lang/String; = "textureU"

.field public static final GLSL_FIELD_ID_TEXTURE_V:Ljava/lang/String; = "textureV"

.field public static final GLSL_FIELD_ID_TEXTURE_VU:Ljava/lang/String; = "textureVu"

.field public static final GLSL_FIELD_ID_TEXTURE_Y:Ljava/lang/String; = "textureY"

.field public static final GLSL_FIELD_ID_UNIFORM_ALPHA:Ljava/lang/String; = "uAlpha"

.field public static final GLSL_FIELD_ID_UNIFORM_MVPMATRIX:Ljava/lang/String; = "uMvpMatrix"

.field public static final GLSL_FIELD_ID_VERTEX:Ljava/lang/String; = "vertex"

.field public static final GLSL_FIELD_ID_VERTEX_MVP_MATRIX:Ljava/lang/String; = "mvpMatrix"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlphaMaskedBlurredYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_blurred_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_blurred_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 213
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createAlphaMaskedYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 180
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_alpha_masked_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 189
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createBlurredYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_blurred_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_blurred_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 165
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createCopyFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_copyframe_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_copyframe_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 142
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createRgbFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_rgb_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_rgb_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 95
    .local v0, "shaderProgram":I
    return v0
.end method

.method private static createShaderProgram(Landroid/content/Context;[I[I)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexShaderFileId"    # [I
    .param p2, "fragmentShaderFileId"    # [I

    .prologue
    .line 256
    const/4 v6, 0x0

    .line 259
    .local v6, "shaderProgram":I
    const/4 v7, 0x0

    .line 260
    .local v7, "vertexShader":I
    const/4 v2, 0x0

    .line 263
    .local v2, "fragmentShader":I
    const/4 v9, 0x1

    new-array v0, v9, [I

    .line 267
    .local v0, "compileStatusChecker":[I
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, "vertexShaderSrc":Ljava/lang/String;
    const v9, 0x8b31

    invoke-static {v9}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v7

    .line 272
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 275
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 280
    invoke-static {v7}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 282
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 285
    const v9, 0x8b81

    const/4 v10, 0x0

    invoke-static {v7, v9, v0, v10}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 291
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 294
    const/4 v9, 0x0

    aget v9, v0, v9

    if-nez v9, :cond_2

    .line 295
    const-string v4, "ShaderProgramFactory.createShaderProgram():[VS Compile Error]"

    .line 296
    .local v4, "message":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {v7}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "shaderMessage":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v9, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v9, v4}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "shaderMessage":Ljava/lang/String;
    .end local v8    # "vertexShaderSrc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 376
    if-eqz v7, :cond_0

    .line 377
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 379
    :cond_0
    if-eqz v2, :cond_1

    .line 380
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 383
    :cond_1
    invoke-static {v6}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 384
    const/4 v6, 0x0

    .line 386
    throw v1

    .line 303
    .end local v1    # "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    .restart local v8    # "vertexShaderSrc":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p0, p2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "fragmentShaderSrc":Ljava/lang/String;
    const v9, 0x8b30

    invoke-static {v9}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 308
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 311
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 316
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 318
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 321
    const v9, 0x8b81

    const/4 v10, 0x0

    invoke-static {v2, v9, v0, v10}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 327
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 330
    const/4 v9, 0x0

    aget v9, v0, v9

    if-nez v9, :cond_3

    .line 331
    const-string v4, "ShaderProgramFactory.createShaderProgram():[FS Compile Error]"

    .line 332
    .restart local v4    # "message":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    .restart local v5    # "shaderMessage":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v9, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v9, v4}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 339
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "shaderMessage":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v6

    .line 342
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 344
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 347
    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 349
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 352
    invoke-static {v7}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 354
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 357
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 359
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 362
    invoke-static {v6}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 364
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 367
    const/4 v9, 0x0

    aget v9, v0, v9

    if-nez v9, :cond_4

    .line 368
    const-string v4, "ShaderProgramFactory.createShaderProgram():[Program link Error]"

    .line 369
    .restart local v4    # "message":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    invoke-static {v9, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v9, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v9, v4}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    .end local v4    # "message":Ljava/lang/String;
    :cond_4
    return v6
.end method

.method public static createShaderProgramFromClientApplicationContext(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexShaderFileId"    # I
    .param p2, "fragmentShaderFileId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    new-array v0, v1, [I

    aput p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    return v0
.end method

.method public static createShaderProgramFromClientApplicationContext(Landroid/content/Context;[I[I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexShaderFileId"    # [I
    .param p2, "fragmentShaderFileId"    # [I

    .prologue
    .line 245
    invoke-static {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    return v0
.end method

.method public static createSimpleFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 109
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_simpleframe_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_simpleframe_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 118
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static createYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    new-array v1, v3, [I

    sget v2, Lcom/sonyericsson/cameracommon/R$raw;->opengl_yuv_frame_vertex:I

    aput v2, v1, v4

    new-array v2, v3, [I

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->opengl_yuv_frame_fragment:I

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result v0

    .line 72
    .local v0, "shaderProgram":I
    return v0
.end method

.method public static deleteShaderProgram(I)V
    .locals 2
    .param p0, "shaderProgram"    # I

    .prologue
    .line 402
    if-eqz p0, :cond_0

    .line 403
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 404
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->TAG:Ljava/lang/String;

    const-string v1, "deleteShaderProgram():[Delete Program Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    return-void
.end method
