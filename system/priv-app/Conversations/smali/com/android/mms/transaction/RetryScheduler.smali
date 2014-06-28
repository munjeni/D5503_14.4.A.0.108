.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "RetryScheduler"

.field private static mRetryAlarmEnabled:Z

.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/RetryScheduler;->mRetryAlarmEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static cancelRetryAlarm(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 167
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_ONALARM"

    const/4 v4, 0x0

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v2, v3, v4, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v2, "service":Landroid/content/Intent;
    const/high16 v3, 0x40000000

    invoke-static {p0, v6, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 171
    .local v1, "operation":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 172
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 173
    sput-boolean v6, Lcom/android/mms/transaction/RetryScheduler;->mRetryAlarmEnabled:Z

    .line 177
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method public static isRetryAlarmEnabled()Z
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/android/mms/transaction/RetryScheduler;->mRetryAlarmEnabled:Z

    return v0
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v7

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getPendingMessages(J)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    if-eqz v1, :cond_1

    .line 141
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    const-string v7, "due_time"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 146
    .local v4, "retryAt":J
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_ONALARM"

    const/4 v8, 0x0

    const-class v9, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v6, v7, v8, p0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v6, "service":Landroid/content/Intent;
    const/4 v7, 0x0

    const/high16 v8, 0x40000000

    invoke-static {p0, v7, v6, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 150
    .local v3, "operation":Landroid/app/PendingIntent;
    const-string v7, "alarm"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 152
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 153
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/mms/transaction/RetryScheduler;->mRetryAlarmEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v3    # "operation":Landroid/app/PendingIntent;
    .end local v4    # "retryAt":J
    .end local v6    # "service":Landroid/content/Intent;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Lcom/google/android/mms/MmsException;
    const-string v7, "RetryScheduler"

    const-string v8, "Get pending messages failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method public static setRetryAtOnce(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getPendingMessages(J)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    :goto_0
    const/4 v3, 0x0

    .line 112
    .local v3, "hasPending":Z
    if-eqz v1, :cond_1

    .line 114
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 115
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 116
    const/4 v3, 0x1

    .line 117
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_HANDLE_PENDING"

    const/4 v6, 0x0

    const-class v7, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v4, v5, v6, p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v4, "service":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v4    # "service":Landroid/content/Intent;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    .end local v0    # "count":I
    :cond_1
    return v3

    .line 108
    .end local v3    # "hasPending":Z
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Lcom/google/android/mms/MmsException;
    const-string v5, "RetryScheduler"

    const-string v6, "Get pending messages failed"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    .restart local v3    # "hasPending":Z
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5
.end method


# virtual methods
.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 8
    .param p1, "observable"    # Lcom/android/mms/transaction/Observable;

    .prologue
    .line 66
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v4, v0

    .line 74
    .local v4, "t":Lcom/android/mms/transaction/Transaction;
    instance-of v6, v4, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v6, :cond_0

    instance-of v6, v4, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v6, :cond_0

    instance-of v6, v4, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v6, :cond_0

    instance-of v6, v4, Lcom/android/mms/transaction/SendTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_3

    .line 79
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    .line 80
    .local v3, "state":Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 81
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 82
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "isManualRequest":Z
    const/4 v2, 0x0

    .line 85
    .local v2, "isPermanentErr":Z
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->isPermanentError()Z

    move-result v2

    .line 87
    instance-of v6, v4, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v6, :cond_1

    .line 88
    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/transaction/RetrieveTransaction;->isManualRequest()Z

    move-result v1

    .line 90
    :cond_1
    iget-object v6, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v1, v2}, Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;->scheduleRetry(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v1    # "isManualRequest":Z
    .end local v2    # "isPermanentErr":Z
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_2
    invoke-virtual {v4, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    .end local v3    # "state":Lcom/android/mms/transaction/TransactionState;
    :cond_3
    iget-object v6, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 101
    return-void

    .line 95
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v4, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .end local v4    # "t":Lcom/android/mms/transaction/Transaction;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    throw v6
.end method
