.class Lcom/android/phone/CallLogger;
.super Ljava/lang/Object;
.source "CallLogger.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallLog:Lcom/android/phone/CallLogAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/phone/CallLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CallLogger;->DBG:Z

    .line 42
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/CallLogger;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogAsync;)V
    .locals 0
    .param p1, "application"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "callLogAsync"    # Lcom/android/phone/CallLogAsync;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 49
    iput-object p2, p0, Lcom/android/phone/CallLogger;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 50
    return-void
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 150
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 154
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 152
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    if-nez v0, :cond_4

    .line 196
    const/4 v2, 0x0

    .line 208
    :goto_1
    return-object v2

    .line 182
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 201
    .local v1, "presentation":I
    iget-object v2, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 205
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_5
    sget-boolean v2, Lcom/android/phone/CallLogger;->VDBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLogNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    :cond_6
    move-object v2, v0

    .line 208
    goto :goto_1
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 223
    if-nez p2, :cond_2

    .line 224
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 230
    .local v0, "presentation":I
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 231
    :cond_1
    return v0

    .line 226
    .end local v0    # "presentation":I
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 227
    .restart local v0    # "presentation":I
    sget-boolean v1, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method


# virtual methods
.method public logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 15
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # J

    .prologue
    .line 113
    iget-object v3, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    .line 120
    .local v12, "isEmergencyNumber":Z
    iget-object v3, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 125
    .local v14, "okToLogEmergencyNumber":Z
    if-eqz v12, :cond_0

    if-eqz v14, :cond_3

    :cond_0
    const/4 v13, 0x1

    .line 127
    .local v13, "isOkToLogThisCall":Z
    :goto_0
    if-eqz v13, :cond_2

    .line 128
    sget-boolean v3, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v3, :cond_1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending Calllog entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 133
    :cond_1
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v3, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 135
    .local v2, "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    iget-object v3, p0, Lcom/android/phone/CallLogger;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 137
    .end local v2    # "args":Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_2
    return-void

    .line 125
    .end local v13    # "isOkToLogThisCall":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public logCall(Lcom/android/internal/telephony/Connection;I)V
    .locals 12
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callLogType"    # I

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 61
    .local v5, "date":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 62
    .local v7, "duration":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 64
    .local v11, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 65
    .local v1, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "logNumber":Ljava/lang/String;
    sget-boolean v0, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onDisconnect(): logNumber set to:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", number set to: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v3

    .line 79
    .local v3, "presentation":I
    invoke-static {v11}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11, v10}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    .line 83
    .local v9, "isOtaspNumber":Z
    :goto_0
    if-nez v9, :cond_1

    move-object v0, p0

    move v4, p2

    .line 84
    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 86
    :cond_1
    return-void

    .line 79
    .end local v9    # "isOtaspNumber":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public setAmContentValues(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 241
    .local v1, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "logNumber":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    .line 243
    .local v5, "presentation":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 245
    .local v2, "date":J
    iget-object v6, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    .line 247
    .local v0, "amManager":Lcom/android/phone/am/SomcAmManager;
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/phone/am/SomcAmManager;->setContentValues(Ljava/lang/String;IJ)V

    .line 248
    return-void
.end method
