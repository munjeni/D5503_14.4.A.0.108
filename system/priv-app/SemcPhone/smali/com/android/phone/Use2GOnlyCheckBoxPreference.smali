.class public Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;,
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 47
    new-instance v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 48
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getDefaultNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getDefaultNetworkMode()I
    .locals 4

    .prologue
    .line 53
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "mode":I
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultNetworkMode: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v0
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    .line 63
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 64
    .local v0, "networkType":I
    :goto_0
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 69
    return-void

    .line 63
    .end local v0    # "networkType":I
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getDefaultNetworkMode()I

    move-result v0

    goto :goto_0
.end method
