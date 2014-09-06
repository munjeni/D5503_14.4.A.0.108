.class Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundRenderingThread"
.end annotation


# instance fields
.field private mLocalHeight:I

.field private mLocalWidth:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 532
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 533
    iput v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    .line 534
    iput v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 542
    const-string v2, "GL-RenderingThread"

    invoke-virtual {p0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 548
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceCreated()V

    .line 549
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 552
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$500(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$700(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 557
    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$900(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v4

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1000(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$900(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    .line 559
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1000(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    .line 562
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    move-result-object v2

    iget v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    iget v5, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    invoke-interface {v2, v4, v5}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 566
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1100(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 567
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1200(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;->onDrawFrame()V

    .line 568
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z
    invoke-static {v2, v4}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1102(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Z)Z

    .line 571
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 572
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 574
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onDrawFrameFinished()Z

    .line 580
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 583
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 584
    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_5

    .line 585
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 588
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 591
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1100(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$500(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 597
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_7
    :goto_1
    :try_start_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 609
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 610
    :try_start_4
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 611
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->clearAll()V

    .line 612
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onDrawFrameFinished()Z

    .line 613
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 614
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 618
    const-wide/16 v2, 0x64

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 619
    :catch_1
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 629
    :cond_9
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 630
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 631
    :try_start_7
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 632
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceDestroyed()V

    .line 633
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 634
    monitor-exit v3

    .line 640
    :cond_a
    return-void

    .line 634
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2
.end method
