.class public Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;
.super Ljava/lang/Object;
.source "TelephonyManagerProxy.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;


# instance fields
.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentPhoneType()I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method
