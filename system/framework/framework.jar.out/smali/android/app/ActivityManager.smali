.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$1;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$StackInfo;,
        Landroid/app/ActivityManager$StackBoxInfo;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$TaskThumbnails;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;
    }
.end annotation


# static fields
.field public static final BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final BROADCAST_SUCCESS:I = 0x0

.field public static final COMPAT_MODE_ALWAYS:I = -0x1

.field public static final COMPAT_MODE_DISABLED:I = 0x0

.field public static final COMPAT_MODE_ENABLED:I = 0x1

.field public static final COMPAT_MODE_NEVER:I = -0x2

.field public static final COMPAT_MODE_TOGGLE:I = 0x2

.field public static final COMPAT_MODE_UNKNOWN:I = -0x3

.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field public static final META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final MOVE_TASK_WITH_HOME:I = 0x1

.field public static final PROCESS_STATE_BACKUP:I = 0x5

.field public static final PROCESS_STATE_CACHED_ACTIVITY:I = 0xb

.field public static final PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final PROCESS_STATE_CACHED_EMPTY:I = 0xd

.field public static final PROCESS_STATE_HEAVY_WEIGHT:I = 0x6

.field public static final PROCESS_STATE_HOME:I = 0x9

.field public static final PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x4

.field public static final PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x3

.field public static final PROCESS_STATE_LAST_ACTIVITY:I = 0xa

.field public static final PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final PROCESS_STATE_RECEIVER:I = 0x8

.field public static final PROCESS_STATE_SERVICE:I = 0x7

.field public static final PROCESS_STATE_TOP:I = 0x2

.field public static final RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field public static final REMOVE_TASK_KILL_PROCESS:I = 0x1

.field public static final START_CANCELED:I = -0x6

.field public static final START_CLASS_NOT_FOUND:I = -0x2

.field public static final START_DELIVERED_TO_TOP:I = 0x3

.field public static final START_FLAG_AUTO_STOP_PROFILER:I = 0x8

.field public static final START_FLAG_DEBUG:I = 0x2

.field public static final START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final START_FLAG_OPENGL_TRACES:I = 0x4

.field public static final START_FORWARD_AND_REQUEST_CONFLICT:I = -0x3

.field public static final START_INTENT_NOT_RESOLVED:I = -0x1

.field public static final START_NOT_ACTIVITY:I = -0x5

.field public static final START_PERMISSION_DENIED:I = -0x4

.field public static final START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final START_SUCCESS:I = 0x0

.field public static final START_SWITCHES_CANCELED:I = 0x4

.field public static final START_TASK_TO_FRONT:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_OP_IS_CURRENT:I = -0x2

.field public static final USER_OP_SUCCESS:I = 0x0

.field public static final USER_OP_UNKNOWN_USER:I = -0x1

