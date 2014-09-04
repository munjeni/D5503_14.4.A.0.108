.class public Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mResultSet:Z

.field private mTask:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    .line 447
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mResultSet:Z

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mTask:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mTask:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;

    return-object p1
.end method

.method static synthetic access$802(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized get(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .locals 1
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mResultSet:Z

    if-nez v0, :cond_1

    .line 459
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy$1;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 468
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mResultSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 470
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    goto :goto_0

    .line 477
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setResult(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    monitor-exit p0

    return-void

    .line 452
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mResultSet:Z

    .line 454
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
