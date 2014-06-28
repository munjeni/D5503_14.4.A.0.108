.class public Lcom/sonyericsson/conversations/model/SimMessage;
.super Lcom/sonyericsson/conversations/model/Message;
.source "SimMessage.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/Message;->mUri:Landroid/net/Uri;

    .line 31
    return-void
.end method


# virtual methods
.method public getKey()J
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRawPriority()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setRawPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 56
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 36
    return-void
.end method
