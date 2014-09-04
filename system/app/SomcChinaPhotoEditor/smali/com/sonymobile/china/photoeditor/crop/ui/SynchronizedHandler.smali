.class public Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"


# instance fields
.field private final mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V
    .locals 1
    .param p1, "root"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .line 30
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->lockRenderThread()V

    .line 36
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->unlockRenderThread()V

    .line 40
    return-void

    .line 38
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method
