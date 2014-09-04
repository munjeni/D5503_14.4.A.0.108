.class public Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$1;,
        Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;,
        Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;,
        Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;,
        Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContextStub;,
        Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;,
        Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I


# instance fields
.field mCpuCounter:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field mNetworkCounter:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContextStub;-><init>(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$1;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->mCpuCounter:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .line 54
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->mNetworkCounter:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;

    .line 100
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;

    const-string v8, "thread-pool"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 103
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 285
    return-void
.end method

.method public submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "job":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/sonymobile/china/photoeditor/crop/util/FutureListener",
            "<TT;>;)",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "job":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;, "Lcom/sonymobile/china/photoeditor/crop/util/FutureListener<TT;>;"
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;-><init>(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)V

    .line 109
    .local v0, "w":Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker;, "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-object v0
.end method
