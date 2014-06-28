.class public Lcom/android/mms/util/RateController;
.super Ljava/lang/Object;
.source "RateController.java"


# static fields
.field private static final ANSWER_NO:I = 0x2

.field public static final ANSWER_TIMEOUT:I = 0x4e20

.field private static final ANSWER_YES:I = 0x1

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final NO_ANSWER:I = 0x0

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final RATE_LIMIT:I = 0x64

.field public static final RATE_LIMIT_CONFIRMED_ACTION:Ljava/lang/String; = "com.android.mms.RATE_LIMIT_CONFIRMED"

.field public static final RATE_LIMIT_SURPASSED_ACTION:Ljava/lang/String; = "com.android.mms.RATE_LIMIT_SURPASSED"

.field private static final TAG:Ljava/lang/String; = "RateController"

.field private static sInstance:Lcom/android/mms/util/RateController;

.field private static sMutexLock:Z


# instance fields
.field private mAnswer:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/mms/util/RateController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController$1;-><init>(Lcom/android/mms/util/RateController;)V

    iput-object v0, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/RateController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/util/RateController;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/mms/util/RateController;->mAnswer:I

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/util/RateController;
    .locals 3

    .prologue
    .line 96
    const-class v1, Lcom/android/mms/util/RateController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 99
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-class v1, Lcom/android/mms/util/RateController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "RateController"

    const-string v2, "Already initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    new-instance v0, Lcom/android/mms/util/RateController;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v1

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized waitForAnswer()I
    .locals 3

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    .line 160
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_1
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 165
    :cond_0
    :try_start_2
    iget v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 161
    :catch_0
    move-exception v1

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized isAllowedByUser()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v3, Lcom/android/mms/util/RateController;->sMutexLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v3

    goto :goto_0

    .line 134
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 136
    iget-object v3, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.RATE_LIMIT_SURPASSED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v3, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-direct {p0}, Lcom/android/mms/util/RateController;->waitForAnswer()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-ne v3, v1, :cond_1

    .line 148
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    :cond_1
    move v1, v2

    .line 146
    goto :goto_1

    .line 148
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final isLimitSurpassed()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long v8, v0, v2

    .line 111
    .local v8, "oneHourAgo":J
    iget-object v0, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "COUNT(*) AS rate"

    aput-object v4, v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent_time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 114
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 116
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    move v0, v10

    .line 120
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 123
    :goto_1
    return v0

    :cond_0
    move v0, v11

    .line 117
    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    .line 123
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final update()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 104
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sent_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 107
    return-void
.end method
