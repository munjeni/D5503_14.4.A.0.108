.class Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageCacheKey"
.end annotation


# instance fields
.field private mMessageId:J

.field private mMessageThread:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "messageId"    # J
    .param p3, "messageThread"    # J

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-wide p1, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageId:J

    .line 111
    iput-wide p3, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    .line 112
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 116
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    iget-wide v0, v0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageId:J

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    check-cast p1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v0, p1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    const-wide/16 v2, 0x1f

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageId:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
