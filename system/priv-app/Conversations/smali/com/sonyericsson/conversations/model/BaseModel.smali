.class public Lcom/sonyericsson/conversations/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    }
.end annotation


# instance fields
.field private mListenerList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    return-void
.end method

.method private checkRunningThread()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current thread is not UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/BaseModel;->checkRunningThread()V

    .line 21
    if-nez p1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/BaseModel;->checkRunningThread()V

    .line 40
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .line 41
    .local v1, "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    .end local v1    # "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/BaseModel;->checkRunningThread()V

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/BaseModel;->mListenerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
