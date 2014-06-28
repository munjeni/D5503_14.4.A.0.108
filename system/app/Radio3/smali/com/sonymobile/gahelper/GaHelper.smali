.class public Lcom/sonymobile/gahelper/GaHelper;
.super Landroid/database/ContentObserver;
.source "GaHelper.java"


# static fields
.field private static final GA_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"

.field private static sEnabledExceptionTracking:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscribing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "somc.google_analytics_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelper;->GA_URI:Landroid/net/Uri;

    .line 38
    const-class v0, Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelper;->LOG_TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/gahelper/GaHelper;->sEnabledExceptionTracking:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "depth"    # I

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v1, "retval":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 219
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 223
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 225
    const-string v2, " Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 229
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 233
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 251
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    :cond_0
    return-object v2
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 260
    .local v1, "stackTrace":Ljava/lang/StackTraceElement;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "retval":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_0

    .line 269
    const-string v2, " F:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " M:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " L:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 275
    :cond_0
    const-string v2, " ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized enableDetailedExceptionTracking(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 4
    .param p0, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;

    .prologue
    .line 169
    const-class v2, Lcom/sonymobile/gahelper/GaHelper;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sonymobile/gahelper/GaHelper;->sEnabledExceptionTracking:Z

    if-nez v1, :cond_1

    .line 170
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonymobile/gahelper/GaHelper;->sEnabledExceptionTracking:Z

    .line 172
    if-nez p0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "tracker is not allowed to be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 176
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/ExceptionReporter;

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 179
    .local v0, "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    new-instance v1, Lcom/sonymobile/gahelper/GaHelper$1;

    invoke-direct {v1}, Lcom/sonymobile/gahelper/GaHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ExceptionReporter;->setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V

    .line 210
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v0    # "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    :cond_1
    monitor-exit v2

    return-void
.end method


# virtual methods
.method public enableDetailedExceptionTrackingEasyTracker()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelper;->enableDetailedExceptionTracking(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 156
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled()V

    .line 138
    return-void
.end method

.method public readAndSetGaEnabled()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, "defaultValueEnabled":I
    iget-object v4, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "somc.google_analytics_enabled"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    move v1, v2

    .line 93
    .local v1, "gaEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v4

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    .line 94
    return-void

    .end local v1    # "gaEnabled":Z
    :cond_0
    move v1, v3

    .line 84
    goto :goto_0

    .restart local v1    # "gaEnabled":Z
    :cond_1
    move v2, v3

    .line 93
    goto :goto_1
.end method

.method public subscribeGaSettingChanges()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled()V

    .line 111
    iget-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/gahelper/GaHelper;->GA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 115
    :cond_0
    return-void
.end method

.method public unsubscribeGaSettingChanges()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 130
    :cond_0
    return-void
.end method
