.class Lcom/sonyericsson/conversations/util/ContactLookup$1;
.super Landroid/database/ContentObserver;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    .line 193
    iget-object v5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    # getter for: Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->access$000(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 194
    .local v1, "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->setDirty()V

    goto :goto_0

    .line 196
    .end local v1    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    const/4 v6, 0x1

    # setter for: Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedReQueryProfile:Z
    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/util/ContactLookup;->access$102(Lcom/sonyericsson/conversations/util/ContactLookup;Z)Z

    .line 198
    iget-object v5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    # getter for: Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->access$200(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 199
    .local v4, "pRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 200
    .local v0, "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->setDirty()V

    goto :goto_1

    .line 205
    .end local v0    # "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .end local v4    # "pRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    # getter for: Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->access$200(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 207
    iget-object v5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    # getter for: Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/List;
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->access$300(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 208
    .local v3, "listener":Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;
    invoke-interface {v3}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;->onContactLookupChanged()V

    goto :goto_2

    .line 210
    .end local v3    # "listener":Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;
    :cond_3
    return-void
.end method
