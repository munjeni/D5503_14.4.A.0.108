.class public Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;
.super Ljava/lang/Object;
.source "PrioritizedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UIAsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    .line 615
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 616
    return-void
.end method
