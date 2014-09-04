.class Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContextStub;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobContextStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContextStub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    .prologue
    .line 77
    return-void
.end method

.method public setMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
