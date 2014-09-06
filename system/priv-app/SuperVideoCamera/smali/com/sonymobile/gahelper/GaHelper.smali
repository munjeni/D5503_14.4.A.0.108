.class public Lcom/sonymobile/gahelper/GaHelper;
.super Landroid/database/ContentObserver;
.source "GaHelper.java"


# static fields
.field private static final GA_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_CAUSE_DEPTH:I = 0x2

.field private static final MAX_MESSAGE_LENGTH:I = 0x28

.field private static final MAX_STACK_DEPTH:I = 0xa

.field private static final RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"

.field private static sEnabledExceptionTracking:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscribing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v0, "somc.google_analytics_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelper;->GA_URI:Landroid/net/Uri;

    .line 41
    const-class v0, Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelper;->LOG_TAG:Ljava/lang/String;

    .line 47
    sput-boolean v2, Lcom/sonymobile/gahelper/GaHelper;->sEnabledExceptionTracking:Z

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "java."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javax."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sun."

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelper;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

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
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    .line 76
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
    .line 86
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "depth"    # I

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v1, "retval":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 241
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 245
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 247
    const-string v2, " Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 251
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 256
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 280
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    :cond_0
    return-object v2
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    const/16 v6, 0xa

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v2, "retval":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 300
    .local v4, "stackTraceIndex":I
    const/4 v1, 0x0

    .line 301
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_2

    if-ge v4, v6, :cond_2

    .line 302
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v3, v5, v4

    .line 304
    .local v3, "stackTrace":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_1

    .line 307
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "classname":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelper;->packageNameIsReserved(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "classname":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_2
    if-ne v4, v6, :cond_3

    .line 325
    const/4 v4, 0x0

    .line 328
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v3, v5, v4

    .line 330
    .restart local v3    # "stackTrace":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_4

    .line 331
    const-string v5, " F:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " M:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " L:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    :goto_1
    return-object v2

    .line 336
    :cond_4
    const-string v5, " ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1
.end method

.method public static declared-synchronized enableDetailedExceptionTracking(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 4
    .param p0, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;

    .prologue
    .line 185
    const-class v2, Lcom/sonymobile/gahelper/GaHelper;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sonymobile/gahelper/GaHelper;->sEnabledExceptionTracking:Z

    if-nez v1, :cond_1

    .line 186
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonymobile/gahelper/GaHelper;->sEnabledExceptionTracking:Z

    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "tracker is not allowed to be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 192
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/ExceptionReporter;

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 195
    .local v0, "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    new-instance v1, Lcom/sonymobile/gahelper/GaHelper$1;

    invoke-direct {v1}, Lcom/sonymobile/gahelper/GaHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ExceptionReporter;->setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V

    .line 226
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v0    # "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    :cond_1
    monitor-exit v2

    return-void
.end method

.method private static packageNameIsReserved(Ljava/lang/String;)Z
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "found":Z
    const/4 v1, 0x0

    .line 351
    .local v1, "index":I
    :goto_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/sonymobile/gahelper/GaHelper;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 352
    sget-object v2, Lcom/sonymobile/gahelper/GaHelper;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_1
    return v0
.end method


# virtual methods
.method public enableDetailedExceptionTrackingEasyTracker()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 171
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelper;->enableDetailedExceptionTracking(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 172
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled()V

    .line 154
    return-void
.end method

.method public readAndSetGaEnabled()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "defaultValueEnabled":I
    iget-object v4, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "somc.google_analytics_enabled"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    move v1, v2

    .line 109
    .local v1, "gaEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v4

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    .line 110
    return-void

    .end local v1    # "gaEnabled":Z
    :cond_0
    move v1, v3

    .line 100
    goto :goto_0

    .restart local v1    # "gaEnabled":Z
    :cond_1
    move v2, v3

    .line 109
    goto :goto_1
.end method

.method public subscribeGaSettingChanges()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled()V

    .line 127
    iget-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/gahelper/GaHelper;->GA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 131
    :cond_0
    return-void
.end method

.method public unsubscribeGaSettingChanges()V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelper;->mSubscribing:Z

    .line 146
    :cond_0
    return-void
.end method
