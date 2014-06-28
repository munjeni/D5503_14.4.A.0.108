.class public Lcom/sonymobile/superstamina/xssm/IddHandler;
.super Ljava/lang/Object;
.source "IddHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/IddHandler$1;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-IddHandler"


# instance fields
.field private mCharging:Z

.field private mElapsedRealtimeAtState1:J

.field private mElapsedRealtimeAtState2:J

.field private mElapsedTimeOnScreenOff:J

.field private mThreshold:Z

.field private mUptimeAtState1:J

.field private mUptimeAtState2:J

.field private mWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    .line 33
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    .line 36
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    .line 39
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    .line 42
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    return-void
.end method

.method private logPowerStateChanged_0()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 130
    .local v1, "elapsedNow":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 131
    .local v3, "uptimeNow":J
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;

    move-result-object v0

    .line 133
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    .line 134
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_5

    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    iget-wide v7, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    sub-long/2addr v5, v7

    :goto_0
    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;->setTimeSpentInState1(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;

    .line 139
    :cond_0
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    .line 140
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    sub-long v5, v1, v5

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;->setTimeSpentInState2(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;

    .line 142
    :cond_1
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 143
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    iget-wide v7, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    sub-long/2addr v5, v7

    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;->setUptimeSpentInState1(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;

    .line 146
    :cond_2
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_3

    .line 147
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    sub-long v5, v3, v5

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;->setUptimeSpentInState2(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;

    .line 149
    :cond_3
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_4

    .line 150
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    sub-long v5, v1, v5

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;->setTimeSinceScreenOff(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;

    .line 153
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState0;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_2
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/IddHandler;->reset()V

    .line 166
    return-void

    .line 134
    :cond_5
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    sub-long v5, v1, v5

    goto :goto_0

    .line 143
    :cond_6
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    sub-long v5, v3, v5

    goto :goto_1

    .line 154
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private logPowerStateChanged_1()V
    .locals 5

    .prologue
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    .line 171
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    .line 173
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 174
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    iget-wide v3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->setTimeSinceScreenOff(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    .line 177
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private logPowerStateChanged_2()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    .line 194
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    .line 196
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 197
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    iget-wide v3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->setTimeSpentInState1(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    .line 199
    :cond_0
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    .line 200
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    iget-wide v3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->setUptimeSpentInState1(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    .line 202
    :cond_1
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    .line 203
    iget-wide v1, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    iget-wide v3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->setTimeSinceScreenOff(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    .line 206
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState1:J

    .line 53
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedRealtimeAtState2:J

    .line 54
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState1:J

    .line 55
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mUptimeAtState2:J

    .line 56
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    .line 57
    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mCharging:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mElapsedTimeOnScreenOff:J

    .line 87
    return-void

    .line 86
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onXssmConditionsChanged(ZZZZZ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "threshold"    # Z
    .param p3, "charging"    # Z
    .param p4, "wifi"    # Z
    .param p5, "bt"    # Z

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-boolean v3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mThreshold:Z

    if-ne v3, p2, :cond_2

    iget-boolean v3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mCharging:Z

    if-ne v3, p3, :cond_2

    iget-boolean v3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mWifi:Z

    if-eq v3, p4, :cond_0

    .line 101
    :cond_2
    iput-boolean p2, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mThreshold:Z

    .line 102
    iput-boolean p3, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mCharging:Z

    .line 103
    iput-boolean p4, p0, Lcom/sonymobile/superstamina/xssm/IddHandler;->mWifi:Z

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 106
    .local v1, "elapsedNow":J
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    .line 108
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    if-eqz p2, :cond_3

    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setThreshold(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 110
    if-eqz p3, :cond_4

    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    :goto_2
    invoke-virtual {v0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setCharging(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 112
    if-eqz p4, :cond_5

    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    :goto_3
    invoke-virtual {v0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setWifi(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 114
    if-eqz p5, :cond_6

    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    :goto_4
    invoke-virtual {v0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setBluetooth(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 117
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    goto :goto_0

    .line 108
    :cond_3
    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    goto :goto_1

    .line 110
    :cond_4
    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    goto :goto_2

    .line 112
    :cond_5
    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    goto :goto_3

    .line 114
    :cond_6
    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    goto :goto_4
.end method

.method public onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 2
    .param p1, "powerState"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    .line 60
    sget-object v0, Lcom/sonymobile/superstamina/xssm/IddHandler$1;->$SwitchMap$com$sonymobile$superstamina$xssm$PowerState:[I

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/xssm/PowerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/IddHandler;->logPowerStateChanged_0()V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/IddHandler;->logPowerStateChanged_1()V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/IddHandler;->logPowerStateChanged_2()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
