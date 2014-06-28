.class public Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "UXVisualizerSurfaceView.java"


# static fields
.field private static final EGL_ALPHASIZE:I = 0x8

.field private static final EGL_BLUESIZE:I = 0x8

.field private static final EGL_DEPTHSIZE:I = 0x10

.field private static final EGL_GREENSIZE:I = 0x8

.field private static final EGL_REDSIZE:I = 0x8

.field private static final EGL_STENCILSIZE:I


# instance fields
.field mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private destroyRenderer()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$5;-><init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method


# virtual methods
.method public changeTheme(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 2
    .param p1, "theme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 55
    move-object v0, p1

    .line 56
    .local v0, "newTheme":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    new-instance v1, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$1;-><init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public getPlayState()Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    invoke-virtual {v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->getPlayState()Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    goto :goto_0
.end method

.method public handleTouchEvent(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 85
    move v0, p1

    .line 86
    .local v0, "newX":I
    move v1, p2

    .line 87
    .local v1, "newY":I
    new-instance v2, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;-><init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;II)V

    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->destroyRenderer()V

    .line 41
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 42
    return-void
.end method

.method public setPlayState(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;)V
    .locals 2
    .param p1, "playState"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .prologue
    .line 65
    move-object v0, p1

    .line 66
    .local v0, "newPlayState":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    new-instance v1, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$2;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$2;-><init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public setPlaybackPosition(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 75
    move-wide v0, p1

    .line 76
    .local v0, "newPosition":J
    new-instance v2, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$3;-><init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;J)V

    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public start(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 7
    .param p1, "theme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    const/16 v1, 0x8

    .line 45
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 47
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 50
    new-instance v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    invoke-direct {v0, p1}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;-><init>(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 52
    return-void
.end method
