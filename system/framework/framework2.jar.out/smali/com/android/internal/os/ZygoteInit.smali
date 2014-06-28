.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ANDROID_SOCKET_ENV:Ljava/lang/String; = "ANDROID_SOCKET_zygote"

.field private static CLASS_PRELOAD_THREADS:I = 0x0

.field static final GC_LOOP_COUNT:I = 0xa

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0x7a120

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_PRELOAD_CONFIGS:Ljava/lang/String; = "ro.zygote.preload.configs"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SYSTEM_SERVER_NUM_BINDERS:I = 0x1e

.field private static final SYSTEM_SERVER_TRANSACTION_BUFFER_SIZE:I = 0x1fe000

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field public static final USAGE_STRING:Ljava/lang/String; = " <\"start-system-server\"|\"\" for startSystemServer>"

.field private static classLoader:[Ljava/lang/Thread;

.field private static mResources:Landroid/content/res/Resources;

.field private static resourceLoader:Ljava/lang/Thread;

.field private static sServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/os/ZygoteInit;->CLASS_PRELOAD_THREADS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    return-void
.end method

.method private static acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;
    .locals 3

    .prologue
    .line 207
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Ldalvik/system/VMRuntime;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ldalvik/system/VMRuntime;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/android/internal/os/ZygoteInit;->doPreloadClasses(Ldalvik/system/VMRuntime;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$102(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 69
    sput-object p0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getPreloadConfigurations()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 1
    .param p0, "x0"    # Ldalvik/system/VMRuntime;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 1
    .param p0, "x0"    # Ldalvik/system/VMRuntime;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    return v0
.end method

.method static native capgetPermitted(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static closeServerSocket()V
    .locals 4

    .prologue
    .line 220
    :try_start_0
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_0

    .line 221
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 222
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 223
    if-eqz v1, :cond_0

    .line 224
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :cond_0
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 234
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing sockets"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "ex":Llibcore/io/ErrnoException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing descriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static native createFileDescriptor(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static doGCIfNeeded(Ldalvik/system/VMRuntime;)V
    .locals 3
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;

    .prologue
    const v1, 0x7a120

    .line 311
    const-class v2, Lcom/android/internal/os/ZygoteInit;

    monitor-enter v2

    .line 312
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v0

    .line 313
    .local v0, "allocSize":I
    if-le v0, v1, :cond_0

    .line 314
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 316
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-le v0, v1, :cond_1

    .line 322
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 323
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 325
    :cond_1
    return-void

    .line 316
    .end local v0    # "allocSize":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static doPreloadClasses(Ldalvik/system/VMRuntime;Ljava/util/List;)V
    .locals 11
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/VMRuntime;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 329
    .local v0, "count":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 330
    .local v4, "startTime":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 336
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->doGCIfNeeded(Ldalvik/system/VMRuntime;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found for preloading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem preloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v6

    .line 343
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error preloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    instance-of v7, v6, Ljava/lang/Error;

    if-eqz v7, :cond_0

    .line 345
    check-cast v6, Ljava/lang/Error;

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 347
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v7, v6, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_1

    .line 348
    check-cast v6, Ljava/lang/RuntimeException;

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 350
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 353
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "...preloaded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " classes in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method static gc(I)V
    .locals 2
    .param p0, "generations"    # I

    .prologue
    .line 537
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    .line 542
    .local v1, "runtime":Ldalvik/system/VMRuntime;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 543
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 544
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    return-void
.end method

.method private static getPreloadConfigurations()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    const-string v5, "ro.zygote.preload.configs"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "propStr":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "configStrings":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 416
    :try_start_0
    aget-object v5, v0, v3

    invoke-static {v5}, Landroid/content/res/Configuration;->fromString(Ljava/lang/String;)Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring preload config \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "because it is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    return-object v1
.end method

.method static native getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 5
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 555
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 558
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->S_IRWXG:I

    sget v2, Llibcore/io/OsConstants;->S_IRWXO:I

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Llibcore/io/Os;->umask(I)I

    .line 561
    const/16 v0, 0x1e

    const v1, 0x1fe000

    invoke-static {v0, v1}, Landroid/os/Process;->setBinderParameters(II)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 580
    :goto_0
    return-void

    .line 576
    :cond_1
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 160
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 161
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 162
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "modifiers":I
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 152
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 155
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 172
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "modifiers":I
    :cond_1
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 656
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 658
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket()V

    .line 659
    const/16 v2, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 661
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 663
    const/16 v2, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 667
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 670
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->gc(I)V

    .line 674
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 677
    array-length v2, p0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 678
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 699
    .end local v0    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_0
    return-void

    .line 681
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    aget-object v2, p0, v2

    const-string v3, "start-system-server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->startSystemServer()Z

    .line 687
    :cond_1
    const-string v2, "Zygote"

    const-string v3, "Accepting command socket connections"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop()V

    .line 691
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 694
    :catch_1
    move-exception v1

    .line 695
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "Zygote"

    const-string v3, "Zygote died with exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 697
    throw v1

    .line 683
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    aget-object v2, p0, v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 684
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8
    .param p0, "capabilities"    # [I

    .prologue
    .line 643
    const-wide/16 v4, 0x0

    .line 644
    .local v4, "result":J
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 645
    .local v1, "capability":I
    if-ltz v1, :cond_0

    sget v6, Llibcore/io/OsConstants;->CAP_LAST_CAP:I

    if-le v1, v6, :cond_1

    .line 646
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 648
    :cond_1
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v1    # "capability":I
    :cond_2
    return-wide v4
.end method

.method static preload()V
    .locals 5

    .prologue
    const/16 v3, 0x270f

    const/4 v4, 0x0

    .line 263
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 266
    .local v2, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 267
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 271
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v0

    .line 272
    .local v0, "defaultUtilization":F
    const v3, 0x3f4ccccd

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 275
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 276
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 277
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 279
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 280
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 281
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget v3, Lcom/android/internal/os/ZygoteInit;->CLASS_PRELOAD_THREADS:I

    if-ge v1, v3, :cond_0

    .line 285
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->classLoader:[Ljava/lang/Thread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_0
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->resourceLoader:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    invoke-virtual {v2, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 294
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 296
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 299
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 300
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 301
    return-void

    .line 288
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static preloadClasses()V
    .locals 15

    .prologue
    .line 365
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    .line 367
    .local v9, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "preloaded-classes"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 369
    .local v6, "is":Ljava/io/InputStream;
    if-nez v6, :cond_0

    .line 370
    const-string v11, "Zygote"

    const-string v12, "Couldn\'t find preloaded-classes."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 373
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v12, 0x100

    invoke-direct {v0, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 376
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 378
    .local v3, "count":I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v11, 0xbb8

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v1, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 381
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 382
    const-string v11, "#"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 385
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 402
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "count":I
    .end local v8    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 403
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v11, "Zygote"

    const-string v12, "Error reading preloaded-classes."

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 388
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "count":I
    .restart local v8    # "line":Ljava/lang/String;
    :cond_2
    :try_start_2
    sget v11, Lcom/android/internal/os/ZygoteInit;->CLASS_PRELOAD_THREADS:I

    new-array v11, v11, [Ljava/lang/Thread;

    sput-object v11, Lcom/android/internal/os/ZygoteInit;->classLoader:[Ljava/lang/Thread;

    .line 389
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    int-to-double v11, v11

    sget v13, Lcom/android/internal/os/ZygoteInit;->CLASS_PRELOAD_THREADS:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v10, v11

    .line 390
    .local v10, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_3

    .line 391
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v7

    invoke-interface {v1, v7, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 393
    .local v2, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/internal/os/ZygoteInit;->classLoader:[Ljava/lang/Thread;

    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v13, v9, v2}, Lcom/android/internal/os/ZygoteInit$1;-><init>(Ldalvik/system/VMRuntime;Ljava/util/List;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v12, v11, v5

    .line 398
    sget-object v11, Lcom/android/internal/os/ZygoteInit;->classLoader:[Ljava/lang/Thread;

    aget-object v11, v11, v5

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/Thread;->setPriority(I)V

    .line 399
    sget-object v11, Lcom/android/internal/os/ZygoteInit;->classLoader:[Ljava/lang/Thread;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    add-int/2addr v7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 405
    .end local v2    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "size":I
    :catchall_0
    move-exception v11

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 492
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 493
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->doGCIfNeeded(Ldalvik/system/VMRuntime;)V

    .line 494
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 498
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 499
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 500
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 513
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 514
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->doGCIfNeeded(Ldalvik/system/VMRuntime;)V

    .line 515
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 519
    .local v2, "id":I
    if-eqz v2, :cond_0

    .line 520
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 521
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    const-string v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 307
    :cond_0
    return-void
.end method

.method private static preloadResources()V
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$2;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->resourceLoader:Ljava/lang/Thread;

    .line 486
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->resourceLoader:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 487
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->resourceLoader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 488
    return-void
.end method

.method private static registerZygoteSocket()V
    .locals 6

    .prologue
    .line 181
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v3, :cond_0

    .line 184
    :try_start_0
    const-string v3, "ANDROID_SOCKET_zygote"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 192
    .local v2, "fileDesc":I
    :try_start_1
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :cond_0
    return-void

    .line 186
    .end local v2    # "fileDesc":I
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ANDROID_SOCKET_zygote unset or invalid"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 194
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "fileDesc":I
    :catch_1
    move-exception v1

    .line 195
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding to local socket \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static native reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static runSelectLoop()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 710
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v4, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v8, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/io/FileDescriptor;

    .line 714
    .local v3, "fdArray":[Ljava/io/FileDescriptor;
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v9}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    const/16 v6, 0xa

    .line 730
    .local v6, "loopCount":I
    :cond_0
    :goto_0
    if-gtz v6, :cond_1

    .line 731
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->gc(I)V

    .line 732
    const/16 v6, 0xa

    .line 739
    :goto_1
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/io/FileDescriptor;

    move-object v3, v0

    .line 740
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->selectReadable([Ljava/io/FileDescriptor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 745
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 746
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 734
    .end local v5    # "index":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 741
    :catch_0
    move-exception v2

    .line 742
    .local v2, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 747
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "index":I
    :cond_2
    if-nez v5, :cond_3

    .line 748
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 749
    .local v7, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    .end local v7    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v9}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    .line 755
    .local v1, "done":Z
    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 757
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static native selectReadable([Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCloseOnExec(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static setEffectiveGroup(I)V
    .locals 4
    .param p0, "gid"    # I

    .prologue
    .line 256
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setregid(II)I

    move-result v0

    .line 257
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 258
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setregid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    return-void
.end method

.method private static setEffectiveUser(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 246
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setreuid(II)I

    move-result v0

    .line 247
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 248
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setreuid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    return-void
.end method

.method static native setpgid(II)I
.end method

.method static native setregid(II)I
.end method

.method static native setreuid(II)I
.end method

.method private static startSystemServer()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 587
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Llibcore/io/OsConstants;->CAP_KILL:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Llibcore/io/OsConstants;->CAP_NET_ADMIN:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Llibcore/io/OsConstants;->CAP_NET_BIND_SERVICE:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Llibcore/io/OsConstants;->CAP_NET_BROADCAST:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Llibcore/io/OsConstants;->CAP_NET_RAW:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_MODULE:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_NICE:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_RESOURCE:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_TIME:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_TTY_CONFIG:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Llibcore/io/OsConstants;->CAP_BLOCK_SUSPEND:I

    aput v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 601
    .local v10, "capabilities":J
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "--setuid=1000"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "--setgid=1000"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3006,3007"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "--runtime-init"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "--nice-name=system_server"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "com.android.server.SystemServer"

    aput-object v1, v9, v0

    .line 610
    .local v9, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 615
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v9}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 617
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 620
    iget v0, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    const/4 v4, 0x0

    check-cast v4, [[I

    iget-wide v5, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v7, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v0 .. v8}, Ldalvik/system/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 632
    .local v15, "pid":I
    if-nez v15, :cond_0

    .line 633
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 636
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 627
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v12

    .line 628
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 627
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v12

    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method
