.class public Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;
.super Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.source "XssmBlockerDetector.java"


# static fields
.field private static final DONT_SHOW_WARNING_FOR_THIS_APP:Ljava/lang/String; = "com.sonymobile.superstamina.DONT_SHOW_WARNING_FOR_THIS_APP"

.field private static final EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final KEY_IGNORE_LIST:Ljava/lang/String; = "xssmbd_il"

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-XssmBlockerDetector"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "BlockDetector"

.field private static final TIMEOUT:J = 0x6ddd0L


# instance fields
.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mDontShowAgainReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUidSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private final mOnTimeout:Ljava/lang/Runnable;

.field private mPackageMgr:Landroid/content/pm/PackageManager;

.field private mService:Lcom/sonymobile/superstamina/XperiaPowerService;

.field private mStatsField:Ljava/lang/reflect/Field;

.field private mXssmOn:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 11
    .param p1, "xperiaPowerService"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;-><init>()V

    .line 95
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    .line 97
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v7, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$1;

    invoke-direct {v7, p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$1;-><init>(Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mOnTimeout:Ljava/lang/Runnable;

    .line 106
    new-instance v7, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$2;

    invoke-direct {v7, p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$2;-><init>(Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mDontShowAgainReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    .line 119
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Lcom/sonymobile/superstamina/XperiaPowerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 121
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v7}, Lcom/sonymobile/superstamina/XperiaPowerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mPackageMgr:Landroid/content/pm/PackageManager;

    .line 122
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 125
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mStats"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mStatsField:Ljava/lang/reflect/Field;

    .line 126
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mStatsField:Ljava/lang/reflect/Field;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v7}, Lcom/sonymobile/superstamina/XperiaPowerService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "xssmbd_il"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "values":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 134
    invoke-static {v6}, Lcom/sonymobile/superstamina/Util;->parseCommaSeparatedIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v5, v0, v2

    .line 136
    .local v5, "uid":I
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mPackageMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "pkgs":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-nez v7, :cond_1

    .line 134
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgs":[Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "values":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v7, "SuperStamina-XssmBlockerDetector"

    const-string v8, "Could not hack into BatteryStatsService!"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgs":[Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "values":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgs":[Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget-object v8, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mDontShowAgainReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.sonymobile.superstamina.DONT_SHOW_WARNING_FOR_THIS_APP"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/superstamina/XperiaPowerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private detectBlockingUis()Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    const/4 v13, 0x0

    .line 300
    .local v13, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mStatsField:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v13, :cond_0

    .line 343
    :goto_1
    return-object v10

    .line 301
    .end local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v7

    .line 302
    .local v7, "e":Ljava/lang/Exception;
    const-string v24, "SuperStamina-XssmBlockerDetector"

    const-string v25, "Could not extract stats from BatteryStatsService!"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 312
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    monitor-enter v13

    .line 313
    const/16 v22, 0x3

    .line 314
    .local v22, "which":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 315
    .local v11, "rt":J
    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v11

    move-wide/from16 v0, v24

    move/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v4

    .line 317
    .local v4, "battRt":J
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v21

    .line 318
    .local v21, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 319
    .local v6, "cnt":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_3

    .line 320
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Uid;

    .line 321
    .local v19, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v20

    .line 322
    .local v20, "uidInt":I
    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 323
    .local v23, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v18

    .line 324
    .local v18, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v18, :cond_1

    .line 330
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v14, v24, v26

    .line 331
    .local v14, "t1":J
    const-wide/32 v24, 0xf4240

    add-long v24, v24, v4

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v16, v24, v26

    .line 332
    .local v16, "t2":J
    cmp-long v24, v14, v16

    if-eqz v24, :cond_1

    .line 333
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v14    # "t1":J
    .end local v16    # "t2":J
    .end local v18    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v23    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 342
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v19    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v20    # "uidInt":I
    :cond_3
    monitor-exit v13

    goto/16 :goto_1

    .end local v4    # "battRt":J
    .end local v6    # "cnt":I
    .end local v8    # "i":I
    .end local v11    # "rt":J
    .end local v21    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :catchall_0
    move-exception v24

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24
.end method

.method private intersect(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "set1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "set2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 187
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_1
    return-object v1
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mPackageMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 198
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private logIddXssmBlocker([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 280
    .local v1, "elapsed":J
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    .line 282
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->setPackageNameFromUid(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    .line 285
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private report(Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "common":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 208
    .local v14, "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mPackageMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 209
    .local v12, "pkgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->logIddXssmBlocker([Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 216
    if-eqz v12, :cond_0

    array-length v15, v12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 217
    const/4 v15, 0x0

    aget-object v11, v12, v15

    .line 220
    .local v11, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->isSystemPackage(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 225
    const/4 v8, 0x0

    .line 226
    .local v8, "name":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 228
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mPackageMgr:Landroid/content/pm/PackageManager;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 232
    :goto_1
    if-eqz v10, :cond_1

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mPackageMgr:Landroid/content/pm/PackageManager;

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 235
    :cond_1
    if-eqz v8, :cond_0

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v15}, Lcom/sonymobile/superstamina/XperiaPowerService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 237
    .local v13, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-direct {v2, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, "builder":Landroid/app/Notification$Builder;
    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v5, "intent":Landroid/content/Intent;
    const-string v15, "package"

    const/16 v16, 0x0

    aget-object v16, v12, v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v14, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 242
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 244
    const v15, 0x7f050009

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 245
    const v15, 0x7f02000a

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 247
    const v15, 0x7f05000a

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "msg":Ljava/lang/String;
    const v15, 0x7f05000b

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "msgLong":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 250
    new-instance v15, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v15}, Landroid/app/Notification$BigTextStyle;-><init>()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0xa

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 252
    new-instance v3, Landroid/content/Intent;

    const-string v15, "com.sonymobile.superstamina.DONT_SHOW_WARNING_FOR_THIS_APP"

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v3, "dontShowAgainIntent":Landroid/content/Intent;
    const-string v15, "uid"

    invoke-virtual {v3, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const v15, 0x7f020009

    const v16, 0x7f05000c

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v14, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 258
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 259
    .local v9, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mNotificationMgr:Landroid/app/NotificationManager;

    const-string v16, "BlockDetector"

    sget-object v17, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v14, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 264
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "dontShowAgainIntent":Landroid/content/Intent;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "msgLong":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/CharSequence;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pkgs":[Ljava/lang/String;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "uid":I
    :cond_2
    return-void

    .line 229
    .restart local v8    # "name":Ljava/lang/CharSequence;
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "pkgs":[Ljava/lang/String;
    .restart local v14    # "uid":I
    :catch_0
    move-exception v15

    goto/16 :goto_1
.end method

.method private start()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mLastUidSet:Ljava/util/ArrayList;

    .line 352
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->startTimer()V

    .line 353
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mOnTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x6ddd0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    return-void
.end method

.method private stop(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method


# virtual methods
.method public debug([Ljava/lang/String;)I
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 386
    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 387
    const-string v2, "notify"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    aget-object v2, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 389
    .local v1, "uid":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->report(Ljava/util/ArrayList;)V

    .line 400
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "uid":I
    :cond_0
    :goto_0
    return v5

    .line 394
    :cond_1
    array-length v2, p1

    if-ne v2, v6, :cond_2

    .line 395
    const-string v2, "clearlist"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 398
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v2}, Lcom/sonymobile/superstamina/XperiaPowerService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "xssmbd_il"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 403
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Usage: xssmdb notify <uid> | clearlist"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XssmBlockerDetector ignoreList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sonymobile/superstamina/Util;->buildIntArrayString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method protected ignoreUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mIgnoreList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sonymobile/superstamina/Util;->buildIntArrayString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "values":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/XperiaPowerService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "xssmbd_il"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    .end local v0    # "values":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onScreenOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mXssmOn:Z

    if-eqz v0, :cond_0

    .line 370
    if-eqz p1, :cond_1

    .line 371
    const-string v0, "screen turned back on soon"

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->stop(Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->start()V

    goto :goto_0
.end method

.method protected onTimeout()V
    .locals 3

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->detectBlockingUis()Ljava/util/ArrayList;

    move-result-object v1

    .line 162
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mLastUidSet:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 167
    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mLastUidSet:Ljava/util/ArrayList;

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->startTimer()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mLastUidSet:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->intersect(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, "common":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mLastUidSet:Ljava/util/ArrayList;

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->startTimer()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->report(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onXssmActivated(Z)V
    .locals 1
    .param p1, "ativated"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mXssmOn:Z

    .line 362
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mXssmOn:Z

    if-nez v0, :cond_0

    .line 363
    const-string v0, "xssm disabled"

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->stop(Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 1
    .param p1, "state"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    .line 380
    sget-object v0, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_1:Lcom/sonymobile/superstamina/xssm/PowerState;

    if-ne p1, v0, :cond_0

    .line 381
    const-string v0, "entered state 1"

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->stop(Ljava/lang/String;)V

    .line 383
    :cond_0
    return-void
.end method
