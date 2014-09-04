.class public Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$1;,
        Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TARGET_FRAME_TIME:I = 0x10


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipRetryCount:I

.field private mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mEglConfigChooser:Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCount:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCountingStart:J

    .line 63
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mInvalidateColor:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    .line 81
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderRequested:Z

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    .line 85
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRetryCount:I

    .line 87
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mEglConfigChooser:Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    .line 93
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleRunner:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mInDownState:Z

    .line 109
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    .line 110
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mEglConfigChooser:Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 112
    invoke-virtual {p0, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    return-object v0
.end method

.method private layoutContentPane()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    .line 209
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->getWidth()I

    move-result v1

    .line 210
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->getHeight()I

    move-result v0

    .line 214
    .local v0, "height":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->layout(IIII)V

    .line 219
    :cond_0
    return-void
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 310
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->deleteRecycledResources()V

    .line 313
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->resetUploadLimit()V

    .line 315
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderRequested:Z

    .line 317
    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->layoutContentPane()V

    .line 323
    :cond_0
    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRetryCount:I

    if-lez v5, :cond_1

    .line 324
    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRetryCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRetryCount:I

    .line 325
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    .line 326
    .local v0, "clip":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-interface {p1, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 329
    .end local v0    # "clip":Landroid/graphics/Rect;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setCurrentAnimationTimeMillis(J)V

    .line 330
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v5, :cond_2

    .line 331
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    invoke-virtual {v5, v6}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->render(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 334
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 336
    .local v3, "now":J
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 337
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    invoke-virtual {v5, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;->setStartTime(J)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 342
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "now":J
    :cond_4
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->requestRender()V

    .line 346
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    monitor-enter v6

    .line 347
    :try_start_0
    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderRequested:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 348
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleRunner:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->enable()V

    .line 350
    :cond_6
    monitor-exit v6

    .line 360
    return-void

    .line 350
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private outputFps()V
    .locals 6

    .prologue
    .line 272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 273
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 274
    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCountingStart:J

    .line 283
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCount:I

    .line 284
    return-void

    .line 275
    :cond_1
    iget-wide v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCountingStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 280
    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCountingStart:J

    .line 281
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFrameCount:I

    goto :goto_0
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleRunner:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->enable()V

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 365
    .local v0, "action":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_4

    .line 366
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mInDownState:Z

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 375
    .local v1, "handled":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 376
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v1    # "handled":Z
    :goto_0
    return v1

    .line 367
    :cond_4
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getCanvas()Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    return-object v0
.end method

.method public getContentPane()Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 387
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getEGLConfigChooser()Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mEglConfigChooser:Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;

    return-object v0
.end method

.method public hasStencil()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->getEGLConfigChooser()Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->getStencilBits()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 437
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v8, 0x0

    .line 288
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 290
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 296
    .local v0, "end":J
    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mLastDrawFinishTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 297
    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mLastDrawFinishTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    .line 298
    .local v2, "wait":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 299
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 302
    .end local v2    # "wait":J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mLastDrawFinishTime:J

    .line 303
    return-void

    .line 292
    .end local v0    # "end":J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->requestLayoutContentPane()V

    .line 225
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 260
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 261
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 262
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 263
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 265
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    invoke-virtual {v1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setSize(II)V

    .line 267
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    const/4 v1, 0x2

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mClipRetryCount:I

    .line 269
    return-void

    :cond_0
    move v1, v2

    .line 263
    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 233
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 240
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 241
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    invoke-direct {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->setRenderMode(I)V

    .line 247
    return-void
.end method

.method public registerLaunchedAnimation(Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    :goto_0
    return-void

    .line 197
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 200
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mFlags:I

    .line 201
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderRequested:Z

    .line 184
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public setContentPane(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V
    .locals 9
    .param p1, "content"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 147
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v2, :cond_3

    .line 150
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 152
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 154
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 156
    iput-boolean v7, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mInDownState:Z

    .line 158
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->detachFromRoot()V

    .line 159
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->yieldAllTextures()V

    .line 161
    :cond_3
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mContentView:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->attachToRoot(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 442
    return-void
.end method
