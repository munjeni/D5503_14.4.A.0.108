.class Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/Future;
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/sonymobile/china/photoeditor/crop/util/Future",
        "<TT;>;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;"
    }
.end annotation


# instance fields
.field private mCancelListener:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/sonymobile/china/photoeditor/crop/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    .local p2, "job":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job<TT;>;"
    .local p3, "listener":Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;, "Lcom/sonymobile/china/photoeditor/crop/util/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->this$0:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mJob:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;

    .line 136
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mListener:Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;

    .line 137
    return-void
.end method

.method private acquireResource(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;)Z
    .locals 1
    .param p1, "counter"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .prologue
    .line 246
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    :goto_0
    monitor-enter p0

    .line 247
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mWaitOnResource:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .line 249
    const/4 v0, 0x0

    monitor-exit p0

    .line 272
    :goto_1
    return v0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mWaitOnResource:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-enter p1

    .line 255
    :try_start_1
    iget v0, p1, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 256
    iget v0, p1, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;->value:I

    .line 257
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    monitor-enter p0

    .line 269
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mWaitOnResource:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .line 270
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 272
    const/4 v0, 0x1

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 260
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 270
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 261
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 235
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->this$0:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->mCpuCounter:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .line 240
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->this$0:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->mNetworkCounter:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;)V
    .locals 1
    .param p1, "counter"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .prologue
    .line 276
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    monitor-enter p1

    .line 277
    :try_start_0
    iget v0, p1, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;->value:I

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 279
    monitor-exit p1

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 167
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsCancelled:Z

    .line 170
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mWaitOnResource:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mWaitOnResource:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mWaitOnResource:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mCancelListener:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mCancelListener:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 191
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0

    .line 199
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    const/4 v1, 0x1

    .line 141
    const/4 v0, 0x0

    .line 145
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->setMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mJob:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;

    invoke-interface {v1, p0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 156
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->setMode(I)Z

    .line 157
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsDone:Z

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mListener:Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mListener:Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;

    invoke-interface {v1, p0}, Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;->onFutureDone(Lcom/sonymobile/china/photoeditor/crop/util/Future;)V

    .line 163
    :cond_1
    return-void

    .line 160
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 148
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    .prologue
    .line 209
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mCancelListener:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    .line 210
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mCancelListener:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mCancelListener:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    const/4 v1, 0x0

    .line 217
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->modeToCounter(I)Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 218
    .local v0, "rc":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;
    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->releaseResource(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;)V

    .line 220
    :cond_0
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mMode:I

    .line 223
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->modeToCounter(I)Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_2

    .line 225
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->acquireResource(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    :goto_0
    return v1

    .line 228
    :cond_1
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->mMode:I

    .line 231
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 203
    .local p0, "this":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;->get()Ljava/lang/Object;

    .line 204
    return-void
.end method
