.class public Lcom/android/phone/am/SomcAmManager;
.super Ljava/lang/Object;
.source "SomcAmManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/am/SomcAmManager$AmAvailability;,
        Lcom/android/phone/am/SomcAmManager$AmStatus;
    }
.end annotation


# static fields
.field private static sAmManagerInstance:Lcom/android/phone/am/SomcAmManager;


# instance fields
.field private mAmAnswerCallByDeviceSelf:Z

.field private mAmConnection:Lcom/android/internal/telephony/Connection;

.field private mAmHangupCallByDeviceSelf:Z

.field private mAmRecordEndByPickupCall:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mGreetingDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/phone/CallView$CallViewActionListener;

.field private mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

.field private mPlayStartTime:J

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRecordStartTime:J

.field private mRecorder:Lcom/android/phone/SomcCallRecorder;

.field private mState:Lcom/android/phone/am/SomcAmManager$AmStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/am/SomcAmManager;->sAmManagerInstance:Lcom/android/phone/am/SomcAmManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    .line 108
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

    iput-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    .line 109
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 110
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    .line 111
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 112
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 115
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 116
    iput-wide v3, p0, Lcom/android/phone/am/SomcAmManager;->mPlayStartTime:J

    .line 117
    iput-wide v3, p0, Lcom/android/phone/am/SomcAmManager;->mRecordStartTime:J

    .line 118
    iput-boolean v2, p0, Lcom/android/phone/am/SomcAmManager;->mAmHangupCallByDeviceSelf:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/phone/am/SomcAmManager;->mAmRecordEndByPickupCall:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/phone/am/SomcAmManager;->mAmAnswerCallByDeviceSelf:Z

    .line 122
    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mAmConnection:Lcom/android/internal/telephony/Connection;

    .line 123
    iput-wide v3, p0, Lcom/android/phone/am/SomcAmManager;->mGreetingDuration:J

    .line 126
    iput-object p1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-direct {v0, p1}, Lcom/android/phone/SomcAmPhoneAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    .line 128
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {v0}, Lcom/android/phone/SomcAmPhoneAccessor;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 129
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {v0}, Lcom/android/phone/SomcAmPhoneAccessor;->getSomcCallRecorder()Lcom/android/phone/SomcCallRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    .line 130
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/am/SomcAmManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculateMessageTime(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 326
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 327
    .local v2, "player":Landroid/media/MediaPlayer;
    const/4 v1, 0x0

    .line 329
    .local v1, "messageTimeMilis":I
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 331
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 335
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 336
    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AnsweringMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with Media Player"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkEnoughStorage()Z
    .locals 5

    .prologue
    .line 675
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 676
    .local v0, "statfs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private disconnectAm()V
    .locals 4

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->stopAm()V

    .line 292
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v3, Lcom/android/phone/am/SomcAmManager$AmStatus;->SAVE_RECORD_DATA:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/am/SomcAmManager;->mAmRecordEndByPickupCall:Z

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->insertMessageToDb()Z

    move-result v1

    .line 294
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    .line 295
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AnsweringMachine"

    const-string v3, "Inserted new message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v1    # "ret":Z
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->resetAllFlags()V

    .line 304
    return-void

    .line 297
    .restart local v1    # "ret":Z
    :cond_2
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AnsweringMachine"

    const-string v3, "Invalid message, not insert"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_3
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    .line 299
    .local v0, "notificationMgr":Lcom/android/phone/NotificationMgr;
    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelAnsweringMachine()V

    .line 300
    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->startQueryForAmNotification()V

    goto :goto_0
.end method

.method private getAutoAnswerTimerSec()I
    .locals 4

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_am_activation_sec"

    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-class v1, Lcom/android/phone/am/SomcAmManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/am/SomcAmManager;->sAmManagerInstance:Lcom/android/phone/am/SomcAmManager;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/phone/am/SomcAmManager;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager;->sAmManagerInstance:Lcom/android/phone/am/SomcAmManager;

    .line 143
    :cond_0
    sget-object v0, Lcom/android/phone/am/SomcAmManager;->sAmManagerInstance:Lcom/android/phone/am/SomcAmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertMessageToDb()Z
    .locals 7

    .prologue
    .line 307
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/am/SomcAmContentHelper;->getSomcAmContentHelperInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmContentHelper;

    move-result-object v0

    .line 309
    .local v0, "contentHelper":Lcom/android/phone/am/SomcAmContentHelper;
    const/4 v3, 0x0

    .line 310
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v4}, Lcom/android/phone/SomcCallRecorder;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "filePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmContentHelper;->isReadyToInsert()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 312
    invoke-direct {p0, v2}, Lcom/android/phone/am/SomcAmManager;->calculateMessageTime(Ljava/lang/String;)I

    move-result v1

    .line 313
    .local v1, "duration":I
    if-lez v1, :cond_1

    .line 314
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    int-to-long v5, v1

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/phone/am/SomcAmContentHelper;->insert(Landroid/content/Context;Ljava/lang/String;J)V

    .line 315
    const/4 v3, 0x1

    .line 320
    :goto_0
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v4}, Lcom/android/phone/SomcCallRecorder;->clearFilePath()V

    .line 322
    .end local v1    # "duration":I
    :cond_0
    return v3

    .line 317
    .restart local v1    # "duration":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->deleteUnnecessaryFile()V

    .line 318
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isAmEnable()Z
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_am_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRoamingAndNotUseWhileRoaming()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 834
    iget-object v3, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 836
    .local v0, "telMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    iget-object v3, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_am_use_while_roaming"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 839
    .local v1, "useWhileRoaming":Z
    if-nez v1, :cond_0

    .line 840
    const/4 v2, 0x1

    .line 843
    .end local v1    # "useWhileRoaming":Z
    :cond_0
    return v2
