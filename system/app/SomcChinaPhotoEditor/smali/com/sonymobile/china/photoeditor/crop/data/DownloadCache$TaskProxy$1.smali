.class Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->get(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mTask:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->access$400(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->removeProxy(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)V

    .line 462
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->access$802(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;Z)Z

    .line 464
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 465
    monitor-exit v1

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
