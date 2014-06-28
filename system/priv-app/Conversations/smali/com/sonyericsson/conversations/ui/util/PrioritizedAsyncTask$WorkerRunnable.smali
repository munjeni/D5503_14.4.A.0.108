.class public abstract Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "PrioritizedAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 604
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