.end method

.method private declared-synchronized playBeepSound()V
    .locals 4

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0xa

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 638
    .local v1, "toneGenerator":Landroid/media/ToneGenerator;
    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    const-wide/16 v2, 0x4b0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 644
    :try_start_2
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 645
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    :goto_0
    monitor-exit p0

    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1099

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 644
    :try_start_4
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 645
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 636
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "toneGenerator":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 644
    .restart local v1    # "toneGenerator":Landroid/media/ToneGenerator;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 645
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private playMessage()V
    .locals 8

    .prologue
    const/16 v7, 0x1099

    .line 156
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1003

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "key_am_greetings"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 159
    .local v3, "selectedGreeting":I
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    const-string v4, "AnsweringMachine"

    const-string v5, "SomcAmGreetingDbAdapter open() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getSelectedGreetingFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "messagePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 169
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 170
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_3

    .line 171
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "AnsweringMachine"

    const-string v5, "Failed to create MediaPlayer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 177
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/phone/am/SomcAmManager$1;

    invoke-direct {v5, p0}, Lcom/android/phone/am/SomcAmManager$1;-><init>(Lcom/android/phone/am/SomcAmManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 197
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/phone/am/SomcAmManager$2;

    invoke-direct {v5, p0}, Lcom/android/phone/am/SomcAmManager$2;-><init>(Lcom/android/phone/am/SomcAmManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 204
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayStartTime:J

    .line 206
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/phone/am/SomcAmManager;->mGreetingDuration:J

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "AnsweringMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with Media Player"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_4
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "AnsweringMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with Media Player"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_5
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "AnsweringMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with Media Player"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    iget-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private recordMessage()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {v2}, Lcom/android/phone/SomcAmPhoneAccessor;->getApplicationFilesDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/am/caller_msg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcCallRecorder;->setSaveDirectory(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    new-instance v1, Lcom/android/phone/am/SomcAmManager$3;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmManager$3;-><init>(Lcom/android/phone/am/SomcAmManager;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcCallRecorder;->setEventListener(Lcom/android/phone/SomcCallRecorder$EventListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    sget-object v1, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_DOWNLINK:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcCallRecorder;->setRecordingMode(Lcom/android/phone/SomcCallRecorder$RecordingMode;)V

    .line 237
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->start()V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecordStartTime:J

    .line 239
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    const-wide/32 v2, 0xec54

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1099

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private resetAllFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 657
    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmHangupCallByDeviceSelf:Z

    .line 658
    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmRecordEndByPickupCall:Z

    .line 659
    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmAnswerCallByDeviceSelf:Z

    .line 660
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->getAutoAnswerTimerSec()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    return-void
.end method

.method private stopAllTimers()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    return-void
.end method

.method private stopAm()V
    .locals 3

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->stopAllTimers()V

    .line 248
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 249
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v1, v2, :cond_3

    .line 250
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v1}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v1}, Lcom/android/phone/SomcCallRecorder;->stop()V

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->playBeepSound()V

    .line 258
    :cond_1
    const-string v1, "AllRxMute=OFF;AllTxMute=OFF"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 259
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/am/SomcAmManager;->mRecordStartTime:J

    .line 260
    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->SAVE_RECORD_DATA:Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {p0, v1}, Lcom/android/phone/am/SomcAmManager;->setAmState(Lcom/android/phone/am/SomcAmManager$AmStatus;)V

    .line 264
    :cond_2
    :goto_0
    return-void

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v1, v2, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->stopGreeting()V

    goto :goto_0
.end method

.method private stopAmBySelf()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->stopAm()V

    .line 288
    return-void
.end method


# virtual methods
.method public activateAmByUser()V
    .locals 3

    .prologue
    const/16 v2, 0x1001

    .line 824
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->WAIT_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v0, v1, :cond_1

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 829
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 831
    :cond_1
    return-void
.end method

.method public clearAmNotification()V
    .locals 3

    .prologue
    .line 744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.intent.ACTION_CLEAR_AM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/am/ClearAmNotificationService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 746
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 747
    return-void
.end method

.method public deleteUnnecessaryFile()V
    .locals 11

    .prologue
    .line 695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/am/caller_msg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v3, "incomingMessageDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 711
    :cond_0
    return-void

    .line 700
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 701
    .local v4, "incomingMessageFiles":[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v8, v4

    if-lez v8, :cond_0

    .line 702
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v0, v2

    .line 703
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    .line 704
    .local v7, "ret":Z
    if-nez v7, :cond_2

    .line 705
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 706
    const-string v8, "AnsweringMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to delete file!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAmAvailability()Lcom/android/phone/am/SomcAmManager$AmAvailability;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->checkEnoughStorage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->hasGreeting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->isAmEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOW_IN_USE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    .line 509
    :goto_0
    return-object v0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->isRoamingAndNotUseWhileRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->ONLY_MANUAL_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    goto :goto_0

    .line 503
    :cond_1
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    goto :goto_0

    .line 506
    :cond_2
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->ONLY_MANUAL_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    goto :goto_0

    .line 509
    :cond_3
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOT_AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    goto :goto_0
.end method

.method public getAmConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getAmGreetingDuration()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/android/phone/am/SomcAmManager;->mGreetingDuration:J

    return-wide v0
.end method

.method public getPlayedDuration()F
    .locals 4

    .prologue
    .line 756
    iget-wide v0, p0, Lcom/android/phone/am/SomcAmManager;->mPlayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 757
    iget-wide v0, p0, Lcom/android/phone/am/SomcAmManager;->mPlayStartTime:J

    long-to-float v0, v0

    .line 759
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/am/SomcAmManager;->mPlayStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    goto :goto_0
.end method

.method public getRecordedDuration()F
    .locals 4

    .prologue
    .line 769
    iget-wide v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecordStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 770
    iget-wide v0, p0, Lcom/android/phone/am/SomcAmManager;->mRecordStartTime:J

    long-to-float v0, v0

    .line 772
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/am/SomcAmManager;->mRecordStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    goto :goto_0
.end method

.method public getSelectedGreetingName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 811
    iget-object v3, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_am_greetings"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 814
    .local v0, "currentSelectedGreetingID":I
    new-instance v1, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    iget-object v3, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 815
    .local v1, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    const/4 v2, 0x0

    .line 816
    .local v2, "messageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    invoke-virtual {v1, v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getSelectedGreetingName(I)Ljava/lang/String;

    move-result-object v2

    .line 819
    :cond_0
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 820
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 401
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 463
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    return v1

    .line 403
    :sswitch_0
    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->WAIT_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {p0, v2}, Lcom/android/phone/am/SomcAmManager;->setAmState(Lcom/android/phone/am/SomcAmManager$AmStatus;)V

    .line 404
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->startTimer()V

    goto :goto_1

    .line 408
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->playMessage()V

    goto :goto_1

    .line 414
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v3, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-eq v2, v3, :cond_3

    .line 415
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const-string v1, "AnsweringMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot change to RECORD_CALL from mState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    .line 421
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 422
    iput-object v4, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 424
    :cond_4
    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {p0, v2}, Lcom/android/phone/am/SomcAmManager;->setAmState(Lcom/android/phone/am/SomcAmManager$AmStatus;)V

    .line 425
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->playBeepSound()V

    .line 426
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->recordMessage()V

    .line 427
    iput-wide v5, p0, Lcom/android/phone/am/SomcAmManager;->mPlayStartTime:J

    .line 428
    iput-wide v5, p0, Lcom/android/phone/am/SomcAmManager;->mGreetingDuration:J

    goto :goto_1

    .line 432
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->disconnectAm()V

    .line 433
    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {p0, v2}, Lcom/android/phone/am/SomcAmManager;->setAmState(Lcom/android/phone/am/SomcAmManager$AmStatus;)V

    goto :goto_1

    .line 437
    :sswitch_4
    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {p0, v2}, Lcom/android/phone/am/SomcAmManager;->setAmState(Lcom/android/phone/am/SomcAmManager$AmStatus;)V

    .line 438
    iput-boolean v1, p0, Lcom/android/phone/am/SomcAmManager;->mAmAnswerCallByDeviceSelf:Z

    .line 439
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 441
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "AllRxMute=ON"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 442
    const-string v2, "AllTxMute=ON"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {v2}, Lcom/android/phone/SomcAmPhoneAccessor;->answerCall()Z

    goto/16 :goto_1

    .line 447
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->hangupCallByDeviceSelf()V

    .line 448
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mPhoneAccessor:Lcom/android/phone/SomcAmPhoneAccessor;

    invoke-virtual {v2}, Lcom/android/phone/SomcAmPhoneAccessor;->hangupConnectionOfFgCall()V

    goto/16 :goto_1

    .line 451
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v3, 0x1e

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 457
    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/android/phone/am/SomcAmManager;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v3, 0x1f

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_4
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_6
        0x1004 -> :sswitch_7
        0x1011 -> :sswitch_0
        0x1012 -> :sswitch_1
        0x1013 -> :sswitch_3
        0x1014 -> :sswitch_2
        0x1099 -> :sswitch_5
    .end sparse-switch
.end method

.method public hangUpCallByUser()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->playBeepSound()V

    .line 397
    :cond_0
    return-void
.end method

.method public hangupCallByDeviceSelf()V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->stopAm()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmHangupCallByDeviceSelf:Z

    .line 363
    return-void
.end method

.method public hasGreeting()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 623
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "key_am_greetings"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 626
    .local v0, "currentSelectedGreetingID":I
    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAmAnswerCallByDeviceSelf()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmAnswerCallByDeviceSelf:Z

    return v0
.end method

.method public isAmHangupCallByDeviceSelf()Z
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmHangupCallByDeviceSelf:Z

    return v0
.end method

.method public isAmPlaying()Z
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAmPlayingOrRecording()Z
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAmRecordEndByPickupCall()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmRecordEndByPickupCall:Z

    return v0
.end method

.method public isAmRecording()Z
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAmSaving()Z
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->SAVE_RECORD_DATA:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAmWorking()Z
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAmWithNoTimer()Z
    .locals 2

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->getAmAvailability()Lcom/android/phone/am/SomcAmManager$AmAvailability;

    move-result-object v0

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOT_AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->getAmAvailability()Lcom/android/phone/am/SomcAmManager$AmAvailability;

    move-result-object v0

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->ONLY_MANUAL_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->getAutoAnswerTimerSec()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v0, 0x0

    .line 781
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mAmConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/phone/am/SomcAmManager;->mAmConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V
    .locals 2
    .param p1, "callstate"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 346
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1011

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1012

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 352
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1013

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public pickUpCallByUser()V
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmManager;->mAmRecordEndByPickupCall:Z

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmManager;->stopAmBySelf()V

    .line 384
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {p0, v0}, Lcom/android/phone/am/SomcAmManager;->setAmState(Lcom/android/phone/am/SomcAmManager$AmStatus;)V

    .line 385
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/CallView$CallViewActionListener;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/phone/am/SomcAmManager;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 671
    return-void
.end method

.method public setAmConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/phone/am/SomcAmManager;->mAmConnection:Lcom/android/internal/telephony/Connection;

    .line 794
    return-void
.end method

.method public setAmState(Lcom/android/phone/am/SomcAmManager$AmStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/phone/am/SomcAmManager$AmStatus;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    .line 520
    return-void
.end method

.method public setContentValues(Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .param p3, "date"    # J

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/am/SomcAmContentHelper;->getSomcAmContentHelperInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmContentHelper;

    move-result-object v0

    .line 688
    .local v0, "contentHelper":Lcom/android/phone/am/SomcAmContentHelper;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/phone/am/SomcAmContentHelper;->setContentValues(Ljava/lang/String;IJ)V

    .line 689
    return-void
.end method

.method public setDeviceRxMuteOff()V
    .locals 3

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-eq v1, v2, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 721
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "AllRxMute"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllRxMute=OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    const-string v1, "AllRxMute=OFF"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 725
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public setDeviceRxMuteOn()V
    .locals 3

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mState:Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v2, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    if-eq v1, v2, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 734
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "AllRxMute"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllRxMute=ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    const-string v1, "AllRxMute=ON"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 738
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public setHangupCallByDeviceSelf(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/android/phone/am/SomcAmManager;->mAmHangupCallByDeviceSelf:Z

    .line 372
    return-void
.end method

.method public stopGreeting()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 271
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 273
    iget-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/am/SomcAmManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 276
    :cond_0
    const-string v1, "AllRxMute"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllRxMute=OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    const-string v1, "AllRxMute=OFF"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 279
    :cond_1
    const-string v1, "AllTxMute"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllTxMute=OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    const-string v1, "AllTxMute=OFF"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 282
    :cond_2
    iput-wide v3, p0, Lcom/android/phone/am/SomcAmManager;->mPlayStartTime:J

    .line 283
    iput-wide v3, p0, Lcom/android/phone/am/SomcAmManager;->mGreetingDuration:J

    .line 284
    return-void
.end method
