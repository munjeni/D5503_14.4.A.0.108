.class public Lcom/android/phone/SomcAmPhoneAccessor;
.super Ljava/lang/Object;
.source "SomcAmPhoneAccessor.java"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 26
    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public getApplicationFilesDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallManager()Lcom/android/internal/telephony/CallManager;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method public getSomcCallRecorder()Lcom/android/phone/SomcCallRecorder;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    return-object v0
.end method

.method public hangupConnectionOfFgCall()V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/phone/SomcAmPhoneAccessor;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "PhoneApp"

    const-string v2, "hangupConnectionOfFgCall() is called when there isn\'t any foreground call."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
