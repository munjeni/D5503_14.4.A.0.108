.class public Lcom/android/phone/SipBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/phone/SipBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    sput-boolean v0, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipBroadcastReceiver;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SipBroadcastReceiver;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/SipBroadcastReceiver;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/SipBroadcastReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SipBroadcastReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SipBroadcastReceiver;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SipBroadcastReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SipBroadcastReceiver;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    sget-object v0, Lcom/android/phone/SipBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    return-void
.end method

.method private registerAllProfiles()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/SipBroadcastReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SipBroadcastReceiver$1;-><init>(Lcom/android/phone/SipBroadcastReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method private removeSipPhone(Ljava/lang/String;)V
    .locals 4
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 85
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 86
    check-cast v2, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 93
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    sget-boolean v2, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveSipPhone: failed:cannot find phone with uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private takeCall(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    .line 98
    .local v3, "phoneContext":Landroid/content/Context;
    :try_start_0
    invoke-static {v3}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/net/sip/SipManager;->takeAudioCall(Landroid/content/Intent;Landroid/net/sip/SipAudioCall$Listener;)Landroid/net/sip/SipAudioCall;

    move-result-object v4

    .line 100
    .local v4, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 101
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 102
    check-cast v2, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/sip/SipPhone;->canTake(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    sget-boolean v5, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeCall: SIP call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :cond_1
    :goto_0
    return-void

    .line 108
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :cond_2
    sget-boolean v5, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeCall: not taken, drop SIP call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/net/sip/SipException;
    const-string v5, "takeCall: error incoming SIP call"

    invoke-direct {p0, v5, v0}, Lcom/android/phone/SipBroadcastReceiver;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    sget-boolean v3, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIP VOIP not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v3, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v3, p1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/SipBroadcastReceiver;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 59
    const-string v3, "com.android.phone.SIP_INCOMING_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-direct {p0, p2}, Lcom/android/phone/SipBroadcastReceiver;->takeCall(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v3, "com.android.phone.SIP_ADD_PHONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    const-string v3, "android:localSipUri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "localSipUri":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    .line 64
    .local v2, "phone":Lcom/android/internal/telephony/sip/SipPhone;
    if-eqz v2, :cond_3

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 67
    :cond_3
    sget-boolean v3, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: add phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #phones="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v1    # "localSipUri":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/sip/SipPhone;
    :cond_4
    const-string v3, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    const-string v3, "android:localSipUri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "localSipUri":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/SipBroadcastReceiver;->removeSipPhone(Ljava/lang/String;)V

    .line 72
    sget-boolean v3, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: remove phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #phones="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    .end local v1    # "localSipUri":Ljava/lang/String;
    :cond_5
    const-string v3, "android.net.sip.SIP_SERVICE_UP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 75
    sget-boolean v3, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "onReceive: start auto registration"

    invoke-direct {p0, v3}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 76
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/SipBroadcastReceiver;->registerAllProfiles()V

    goto/16 :goto_0

    .line 78
    :cond_7
    sget-boolean v3, Lcom/android/phone/SipBroadcastReceiver;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action not processed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
