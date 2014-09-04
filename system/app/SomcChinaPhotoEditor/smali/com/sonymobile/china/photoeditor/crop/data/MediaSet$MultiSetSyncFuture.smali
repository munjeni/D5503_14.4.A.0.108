.class Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;
.implements Lcom/sonymobile/china/photoeditor/crop/util/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSetSyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/Future",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;"
    }
.end annotation


# instance fields
.field private final mFutures:[Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private final mListener:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;

.field private mPendingCount:I

.field private mResult:I

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;)V
    .locals 4
    .param p2, "sets"    # [Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .param p3, "listener"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 280
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 286
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;

    .line 287
    array-length v2, p2

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 288
    array-length v2, p2

    new-array v2, v2, [Lcom/sonymobile/china/photoeditor/crop/util/Future;

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 290
    monitor-enter p0

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    array-length v1, p2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 292
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/sonymobile/china/photoeditor/crop/util/Future;

    aget-object v3, p2, v0

    invoke-virtual {v3, p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->requestSync(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v3

    aput-object v3, v2, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    monitor-exit p0

    .line 299
    return-void

    .line 298
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 310
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 306
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/util/Future;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 307
    .local v1, "future":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->cancel()V

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 308
    .end local v1    # "future":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Ljava/lang/Integer;>;"
    :cond_2
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mResult:I

    if-gez v4, :cond_0

    .line 309
    const/4 v4, 0x1

    iput v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    .end local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->waitDone()V

    .line 325
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncDone(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;I)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .param p2, "resultCode"    # I

    .prologue
    const/4 v1, 0x2

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "listener":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;
    monitor-enter p0

    .line 345
    if-ne p2, v1, :cond_0

    .line 346
    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 347
    :cond_0
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 348
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    if-nez v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    if-eqz v0, :cond_2

    .line 359
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;->onSyncDone(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;I)V

    .line 360
    :cond_2
    return-void

    .line 357
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized waitDone()V
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 338
    :cond_0
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
