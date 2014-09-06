.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;
.super Ljava/lang/Object;
.source "FeedbackUtils.java"


# static fields
.field private static polygonVerticesPool:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static verticesPool:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->verticesPool:Ljava/util/Hashtable;

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->polygonVerticesPool:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accelerateInterpolator(FFF)F
    .locals 6
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "progress"    # F

    .prologue
    .line 106
    sub-float v0, p1, p0

    float-to-double v0, v0

    float-to-double v2, p2

    const-wide/high16 v4, 0x4000000000000000L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static decelerateInterpolator(FFF)F
    .locals 6
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "progress"    # F

    .prologue
    .line 102
    sub-float v0, p0, p1

    float-to-double v0, v0

    const/high16 v2, 0x3f800000

    sub-float/2addr v2, p2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static final drawCircle(Ljavax/microedition/khronos/opengles/GL10;FFIFFFFF)V
    .locals 14
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "divides"    # I
    .param p4, "radius"    # F
    .param p5, "r"    # F
    .param p6, "g"    # F
    .param p7, "b"    # F
    .param p8, "a"    # F

    .prologue
    .line 59
    mul-int/lit8 v11, p3, 0x3

    mul-int/lit8 v11, v11, 0x2

    invoke-static {v11}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->getVertices(I)[F

    move-result-object v10

    .line 61
    .local v10, "vertices":[F
    const/4 v8, 0x0

    .line 62
    .local v8, "vertexId":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v9, v8

    .end local v8    # "vertexId":I
    .local v9, "vertexId":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_0

    .line 63
    const/high16 v11, 0x40000000

    move/from16 v0, p3

    int-to-float v12, v0

    div-float/2addr v11, v12

    int-to-float v12, v4

    mul-float/2addr v11, v12

    const v12, 0x40490fdb

    mul-float v6, v11, v12

    .line 65
    .local v6, "theta1":F
    const/high16 v11, 0x40000000

    move/from16 v0, p3

    int-to-float v12, v0

    div-float/2addr v11, v12

    add-int/lit8 v12, v4, 0x1

    int-to-float v12, v12

    mul-float/2addr v11, v12

    const v12, 0x40490fdb

    mul-float v7, v11, v12

    .line 67
    .local v7, "theta2":F
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "vertexId":I
    .restart local v8    # "vertexId":I
    aput p1, v10, v9

    .line 68
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "vertexId":I
    .restart local v9    # "vertexId":I
    aput p2, v10, v8

    .line 70
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "vertexId":I
    .restart local v8    # "vertexId":I
    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    mul-float v11, v11, p4

    add-float/2addr v11, p1

    aput v11, v10, v9

    .line 71
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "vertexId":I
    .restart local v9    # "vertexId":I
    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    mul-float v11, v11, p4

    add-float v11, v11, p2

    aput v11, v10, v8

    .line 73
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "vertexId":I
    .restart local v8    # "vertexId":I
    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    mul-float v11, v11, p4

    add-float/2addr v11, p1

    aput v11, v10, v9

    .line 74
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "vertexId":I
    .restart local v9    # "vertexId":I
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    mul-float v11, v11, p4

    add-float v11, v11, p2

    aput v11, v10, v8

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v6    # "theta1":F
    .end local v7    # "theta2":F
    :cond_0
    invoke-static {v10}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->makeVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 78
    .local v5, "polygonVertices":Ljava/nio/FloatBuffer;
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 79
    const v11, 0x8076

    invoke-interface {p0, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 81
    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    invoke-interface {p0, v11, v12, v13, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 82
    const v11, 0x8074

    invoke-interface {p0, v11}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 84
    const/4 v11, 0x4

    const/4 v12, 0x0

    mul-int/lit8 v13, p3, 0x3

    invoke-interface {p0, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 85
    return-void
.end method

.method public static final drawTransparentCircle(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 9
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "radius"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000

    const/4 v1, 0x0

    .line 93
    invoke-interface {p0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 94
    const/16 v3, 0x40

    move-object v0, p0

    move v2, v1

    move v4, p1

    move v6, v5

    move v7, v5

    move v8, v1

    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->drawCircle(Ljavax/microedition/khronos/opengles/GL10;FFIFFFFF)V

    .line 95
    return-void
.end method

.method public static final drawWhiteCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 9
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "radius"    # F
    .param p2, "alpha"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000

    .line 88
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-interface {p0, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 89
    const/16 v3, 0x40

    move-object v0, p0

    move v2, v1

    move v4, p1

    move v6, v5

    move v7, v5

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->drawCircle(Ljavax/microedition/khronos/opengles/GL10;FFIFFFFF)V

    .line 90
    return-void
.end method

.method private static getVertices(I)[F
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 23
    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->verticesPool:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->verticesPool:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 28
    :goto_0
    return-object v1

    .line 26
    :cond_0
    new-array v0, p0, [F

    .line 27
    .local v0, "vertices":[F
    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->verticesPool:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 28
    goto :goto_0
.end method

.method public static linearInterpolator(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "progress"    # F

    .prologue
    .line 98
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "arr"    # [F

    .prologue
    .line 35
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 38
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 40
    return-object v1
.end method

.method private static final makeVerticesBuffer([F)Ljava/nio/FloatBuffer;
    .locals 4
    .param p0, "arr"    # [F

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "fb":Ljava/nio/FloatBuffer;
    sget-object v2, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->polygonVerticesPool:Ljava/util/Hashtable;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->polygonVerticesPool:Ljava/util/Hashtable;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fb":Ljava/nio/FloatBuffer;
    check-cast v0, Ljava/nio/FloatBuffer;

    .line 47
    .restart local v0    # "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 48
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object v1, v0

    .line 54
    .end local v0    # "fb":Ljava/nio/FloatBuffer;
    .local v1, "fb":Ljava/nio/FloatBuffer;
    :goto_0
    return-object v1

    .line 52
    .end local v1    # "fb":Ljava/nio/FloatBuffer;
    .restart local v0    # "fb":Ljava/nio/FloatBuffer;
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 53
    sget-object v2, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->polygonVerticesPool:Ljava/util/Hashtable;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 54
    .end local v0    # "fb":Ljava/nio/FloatBuffer;
    .restart local v1    # "fb":Ljava/nio/FloatBuffer;
    goto :goto_0
.end method
