.class public Lcom/android/phone/CallTimeStamp;
.super Landroid/os/Handler;
.source "CallTimeStamp.java"


# instance fields
.field private mBgCallState:Lcom/android/internal/telephony/Call$State;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mFgCallState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 1
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallTimeStamp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/CallTimeStamp;->mFgCallState:Lcom/android/internal/telephony/Call$State;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/CallTimeStamp;->mBgCallState:Lcom/android/internal/telephony/Call$State;

    .line 70
    return-void
.end method

.method private handleDisconnected(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 151
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 152
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 154
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "num":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm:ss.SSS"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 160
    .local v1, "d":Ljava/util/Date;
    const-string v5, "CallTimeStamp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call to number ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] was ended at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    .end local v4    # "num":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallTimeStamp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallTimeStamp;->mFgCallState:Lcom/android/internal/telephony/Call$State;

    .line 164
    return-void
.end method

.method private handleOffHock(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 94
    iget-object v9, p0, Lcom/android/phone/CallTimeStamp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 95
    .local v4, "fgCall":Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/CallTimeStamp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 96
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 97
    .local v7, "newFgCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 100
    .local v6, "newBgCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v9, p0, Lcom/android/phone/CallTimeStamp;->mFgCallState:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v7, :cond_1

    .line 103
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v7, :cond_0

    .line 106
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 107
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 110
    .local v5, "info":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "num":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm:ss.SSS"

    invoke-direct {v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, "df":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 117
    .local v2, "d":Ljava/util/Date;
    const-string v9, "CallTimeStamp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Call to number ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] was activated at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "d":Ljava/util/Date;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .end local v5    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v8    # "num":Ljava/lang/String;
    :cond_0
    iput-object v7, p0, Lcom/android/phone/CallTimeStamp;->mFgCallState:Lcom/android/internal/telephony/Call$State;

    .line 125
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CallTimeStamp;->mBgCallState:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v6, :cond_3

    .line 128
    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v6, :cond_2

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 132
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 135
    .restart local v5    # "info":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v5, :cond_2

    .line 136
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .restart local v8    # "num":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm:ss.SSS"

    invoke-direct {v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 142
    .restart local v2    # "d":Ljava/util/Date;
    const-string v9, "CallTimeStamp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Call to number ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] was put on hold at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "d":Ljava/util/Date;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .end local v5    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v8    # "num":Ljava/lang/String;
    :cond_2
    iput-object v6, p0, Lcom/android/phone/CallTimeStamp;->mBgCallState:Lcom/android/internal/telephony/Call$State;

    .line 148
    :cond_3
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/phone/CallTimeStamp;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/phone/CallTimeStamp;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v1, p0, Lcom/android/phone/CallTimeStamp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallTimeStamp;->handleOffHock(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallTimeStamp;->handleDisconnected(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
