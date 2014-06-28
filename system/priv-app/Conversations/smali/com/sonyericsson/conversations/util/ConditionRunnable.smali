.class public abstract Lcom/sonyericsson/conversations/util/ConditionRunnable;
.super Ljava/lang/Object;
.source "ConditionRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/locks/Condition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/locks/Condition;"
    }
.end annotation


# instance fields
.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Object;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/Lock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Lock;",
            "TK;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mKey:Ljava/lang/Object;

    .line 29
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 30
    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 48
    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "l"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public awaitNanos(J)J
    .locals 2
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public awaitUninterruptibly()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 53
    return-void
.end method

.method public awaitUntil(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public signal()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 73
    return-void
.end method

.method public signalAll()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ConditionRunnable;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 43
    return-void
.end method
