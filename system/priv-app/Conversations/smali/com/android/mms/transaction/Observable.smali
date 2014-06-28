.class public abstract Lcom/android/mms/transaction/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field private mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/transaction/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/mms/transaction/Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/mms/transaction/Observer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public detach(Lcom/android/mms/transaction/Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/mms/transaction/Observer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract getState()Lcom/android/mms/transaction/TransactionState;
.end method

.method public notifyObservers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    .line 71
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Observer;

    invoke-interface {v0, p0}, Lcom/android/mms/transaction/Observer;->update(Lcom/android/mms/transaction/Observable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    throw v0

    :cond_0
    iput-object v1, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    .line 77
    return-void
.end method

.method public notifySpecificObserver(Lcom/android/mms/transaction/Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/mms/transaction/Observer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p1, p0}, Lcom/android/mms/transaction/Observer;->update(Lcom/android/mms/transaction/Observable;)V

    .line 86
    :cond_0
    return-void
.end method
