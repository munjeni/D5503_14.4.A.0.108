.class public Lcom/sonyericsson/conversations/test/MonkeyUtils;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# static fields
.field private static final mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyConversation(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "c":Lcom/sonyericsson/conversations/model/Conversation;
    invoke-static {p0}, Lcom/sonyericsson/conversations/test/MonkeyUtils;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "myMsisdn":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 50
    .end local v2    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    return-object v0
.end method

.method public static getMyNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "msisdn":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 62
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
