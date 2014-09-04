.class Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
        "<",
        "Ljava/io/File;",
        ">;",
        "Lcom/sonymobile/china/photoeditor/crop/util/FutureListener",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mProxySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;Ljava/lang/String;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    .line 361
    invoke-static {p2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    .line 362
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;Lcom/sonymobile/china/photoeditor/crop/util/Future;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mFuture:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    return-object p1
.end method


# virtual methods
.method public addProxy(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    .prologue
    .line 376
    # setter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->mTask:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    invoke-static {p1, p0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->access$402(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;

    .line 377
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public onFutureDone(Lcom/sonymobile/china/photoeditor/crop/util/Future;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "future":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Ljava/io/File;>;"
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 382
    .local v2, "file":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 383
    .local v4, "id":J
    if-eqz v2, :cond_0

    .line 384
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J
    invoke-static {v7, v8, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$500(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v4

    .line 387
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 406
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$300(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;
    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$600(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    if-eqz v2, :cond_2

    .line 396
    :try_start_1
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    invoke-direct {v1, v7, v4, v5, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 397
    .end local v0    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .local v1, "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;
    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$600(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    move-result-object v7

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v10, v1}, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .line 399
    .end local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .restart local v0    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    :try_start_4
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    .line 401
    .local v6, "proxy":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
    invoke-virtual {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->setResult(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;)V

    goto :goto_1

    .line 405
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "proxy":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 399
    :catchall_1
    move-exception v7

    :goto_2
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 403
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$300(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    const/16 v9, 0x10

    # invokes: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->freeSomeSpaceIfNeed(I)V
    invoke-static {v7, v9}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$700(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;I)V

    .line 405
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 399
    .end local v0    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .restart local v0    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    goto :goto_2
.end method

.method public removeProxy(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)V
    .locals 3
    .param p1, "proxy"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$300(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 367
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mFuture:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->cancel()V

    .line 369
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$300(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_0
    monitor-exit v1

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/io/File;
    .locals 7
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 410
    invoke-interface {p1, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z

    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "tempFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, "url":Ljava/net/URL;
    const-string v3, "cache"

    const-string v4, ".tmp"

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v5}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$100(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 416
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z

    .line 417
    invoke-static {p1, v2, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils;->requestDownload(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z

    move-result v0

    .line 418
    .local v0, "downloaded":Z
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {p1, v6}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z

    move-object v3, v1

    .line 436
    .end local v0    # "downloaded":Z
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 426
    .restart local v0    # "downloaded":Z
    .restart local v2    # "url":Ljava/net/URL;
    :cond_0
    invoke-interface {p1, v6}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z

    .line 428
    .end local v0    # "downloaded":Z
    .end local v2    # "url":Ljava/net/URL;
    :goto_1
    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v3

    .line 426
    invoke-interface {p1, v6}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {p1, v6}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z

    throw v3
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
