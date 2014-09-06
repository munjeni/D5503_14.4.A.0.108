.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;
.super Landroid/opengl/GLSurfaceView;
.source "FeedbackContextView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mHandler:Landroid/os/Handler;

    .line 38
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 40
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 41
    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 42
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v1, 0xbe2

    .line 68
    const/16 v0, 0x4500

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 70
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 76
    :cond_0
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 77
    return-void
.end method

.method public onFeedbackEnd(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 55
    const/high16 v1, -0x40800000

    .line 56
    .local v1, "glOrthLeft":F
    const/high16 v2, 0x3f800000

    .line 57
    .local v2, "glOrthRight":F
    const/high16 v0, -0x40800000

    int-to-float v5, p3

    mul-float/2addr v0, v5

    int-to-float v5, p2

    div-float v3, v0, v5

    .line 58
    .local v3, "glOrthBottom":F
    const/high16 v0, 0x3f800000

    int-to-float v5, p3

    mul-float/2addr v0, v5

    int-to-float v5, p2

    div-float v4, v0, v5

    .line 60
    .local v4, "glOrthTop":F
    invoke-interface {p1, v6, v6, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 61
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 62
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 63
    const/high16 v5, 0x3f000000

    const/high16 v6, -0x41000000

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 64
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 48
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->setListener(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;)V

    .line 100
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    .line 102
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method public start(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory;->createAnimation(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;)Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->TAG:Ljava/lang/String;

    const-string v1, "mAnimationBase is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->setListener(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;->mAnimationBase:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->start()V

    .line 90
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method
