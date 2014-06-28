.class public Lcom/sonyericsson/conversations/model/ConversationCache;
.super Ljava/lang/Object;
.source "ConversationCache.java"


# static fields
.field private static final CACHE_ITEM_COUNT:I = 0xc8

.field private static sConversationMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/conversations/model/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationCache;->sConversationMap:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationCache;->sConversationMap:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 47
    return-void
.end method

.method public static delete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v3, Lcom/sonyericsson/conversations/model/ConversationCache;->sConversationMap:Landroid/util/LruCache;

    monitor-enter v3

    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 66
    .local v1, "threadId":Ljava/lang/Long;
    invoke-static {v1}, Lcom/sonyericsson/conversations/model/ConversationCache;->delete(Ljava/lang/Long;)Z

    goto :goto_0

    .line 68
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "threadId":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    return-void
.end method

.method public static delete(Ljava/lang/Long;)Z
    .locals 1
    .param p0, "threadId"    # Ljava/lang/Long;

    .prologue
    .line 55
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationCache;->sConversationMap:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get(J)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 2
    .param p0, "threadId"    # J

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationCache;->sConversationMap:Landroid/util/LruCache;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Conversation;

    return-object v0
.end method

.method public static put(Lcom/sonyericsson/conversations/model/Conversation;)V
    .locals 3
    .param p0, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;

    .prologue
    .line 39
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationCache;->sConversationMap:Landroid/util/LruCache;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
