.class public Lcom/sonyericsson/conversations/ui/SharedPileDataPool;
.super Ljava/lang/Object;
.source "SharedPileDataPool.java"


# static fields
.field public static final MASTER_PILE_VIEW_INTENT_EXTRA:Ljava/lang/String; = "master_pile_view"

.field public static final MESSAGE_CONTENT_ADAPTER_INTENT_EXTRA:Ljava/lang/String; = "message_content_adapter"

.field public static final NO_KEY:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "SharedPileDataPool"

.field private static sContentAdapterPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/conversations/ui/MessageContentAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sMasterPileViewPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/conversations/ui/PileView;",
            ">;"
        }
    .end annotation
.end field

.field private static sPoolKey:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sContentAdapterPool:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sMasterPileViewPool:Ljava/util/HashMap;

    .line 45
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sPoolKey:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMasterPileViewToPool(Lcom/sonyericsson/conversations/ui/PileView;)J
    .locals 4
    .param p0, "view"    # Lcom/sonyericsson/conversations/ui/PileView;

    .prologue
    .line 103
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->generateKey()J

    move-result-wide v0

    .line 104
    .local v0, "key":J
    sget-object v2, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sMasterPileViewPool:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-wide v0
.end method

.method public static addMessageContentAdapterToPool(Lcom/sonyericsson/conversations/ui/MessageContentAdapter;)J
    .locals 4
    .param p0, "adapter"    # Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    .prologue
    .line 59
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->generateKey()J

    move-result-wide v0

    .line 60
    .local v0, "key":J
    sget-object v2, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sContentAdapterPool:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-wide v0
.end method

.method private static declared-synchronized generateKey()J
    .locals 6

    .prologue
    .line 140
    const-class v1, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sPoolKey:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sPoolKey:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMasterPileView(J)Lcom/sonyericsson/conversations/ui/PileView;
    .locals 4
    .param p0, "key"    # J

    .prologue
    .line 128
    sget-object v1, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sMasterPileViewPool:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/PileView;

    .line 129
    .local v0, "pileView":Lcom/sonyericsson/conversations/ui/PileView;
    if-nez v0, :cond_0

    .line 130
    const-string v1, "SharedPileDataPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No PileView found with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-object v0
.end method

.method public static getMessageContentAdapter(J)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    .locals 4
    .param p0, "key"    # J

    .prologue
    .line 84
    sget-object v1, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sContentAdapterPool:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    .line 85
    .local v0, "adapter":Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    if-nez v0, :cond_0

    .line 86
    const-string v1, "SharedPileDataPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No adapter found with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-object v0
.end method

.method public static removeMasterPileViewFromPool(J)V
    .locals 3
    .param p0, "key"    # J

    .prologue
    .line 115
    sget-object v0, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sMasterPileViewPool:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "SharedPileDataPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMasterPileViewFromPool called with invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public static removeMessageContentAdapterFromPool(J)V
    .locals 3
    .param p0, "key"    # J

    .prologue
    .line 71
    sget-object v0, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->sContentAdapterPool:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "SharedPileDataPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMessageContentAdapterFromPool called with invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method
