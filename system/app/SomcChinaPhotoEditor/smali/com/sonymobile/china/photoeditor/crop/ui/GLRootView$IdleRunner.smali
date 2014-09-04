.class Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)V
    .locals 1

    .prologue
    .line 397
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;
    .param p2, "x1"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$1;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->mActive:Z

    .line 430
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 405
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->mActive:Z

    .line 406
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$200(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    monitor-exit v2

    .line 423
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    monitor-exit v2

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 410
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;

    .line 411
    .local v0, "listener":Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$300(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mCanvas:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$400(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$300(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$300(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 419
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 420
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->enable()V

    .line 422
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 417
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView$IdleRunner;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->access$300(Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
