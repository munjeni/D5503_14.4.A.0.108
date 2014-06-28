.class public Lcom/sonyericsson/conversations/memory/LowMemoryManager;
.super Ljava/lang/Object;
.source "LowMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/memory/LowMemoryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->mListeners:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public notifyOnTrimMemoryListeners(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 64
    iget-object v2, p0, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/memory/LowMemoryListener;

    .line 65
    .local v1, "listener":Lcom/sonyericsson/conversations/memory/LowMemoryListener;
    invoke-static {p1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->convert(I)Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/memory/LowMemoryListener;->onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V

    goto :goto_0

    .line 67
    .end local v1    # "listener":Lcom/sonyericsson/conversations/memory/LowMemoryListener;
    :cond_0
    return-void
.end method

.method public register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/memory/LowMemoryListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    return-void
.end method

.method public unregister(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/memory/LowMemoryListener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->mListeners:Ljava/util/List;

    .line 76
    return-void
.end method
