.class public final Lcom/sonymobile/superstamina/powersaver/PowerSaver;
.super Ljava/lang/Object;
.source "PowerSaver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-PowerSaver"

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_PS_ACTIVATED:I = 0x2

.field private static final MSG_PS_RESTORE:I = 0x3


# instance fields
.field private mActivated:Z

.field private final mFeatures:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private final mService:Lcom/sonymobile/superstamina/XperiaPowerService;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 2
    .param p1, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mFeatures:Ljava/util/Vector;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SuperStamina-PowerSaver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mThread:Landroid/os/HandlerThread;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mHandler:Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method

.method private addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->isAvailableOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mFeatures:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 95
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 96
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 97
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 98
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 99
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 100
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 101
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 102
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/GammaFeature;

    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/powersaver/features/GammaFeature;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/XperiaPowerService;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 103
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 104
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/XReality;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/XReality;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 105
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/features/XLoud;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->addFeature(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;)V

    .line 107
    return-void
.end method


# virtual methods
.method public debug([Ljava/lang/String;)I
    .locals 10
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 204
    const-string v6, "powersaver"

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 205
    array-length v6, p1

    if-lt v6, v9, :cond_4

    .line 206
    const-string v6, "feature"

    aget-object v7, p1, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "found":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    iget-object v6, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mFeatures:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    .line 209
    .local v0, "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    move-object v1, v0

    .line 214
    .end local v0    # "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    :cond_1
    if-eqz v1, :cond_4

    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, "param":I
    array-length v6, p1

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 217
    aget-object v6, p1, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 219
    :cond_2
    const-string v6, "on"

    aget-object v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 220
    invoke-virtual {v1, v4, v3}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->setOverriden(ZI)V

    .line 231
    .end local v1    # "found":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "param":I
    :goto_0
    return v4

    .line 222
    .restart local v1    # "found":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "param":I
    :cond_3
    const-string v6, "off"

    aget-object v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 223
    invoke-virtual {v1, v5, v3}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->setOverriden(ZI)V

    goto :goto_0

    .line 229
    .end local v1    # "found":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "param":I
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Usage: powersaver feature <name> on|off (paramvalue)"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    move v4, v5

    .line 231
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 193
    const-string v2, "PowerSaver features:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mFeatures:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    .line 195
    .local v0, "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->dumpState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0    # "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/sonymobile/superstamina/XperiaPowerService;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 236
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 247
    :goto_0
    return v1

    .line 238
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->init()V

    goto :goto_0

    .line 241
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->onPowerSaverActivatedImpl(Z)V

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->restoreAllFeaturesImpl()V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPowerSaverActivated(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method onPowerSaverActivatedImpl(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .prologue
    .line 132
    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 133
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mActivated:Z

    if-ne v2, p1, :cond_1

    monitor-exit v3

    .line 139
    :cond_0
    return-void

    .line 134
    :cond_1
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mActivated:Z

    .line 135
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mFeatures:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    .line 137
    .local v0, "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onPowerSaverActivated(Z)V

    goto :goto_0

    .line 135
    .end local v0    # "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public restoreAllFeatures()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method restoreAllFeaturesImpl()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->mFeatures:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    .line 161
    .local v0, "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->restore()V

    goto :goto_0

    .line 163
    .end local v0    # "f":Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    :cond_0
    return-void
.end method