.field private static localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManager;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 293
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    .line 294
    return-void
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "owningUid"    # I
    .param p3, "exported"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2120
    if-eqz p1, :cond_0

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_2

    :cond_0
    move v1, v2

    .line 2152
    :cond_1
    :goto_0
    return v1

    .line 2124
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2129
    if-ltz p2, :cond_3

    invoke-static {p1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 2130
    goto :goto_0

    .line 2133
    :cond_3
    if-eqz p3, :cond_1

    .line 2142
    if-nez p0, :cond_4

    move v1, v2

    .line 2143
    goto :goto_0

    .line 2146
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2148
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v3, "PackageManager is dead?!?"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkUidPermission(Ljava/lang/String;I)I
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 2158
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2164
    :goto_0
    return v1

    .line 2160
    :catch_0
    move-exception v0

    .line 2162
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v2, "PackageManager is dead?!?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2164
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2281
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2282
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2283
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "activity"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "-a"

    aput-object v4, v3, v5

    const-string/jumbo v4, "package"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2285
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2286
    const-string/jumbo v2, "meminfo"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "--local"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2287
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2288
    const-string/jumbo v2, "procstats"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "-a"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2290
    const-string/jumbo v2, "usagestats"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "--packages"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2291
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2292
    const-string/jumbo v2, "package"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2293
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2294
    const-string v2, "batterystats"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2296
    return-void
.end method

.method private static dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2299
    const-string v4, "DUMP OF SERVICE "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2300
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2301
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 2302
    const-string v4, "  (Service not found)"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    :goto_0
    return-void

    .line 2305
    :cond_0
    const/4 v2, 0x0

    .line 2307
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 2308
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2309
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    const-string v4, "  "

    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 2311
    invoke-virtual {v3, p1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 2318
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_0

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_1

    .line 2314
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2316
    :cond_1
    const-string v4, "Failure dumping service:"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 2312
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_1
.end method

.method public static getCurrentUser()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2208
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2209
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    :cond_0
    :goto_0
    return v2

    .line 2210
    :catch_0
    move-exception v0

    .line 2211
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 1
    .param p0, "outState"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    .line 1899
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    :goto_0
    return-void

    .line 1900
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "allowAll"    # Z
    .param p4, "requireFull"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 2193
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 2197
    .end local p2    # "userId":I
    :goto_0
    return p2

    .restart local p2    # "userId":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 2199
    :catch_0
    move-exception v8

    .line 2200
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Failed calling activity manager"

    invoke-direct {v0, v1, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isHighEndGfx()Z
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowRamDeviceStatic()Z
    .locals 3

    .prologue
    .line 457
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.low_ram"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRunningInTestHarness()Z
    .locals 2

    .prologue
    .line 2083
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserAMonkey()Z
    .locals 1

    .prologue
    .line 2073
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2076
    :goto_0
    return v0

    .line 2074
    :catch_0
    move-exception v0

    .line 2076
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static staticGetLargeMemoryClass()I
    .locals 6

    .prologue
    .line 439
    invoke-static {}, Ldalvik/system/Zygote;->getHeapUsageAtFork()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 440
    .local v1, "zygote":I
    const-string v2, "dalvik.vm.heapsize"

    const-string v3, "16m"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "vmHeapSize":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v1

    return v2
.end method

.method public static staticGetMemoryClass()I
    .locals 6

    .prologue
    .line 410
    const-string v2, "dalvik.vm.heapgrowthlimit"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "vmHeapSize":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-static {}, Ldalvik/system/Zygote;->getHeapUsageAtFork()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 413
    .local v1, "zygote":I
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 415
    .end local v1    # "zygote":I
    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public clearApplicationUserData()Z
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 1466
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1469
    :goto_0
    return v1

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2274
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2275
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1976
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    :goto_0
    return-void

    .line 1978
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAllPackageLaunchCounts()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2093
    :try_start_0
    const-string/jumbo v8, "usagestats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v7

    .line 2095
    .local v7, "usageStatsService":Lcom/android/internal/app/IUsageStats;
    if-nez v7, :cond_1

    .line 2096
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2112
    .end local v7    # "usageStatsService":Lcom/android/internal/app/IUsageStats;
    :cond_0
    :goto_0
    return-object v4

    .line 2099
    .restart local v7    # "usageStatsService":Lcom/android/internal/app/IUsageStats;
    :cond_1
    invoke-interface {v7}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v0

    .line 2100
    .local v0, "allPkgUsageStats":[Lcom/android/internal/os/PkgUsageStats;
    if-nez v0, :cond_2

    .line 2101
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2110
    .end local v0    # "allPkgUsageStats":[Lcom/android/internal/os/PkgUsageStats;
    .end local v7    # "usageStatsService":Lcom/android/internal/app/IUsageStats;
    :catch_0
    move-exception v2

    .line 2111
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v8, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v9, "Could not query launch counts"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2112
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 2104
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "allPkgUsageStats":[Lcom/android/internal/os/PkgUsageStats;
    .restart local v7    # "usageStatsService":Lcom/android/internal/app/IUsageStats;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2105
    .local v4, "launchCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/internal/os/PkgUsageStats;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v1, v3

    .line 2106
    .local v6, "pkgUsageStats":Lcom/android/internal/os/PkgUsageStats;
    iget-object v8, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getAllPackageUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .locals 4

    .prologue
    .line 2222
    :try_start_0
    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    .line 2224
    .local v1, "usageStatsService":Lcom/android/internal/app/IUsageStats;
    if-eqz v1, :cond_0

    .line 2225
    invoke-interface {v1}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2230
    .end local v1    # "usageStatsService":Lcom/android/internal/app/IUsageStats;
    :goto_0
    return-object v2

    .line 2227
    :catch_0
    move-exception v0

    .line 2228
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not query usage stats"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/os/PkgUsageStats;

    goto :goto_0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 1

    .prologue
    .line 1987
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1990
    :goto_0
    return-object v0

    .line 1988
    :catch_0
    move-exception v0

    .line 1990
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 2

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFrontActivityScreenCompatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :goto_0
    return v1

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLargeMemoryClass()I
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 2000
    iget-object v4, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2001
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2002
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2004
    .local v2, "sw":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    .line 2025
    .end local v0    # "density":I
    :goto_0
    return v0

    .line 2009
    .restart local v0    # "density":I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 2025
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 2011
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 2013
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 2015
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 2017
    goto :goto_0

    .line 2019
    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    .line 2021
    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    .line 2009
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getLauncherLargeIconSize()I
    .locals 6

    .prologue
    .line 2036
    iget-object v4, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2037
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v4, 0x1050000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2038
    .local v2, "size":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2040
    .local v3, "sw":I
    const/16 v4, 0x258

    if-ge v3, v4, :cond_0

    .line 2063
    .end local v2    # "size":I
    :goto_0
    return v2

    .line 2045
    .restart local v2    # "size":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2047
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_0

    .line 2063
    int-to-float v4, v2

    const/high16 v5, 0x3fc00000

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_0

    .line 2049
    :sswitch_0
    mul-int/lit16 v4, v2, 0xa0

    div-int/lit8 v2, v4, 0x78

    goto :goto_0

    .line 2051
    :sswitch_1
    mul-int/lit16 v4, v2, 0xf0

    div-int/lit16 v2, v4, 0xa0

    goto :goto_0

    .line 2053
    :sswitch_2
    mul-int/lit16 v4, v2, 0x140

    div-int/lit16 v2, v4, 0xf0

    goto :goto_0

    .line 2055
    :sswitch_3
    mul-int/lit16 v4, v2, 0x140

    div-int/lit16 v2, v4, 0xf0

    goto :goto_0

    .line 2057
    :sswitch_4
    mul-int/lit16 v4, v2, 0x1e0

    div-int/lit16 v2, v4, 0x140

    goto :goto_0

    .line 2059
    :sswitch_5
    mul-int/lit16 v4, v2, 0x140

    mul-int/lit8 v4, v4, 0x2

    div-int/lit16 v2, v4, 0x1e0

    goto :goto_0

    .line 2047
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getMemoryClass()I
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 1
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .prologue
    .line 1294
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 378
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 381
    :goto_0
    return v1

    .line 379
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 362
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 2
    .param p1, "pids"    # [I

    .prologue
    .line 1917
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1919
    :goto_0
    return-object v1

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1601
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1603
    :goto_0
    return-object v1

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 606
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 610
    :goto_0
    return-object v1

    .line 608
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecentTasksForUser(III)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 635
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 639
    :goto_0
    return-object v1

    .line 637
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1880
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1882
    :goto_0
    return-object v1

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1862
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1864
    :goto_0
    return-object v1

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1188
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1192
    :goto_0
    return-object v1

    .line 1190
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningServices(I)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1172
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1176
    :goto_0
    return-object v1

    .line 1174
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 813
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "receiver"    # Landroid/app/IThumbnailReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/app/IThumbnailReceiver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 777
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 780
    :goto_0
    return-object v1

    .line 778
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 927
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 930
    :goto_0
    return-object v1

    .line 928
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTaskTopThumbnail(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 937
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 940
    :goto_0
    return-object v1

    .line 938
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLowRamDevice()Z
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method public isUserRunning(I)Z
    .locals 4
    .param p1, "userid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2256
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2258
    :goto_0
    return v1

    .line 2257
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1950
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1954
    :goto_0
    return-void

    .line 1952
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveTaskToFront(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 969
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 987
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeSubTask(II)Z
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "subTaskIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 831
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->removeSubTask(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 834
    :goto_0
    return v1

    .line 832
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeTask(II)Z
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 858
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->removeTask(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 861
    :goto_0
    return v1

    .line 859
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restartPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1932
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1933
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 350
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    .line 388
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 369
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchUser(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    .line 2239
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2241
    :goto_0
    return v1

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
