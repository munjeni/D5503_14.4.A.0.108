.class public final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$1;,
        Landroid/app/LoadedApk$ServiceDispatcher;,
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$WarningContextClassLoader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "LoadedApk"


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mIncludeCode:Z

.field private final mLibDir:Ljava/lang/String;

.field private final mOverlayDirs:[Ljava/lang/String;

.field final mPackageName:Ljava/lang/String;

.field private final mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResDir:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mUnboundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Landroid/app/LoadedApk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/LoadedApk;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 4
    .param p1, "activityThread"    # Landroid/app/ActivityThread;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 105
    iput v3, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 147
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 148
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 149
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 150
    const-string v0, "android"

    iput-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 151
    iput-object v2, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 152
    iput-object v2, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    .line 154
    iput-object v2, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 155
    iput-object v2, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 157
    iput-object v2, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 158
    iput-object v2, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 159
    iput-boolean v3, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 161
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 162
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZ)V
    .locals 3
    .param p1, "activityThread"    # Landroid/app/ActivityThread;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p5, "securityViolation"    # Z
    .param p6, "includeCode"    # Z

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 98
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 100
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 102
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 120
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 121
    iput-object p2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 122
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 123
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 124
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 125
    .local v0, "myUid":I
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_1

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 127
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    .line 128
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager;->getDataDirForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 133
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 135
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 137
    iput-boolean p5, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 138
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 139
    iget-object v1, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, p3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 140
    return-void

    .line 125
    :cond_1
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "list1"    # [Ljava/lang/String;
    .param p1, "list2"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x3a

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x12c

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 233
    .local v2, "first":Z
    if-eqz p0, :cond_1

    .line 234
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 235
    .local v6, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 240
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 245
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 247
    .local v1, "dupCheck":Z
    :goto_2
    if-eqz p1, :cond_5

    .line 248
    move-object v0, p1

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .line 249
    .restart local v6    # "s":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-static {p0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 248
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 245
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dupCheck":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 253
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "dupCheck":Z
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "s":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 254
    const/4 v2, 0x0

    .line 258
    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 256
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 262
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 212
    const/4 v2, 0x0

    .line 215
    :goto_0
    return-object v2

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 215
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeJavaContextClassLoader()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 368
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 371
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v3, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 376
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    .line 377
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get package info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; is package not installed?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 372
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get package info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; is system dying?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 392
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v9, :cond_2

    move v6, v7

    .line 393
    .local v6, "sharedUserIdSet":Z
    :goto_0
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v7

    .line 396
    .local v4, "processNameNotDefault":Z
    :goto_1
    if-nez v6, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    move v5, v7

    .line 397
    .local v5, "sharable":Z
    :goto_2
    if-eqz v5, :cond_5

    new-instance v0, Landroid/app/LoadedApk$WarningContextClassLoader;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$1;)V

    .line 401
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 402
    return-void

    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v4    # "processNameNotDefault":Z
    .end local v5    # "sharable":Z
    .end local v6    # "sharedUserIdSet":Z
    :cond_2
    move v6, v8

    .line 392
    goto :goto_0

    .restart local v6    # "sharedUserIdSet":Z
    :cond_3
    move v4, v8

    .line 393
    goto :goto_1

    .restart local v4    # "processNameNotDefault":Z
    :cond_4
    move v5, v8

    .line 396
    goto :goto_2

    .line 397
    .restart local v5    # "sharable":Z
    :cond_5
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_3
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 629
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 630
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 631
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    .line 632
    .local v3, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v2, :cond_3

    .line 633
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 634
    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_3

    .line 635
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 637
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 640
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 642
    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    .line 643
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 644
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unregistered here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 649
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 650
    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 653
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 656
    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 658
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    .line 659
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 660
    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_4

    .line 661
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 662
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 674
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 667
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 668
    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 671
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/content/ServiceConnection;

    .prologue
    .line 892
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 893
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 895
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v3, 0x0

    .line 896
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v2, :cond_3

    .line 897
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 898
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_3

    .line 899
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 901
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 902
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 905
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 907
    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    .line 908
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 909
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unbound here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 913
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 914
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 915
    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 920
    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 922
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    .line 923
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 924
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_4

    .line 925
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 926
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 937
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 931
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 932
    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 935
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 11

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_0

    .line 268
    iget-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    .line 340
    :goto_0
    return-object v9

    .line 271
    :cond_0
    iget-boolean v9, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v10, "android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 272
    iget-object v8, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 273
    .local v8, "zip":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 284
    .local v6, "libraryPath":Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v0, v9, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 286
    .local v0, "instrumentationAppDir":Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, v9, Landroid/app/ActivityThread;->mInstrumentationAppLibraryDir:Ljava/lang/String;

    .line 288
    .local v1, "instrumentationAppLibraryDir":Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v2, v9, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 290
    .local v2, "instrumentationAppPackage":Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v4, v9, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 292
    .local v4, "instrumentedAppDir":Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v9, Landroid/app/ActivityThread;->mInstrumentedAppLibraryDir:Ljava/lang/String;

    .line 294
    .local v5, "instrumentedAppLibraryDir":Ljava/lang/String;
    const/4 v3, 0x0

    .line 296
    .local v3, "instrumentationLibs":[Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 298
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 299
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 301
    invoke-static {v2}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 306
    :cond_2
    iget-object v9, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    if-nez v9, :cond_3

    if-eqz v3, :cond_4

    .line 308
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    invoke-static {v10, v3}, Landroid/app/LoadedApk;->combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 323
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 325
    .local v7, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":/system/lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    iget-object v10, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v9, v8, v6, v10}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v9

    iput-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 330
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    .line 332
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 340
    .end local v0    # "instrumentationAppDir":Ljava/lang/String;
    .end local v1    # "instrumentationAppLibraryDir":Ljava/lang/String;
    .end local v2    # "instrumentationAppPackage":Ljava/lang/String;
    .end local v3    # "instrumentationLibs":[Ljava/lang/String;
    .end local v4    # "instrumentedAppDir":Ljava/lang/String;
    .end local v5    # "instrumentedAppLibraryDir":Ljava/lang/String;
    .end local v6    # "libraryPath":Ljava/lang/String;
    .end local v7    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "zip":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    goto/16 :goto_0

    .line 341
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 334
    :cond_5
    :try_start_1
    iget-object v9, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-nez v9, :cond_6

    .line 335
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    iput-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 337
    :cond_6
    iget-object v9, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getLibDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayDirs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 11
    .param p1, "r"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    .prologue
    .line 600
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 601
    const/4 v1, 0x0

    .line 602
    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v7, 0x0

    .line 603
    .local v7, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    .line 604
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/ArrayMap;

    move-object v7, v0

    .line 605
    if-eqz v7, :cond_3

    .line 606
    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .line 609
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v9, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    .line 610
    :try_start_1
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 612
    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz p5, :cond_2

    .line 613
    if-nez v8, :cond_1

    .line 614
    :try_start_2
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 615
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :goto_1
    invoke-virtual {v7, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 623
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .line 620
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    :try_start_4
    invoke-virtual {v9, p2, p3}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_2

    .line 624
    :catchall_0
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_3

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_3

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_1
    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_1

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_2

    :cond_3
    move-object v8, v7

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    .prologue
    .line 492
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 493
    iget-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 496
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    .line 870
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 871
    const/4 v2, 0x0

    .line 872
    .local v2, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 873
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    .line 874
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 876
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    .line 877
    :try_start_1
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 878
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-nez v1, :cond_0

    .line 879
    :try_start_2
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 880
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    :cond_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :goto_1
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 884
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    :try_start_3
    invoke-virtual {v3, p2, p3}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_1

    .line 887
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_2

    :cond_2
    move-object v3, v2

    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 169
    sget-boolean v0, Landroid/app/LoadedApk;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 171
    return-void
.end method

.method public isSecurityViolation()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    return v0
.end method

.method public makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 8
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 501
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz v5, :cond_1

    .line 502
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 540
    :cond_0
    :goto_0
    return-object v0

    .line 505
    :cond_1
    const/4 v0, 0x0

    .line 507
    .local v0, "app":Landroid/app/Application;
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 508
    .local v1, "appClass":Ljava/lang/String;
    if-nez p1, :cond_2

    if-nez v1, :cond_3

    .line 509
    :cond_2
    const-string v1, "android.app.Application"

    .line 513
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 514
    .local v3, "cl":Ljava/lang/ClassLoader;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {v5, p0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 515
    .local v2, "appContext":Landroid/app/ContextImpl;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 517
    invoke-virtual {v2, v0}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    .end local v2    # "appContext":Landroid/app/ContextImpl;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iput-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 528
    if-eqz p2, :cond_0

    .line 530
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v4

    .line 532
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 533
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 518
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 519
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 520
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {}, Landroid/os/StrictMode;->vmRegistrationLeaksEnabled()Z

    move-result v3

    .line 546
    .local v3, "reportRegistrationLeaks":Z
    iget-object v7, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 548
    .local v4, "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v4, :cond_1

    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 550
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 551
    .local v2, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v1, Landroid/app/IntentReceiverLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked IntentReceiver "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "originally registered here. Are you missing a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "call to unregisterReceiver()?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 556
    .local v1, "leak":Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 557
    const-string v7, "ActivityThread"

    invoke-virtual {v1}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    if-eqz v3, :cond_0

    .line 559
    invoke-static {v1}, Landroid/os/StrictMode;->onIntentReceiverLeaked(Ljava/lang/Throwable;)V

    .line 562
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 549
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    .end local v0    # "i":I
    .end local v1    # "leak":Landroid/app/IntentReceiverLeaked;
    .end local v2    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_1
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v7, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 573
    .local v6, "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v6, :cond_3

    .line 574
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 575
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 576
    .local v5, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v1, Landroid/app/ServiceConnectionLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked ServiceConnection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was originally bound here"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "leak":Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 580
    const-string v7, "ActivityThread"

    invoke-virtual {v1}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    if-eqz v3, :cond_2

    .line 582
    invoke-static {v1}, Landroid/os/StrictMode;->onServiceConnectionLeaked(Ljava/lang/Throwable;)V

    .line 585
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    :goto_3
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 593
    .end local v0    # "i":I
    .end local v1    # "leak":Landroid/app/ServiceConnectionLeaked;
    .end local v5    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_3
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    return-void

    .line 587
    .restart local v0    # "i":I
    .restart local v1    # "leak":Landroid/app/ServiceConnectionLeaked;
    .restart local v5    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catch_0
    move-exception v7

    goto :goto_3

    .line 564
    .end local v5    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v6    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .local v1, "leak":Landroid/app/IntentReceiverLeaked;
    .restart local v2    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 191
    return-void
.end method
