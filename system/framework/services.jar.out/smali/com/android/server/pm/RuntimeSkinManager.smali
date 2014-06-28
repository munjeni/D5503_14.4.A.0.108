.class Lcom/android/server/pm/RuntimeSkinManager;
.super Ljava/lang/Object;
.source "RuntimeSkinManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final EMPTY:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "RuntimeSkin"

.field private static final UPDATE_SEQUENCE:Ljava/lang/Runnable;


# instance fields
.field private final mApplicationSkinInstallDir:Ljava/io/File;

.field private final mBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlacklistedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

.field private final mSettings:Lcom/android/server/pm/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/android/server/pm/RuntimeSkinManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/RuntimeSkinManager$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/RuntimeSkinManager;->UPDATE_SEQUENCE:Ljava/lang/Runnable;

    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/pm/RuntimeSkinManager;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService;)V
    .locals 7
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    .line 165
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    .line 173
    new-instance v5, Ljava/io/File;

    const-string v6, "app-skin"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mApplicationSkinInstallDir:Ljava/io/File;

    .line 174
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    .line 175
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    .line 176
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 177
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    .line 178
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 179
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    .line 180
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iput-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    .line 182
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_1

    .line 185
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 189
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 192
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 193
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addBlacklistedApplication(I)V
    .locals 3
    .param p1, "appId"    # I

    .prologue
    .line 1385
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    monitor-enter v1

    .line 1389
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1390
    monitor-exit v1

    .line 1391
    return-void

    .line 1390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addPendingBroadcast(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 819
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->get(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 820
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    move v1, v2

    .line 821
    .local v1, "newPackage":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 824
    .restart local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 825
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_1
    if-eqz v1, :cond_2

    .line 828
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->put(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 831
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 834
    :cond_2
    return-void

    .line 820
    .end local v1    # "newPackage":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private assertLock(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 847
    return-void
.end method

.method private clearRuntimeSkinLP(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 859
    iget-object v2, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 860
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_0

    .line 861
    iget-object v2, v1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/RuntimeSkinManager;->addPendingBroadcast(ILjava/lang/String;)V

    .line 863
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageSettingBase;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    goto :goto_0

    .line 865
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private copyApplicationSkin(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;
    .locals 9
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "scanPath"    # Ljava/lang/String;

    .prologue
    .line 879
    const/4 v5, 0x0

    .line 880
    .local v5, "result":Landroid/content/pm/RuntimeSkinDigest;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 882
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 885
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 886
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 887
    .local v4, "os":Ljava/io/OutputStream;
    invoke-static {v3, v4}, Landroid/content/pm/RuntimeSkinDigest;->createDigestFromStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v1

    .line 888
    .local v1, "digest":Landroid/content/pm/RuntimeSkinDigest;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->S_IRUSR:I

    sget v8, Llibcore/io/OsConstants;->S_IWUSR:I

    or-int/2addr v7, v8

    sget v8, Llibcore/io/OsConstants;->S_IRGRP:I

    or-int/2addr v7, v8

    sget v8, Llibcore/io/OsConstants;->S_IROTH:I

    or-int/2addr v7, v8

    invoke-interface {v6, p3, v7}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    move-object v5, v1

    .line 895
    if-nez v5, :cond_1

    .line 896
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 903
    .end local v1    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-object v5

    .line 890
    :catch_0
    move-exception v2

    .line 891
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    if-nez v5, :cond_1

    .line 896
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 892
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 893
    .local v2, "e":Llibcore/io/ErrnoException;
    :try_start_2
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when attempting chmod on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 895
    if-nez v5, :cond_1

    .line 896
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 895
    .end local v2    # "e":Llibcore/io/ErrnoException;
    :catchall_0
    move-exception v6

    if-nez v5, :cond_2

    .line 896
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    throw v6
.end method

.method private deleteAllFiles(Ljava/io/File;)Z
    .locals 9
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 926
    const/4 v5, 0x1

    .line 927
    .local v5, "result":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 928
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 929
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 930
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 931
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 932
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v5, 0x0

    .line 930
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 937
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const-string v6, "RuntimeSkin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error listing contents of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    .end local v2    # "files":[Ljava/io/File;
    :cond_2
    return v5
.end method

.method private deleteApplicationSkinFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 911
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mApplicationSkinInstallDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 912
    .local v0, "appSkinDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/pm/RuntimeSkinManager;->deleteAllFiles(Ljava/io/File;)Z

    .line 913
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 914
    return-void
.end method

.method private deletePackageForUserLI(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 957
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v8}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 959
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 960
    const/4 v6, 0x0

    .line 994
    :goto_0
    return v6

    .line 963
    :cond_0
    const/4 v6, 0x0

    .line 964
    .local v6, "updateSequence":Z
    iget-object v9, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 966
    const/4 v7, 0x0

    .line 967
    .local v7, "writeSettings":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 968
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v8

    iget-object v5, v8, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    .line 970
    .local v5, "skins":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v5, :cond_1

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, "change":Z
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 973
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 974
    .local v4, "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 979
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 980
    const/4 v0, 0x1

    goto :goto_2

    .line 983
    .end local v4    # "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v0, :cond_1

    .line 984
    const/4 v7, 0x1

    .line 985
    invoke-virtual {v3, p2, v5}, Lcom/android/server/pm/PackageSettingBase;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    goto :goto_1

    .line 993
    .end local v0    # "change":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "skins":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 989
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v7, :cond_5

    .line 990
    const/4 v6, 0x1

    .line 991
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 993
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private deletePackageForUserLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .param p3, "userId"    # I

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "updateSequence":Z
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/RuntimeSkinManager;->deletePackageForUserLI(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    if-eqz p2, :cond_0

    .line 290
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    invoke-static {v1, p3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    .line 292
    :cond_0
    const/4 v0, 0x1

    .line 294
    :cond_1
    return v0
.end method

.method private getApplicationSkinScanPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appSkinDir"    # Ljava/io/File;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 1005
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1006
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSkinPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mContext:Landroid/content/Context;

    const v2, 0x104003d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "@0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1029
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1033
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1034
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    .line 1036
    .local v1, "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1037
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1038
    .local v4, "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1039
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1040
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v5, :cond_0

    .line 1046
    .end local v1    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getUpgradedSkinPackageLP(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1057
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1058
    invoke-static {p1}, Lcom/android/server/pm/RuntimeSkinUpgradeUtil;->getUpgradedPath(I)Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1060
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1061
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v3, :cond_0

    .line 1062
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1066
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getUsersForUserId(I)[I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1077
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1078
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 1085
    :goto_0
    return-object v0

    .line 1080
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1081
    new-array v0, v2, [I

    goto :goto_0

    .line 1083
    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput p1, v0, v2

    .local v0, "users":[I
    goto :goto_0
.end method

.method private varargs initRuntimeSkinLI(I[Ljava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "skinPackages"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1100
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1101
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1102
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return v3

    .line 1107
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 1108
    .local v3, "result":Z
    :cond_2
    if-nez v3, :cond_0

    .line 1110
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1111
    .local v4, "skinPackage":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1112
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1113
    const/4 v3, 0x1

    .line 1114
    goto :goto_0

    .line 1110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isSystemSignedLP(Landroid/content/pm/PackageParser$Package;)Z
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1135
    iget-object v1, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1136
    .local v0, "apkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    const/4 v1, 0x1

    .line 1141
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 2
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1291
    const/4 v0, 0x0

    .line 1292
    .local v0, "valid":Z
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p3, v1}, Landroid/content/pm/RuntimeSkinInfo;->isValid(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/RuntimeSkinManager;->isVerifiedLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    const/4 v0, 0x1

    .line 1302
    :cond_0
    return v0
.end method

.method private isVerificationOkLP(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinVerificationInfo;)Z
    .locals 5
    .param p1, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "ver"    # Landroid/content/pm/RuntimeSkinVerificationInfo;

    .prologue
    .line 1351
    iget-object v2, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v3, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1353
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    iget-boolean v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-eqz v2, :cond_1

    .line 1354
    iget-object v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/server/pm/PackageSettingBase;->getRuntimeSkinDigest(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v0

    .line 1357
    .local v0, "digest":Landroid/content/pm/RuntimeSkinDigest;
    iget-object v2, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v2, v0}, Landroid/content/pm/RuntimeSkinDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetSignatures:[Landroid/content/pm/Signature;

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1365
    const/4 v2, 0x1

    .line 1376
    .end local v0    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    :goto_0
    return v2

    .line 1368
    .restart local v0    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    :cond_0
    const-string v2, "RuntimeSkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can not be verified, digest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or signatures does not match stored digest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    .end local v0    # "digest":Landroid/content/pm/RuntimeSkinDigest;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVerifiedLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 5
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1316
    const/4 v0, 0x0

    .line 1317
    .local v0, "verified":Z
    iget-boolean v1, p3, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/android/server/pm/PackageSettingBase;->verifiedRuntimeSkins:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/pm/PackageSettingBase;->verifiedRuntimeSkins:Ljava/util/HashSet;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p3, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1323
    :cond_0
    const/4 v0, 0x1

    .line 1337
    :cond_1
    return v0
.end method

.method private setRuntimeSkinLI(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "skinPackageName"    # Ljava/lang/String;

    .prologue
    .line 1153
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v8}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1154
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v8}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1156
    const/4 v4, 0x0

    .line 1162
    .local v4, "result":Z
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1163
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    if-eqz v8, :cond_0

    .line 1164
    const/4 v8, 0x0

    invoke-virtual {v3, p1, v8}, Lcom/android/server/pm/PackageSettingBase;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    .line 1165
    const/4 v4, 0x1

    goto :goto_0

    .line 1169
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 1170
    .local v7, "skinPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_4

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v8, :cond_4

    .line 1172
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v0, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v6, v0, v1

    .line 1173
    .local v6, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v5

    .line 1174
    .local v5, "ret":Z
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 1172
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1174
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1182
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "ret":Z
    .end local v6    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_4
    return v4
.end method

.method private setRuntimeSkinLI(ILjava/lang/String;Landroid/content/pm/RuntimeSkinInfo;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1195
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1196
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1200
    if-eqz p2, :cond_0

    iget-object v5, p3, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1201
    :cond_0
    const/4 v2, 0x0

    .line 1233
    :cond_1
    :goto_0
    return v2

    .line 1203
    :cond_2
    const/4 v2, 0x0

    .line 1204
    .local v2, "result":Z
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v6, p3, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1205
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1206
    .local v4, "skinPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 1208
    invoke-direct {p0, v4, p3}, Lcom/android/server/pm/RuntimeSkinManager;->updateIdmapLI(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)V

    .line 1211
    invoke-direct {p0, v1, v4, p3}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1212
    iget-object v5, p3, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/RuntimeSkinManager;->addPendingBroadcast(ILjava/lang/String;)V

    .line 1213
    iget-object v3, p3, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    .line 1221
    .local v3, "scanPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    .line 1222
    .local v0, "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_3

    .line 1223
    new-instance v0, Ljava/util/LinkedHashSet;

    .end local v0    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 1225
    .restart local v0    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/PackageSettingBase;->setUserRuntimeSkinState(ILjava/util/LinkedHashSet;)V

    .line 1227
    const/4 v2, 0x1

    goto :goto_0

    .line 1219
    .end local v0    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "scanPath":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "scanPath":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateIdmapLI(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)V
    .locals 7
    .param p1, "skinPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "rsi"    # Landroid/content/pm/RuntimeSkinInfo;

    .prologue
    .line 1243
    iget-object v4, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v4}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1244
    iget-object v4, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 1246
    iget-object v4, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1247
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x1

    .line 1249
    .local v1, "removeIdmap":Z
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1250
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v3

    .line 1251
    .local v3, "sharedGid":I
    iget-object v4, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1252
    .local v2, "ret":I
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1267
    .end local v2    # "ret":I
    .end local v3    # "sharedGid":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1271
    iget-object v4, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v5, p2, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Installer;->removeIdmap(Ljava/lang/String;)I

    .line 1273
    :cond_1
    return-void

    .line 1252
    .restart local v2    # "ret":I
    .restart local v3    # "sharedGid":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRuntimeSkinSequence()V
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/pm/RuntimeSkinManager;->UPDATE_SEQUENCE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1399
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/pm/RuntimeSkinManager;->UPDATE_SEQUENCE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1400
    return-void
.end method


# virtual methods
.method public cleanPackageLI(Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v6, 0x0

    .line 208
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 209
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 211
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v5, :cond_0

    .line 212
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v0, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 217
    .local v4, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, v4, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/Installer;->removeIdmap(Ljava/lang/String;)I

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_0
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->deleteApplicationSkinFolder(Ljava/lang/String;)V

    .line 223
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 224
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    move-object v5, v6

    .line 226
    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageSettingBase;->setRuntimeSkinDigests(Ljava/util/HashMap;)V

    .line 227
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSettingBase;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 229
    :cond_1
    return-void
.end method

.method public deletePackageLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .prologue
    .line 241
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 243
    const/4 v4, 0x0

    .line 245
    .local v4, "updateSequence":Z
    iget-object v7, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 246
    :try_start_0
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    .line 247
    .local v5, "userId":I
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/pm/RuntimeSkinManager;->deletePackageForUserLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)Z

    move-result v3

    .line 248
    .local v3, "ret":Z
    or-int/2addr v4, v3

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "ret":Z
    .end local v5    # "userId":I
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    if-eqz v4, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 255
    :cond_1
    return-void

    .line 250
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public deletePackageLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .param p3, "userId"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/RuntimeSkinManager;->deletePackageForUserLI(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 273
    :cond_0
    return-void
.end method

.method public getActiveRuntimeSkinPaths(I)[Ljava/lang/String;
    .locals 15
    .param p1, "userId"    # I

    .prologue
    .line 453
    iget-object v13, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    monitor-enter v13

    .line 454
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 455
    .local v0, "appId":I
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklist:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 459
    sget-object v12, Lcom/android/server/pm/RuntimeSkinManager;->EMPTY:[Ljava/lang/String;

    monitor-exit v13

    .line 479
    :goto_0
    return-object v12

    .line 461
    :cond_0
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 463
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 464
    .local v6, "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v13

    .line 465
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v11

    .line 466
    .local v11, "users":[I
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 467
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    move-object v1, v11

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget v10, v1, v4

    .line 468
    .local v10, "uid":I
    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v8

    .line 469
    .local v8, "pus":Landroid/content/pm/PackageUserState;
    iget-object v12, v8, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    if-eqz v12, :cond_3

    .line 470
    iget-object v12, v8, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 471
    .local v9, "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v12, :cond_2

    .line 472
    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 478
    .end local v1    # "arr$":[I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "pus":Landroid/content/pm/PackageUserState;
    .end local v9    # "skin":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "uid":I
    .end local v11    # "users":[I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 461
    .end local v0    # "appId":I
    .end local v6    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 467
    .restart local v0    # "appId":I
    .restart local v1    # "arr$":[I
    .restart local v5    # "len$":I
    .restart local v6    # "paths":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v8    # "pus":Landroid/content/pm/PackageUserState;
    .restart local v10    # "uid":I
    .restart local v11    # "users":[I
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 478
    .end local v1    # "arr$":[I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "pus":Landroid/content/pm/PackageUserState;
    .end local v10    # "uid":I
    :cond_4
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 479
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getRuntimeSkin(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 490
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 502
    :goto_0
    return-object v0

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 495
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 496
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 497
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 498
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    move-object v0, v2

    .line 497
    goto :goto_1
.end method

.method public getRuntimeSkinVerificationInfo(Ljava/lang/String;)[Landroid/content/pm/RuntimeSkinVerificationInfo;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v9, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 375
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 376
    .local v7, "skinPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v8, :cond_3

    .line 377
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v0, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 380
    .local v5, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    new-instance v6, Landroid/content/pm/RuntimeSkinVerificationInfo;

    invoke-direct {v6}, Landroid/content/pm/RuntimeSkinVerificationInfo;-><init>()V

    .line 381
    .local v6, "rsvi":Landroid/content/pm/RuntimeSkinVerificationInfo;
    iget-object v8, v5, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    .line 382
    iget-object v8, v5, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetPackageName:Ljava/lang/String;

    .line 383
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v10, v5, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 384
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    .line 385
    iget v8, v3, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iput v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetVersionCode:I

    .line 386
    invoke-direct {p0, v3, v7, v5}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v8

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->valid:Z

    .line 387
    invoke-direct {p0, v3, v7, v5}, Lcom/android/server/pm/RuntimeSkinManager;->isVerifiedLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v8

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    .line 388
    iget-object v8, v5, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageSettingBase;->getRuntimeSkinDigest(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v8

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 389
    iget-object v8, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v8, :cond_0

    .line 390
    iget-object v8, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v8, v8, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetSignatures:[Landroid/content/pm/Signature;

    .line 404
    :cond_0
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->valid:Z

    .line 394
    iget-boolean v8, v5, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    iput-boolean v8, v6, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    goto :goto_1

    .line 408
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    .end local v5    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v6    # "rsvi":Landroid/content/pm/RuntimeSkinVerificationInfo;
    .end local v7    # "skinPs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 406
    .restart local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    .restart local v7    # "skinPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/pm/RuntimeSkinVerificationInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/pm/RuntimeSkinVerificationInfo;

    monitor-exit v9

    .line 409
    .end local v0    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinVerificationInfo;>;"
    :goto_2
    return-object v8

    .line 408
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public initRuntimeSkin(I)Z
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 513
    const/4 v4, 0x0

    .line 517
    .local v4, "result":Z
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->getDefaultSkinPackage()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "defaultSkinPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 519
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 521
    .local v6, "uid":I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->getUpgradedSkinPackageLP(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    aput-object v1, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/RuntimeSkinManager;->initRuntimeSkinLI(I[Ljava/lang/String;)Z

    move-result v5

    .line 523
    .local v5, "ret":Z
    or-int/2addr v4, v5

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    .end local v5    # "ret":Z
    .end local v6    # "uid":I
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 530
    return v4

    .line 525
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7

    .line 526
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method

.method public isSkinTrusted(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v2, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 804
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 805
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    .line 806
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/RuntimeSkinManager;->isSystemSignedLP(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    monitor-exit v2

    .line 810
    :goto_0
    return v1

    .line 809
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scanPackageLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 17
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "scanMode"    # I

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 549
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 551
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/RuntimeSkinManager;->addBlacklistedApplication(I)V

    .line 562
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-nez v13, :cond_3

    .line 564
    const/4 v13, 0x0

    check-cast v13, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSettingBase;->setRuntimeSkinDigests(Ljava/util/HashMap;)V

    .line 565
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSettingBase;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 566
    const/4 v13, 0x1

    .line 664
    :goto_1
    return v13

    .line 552
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v13, :cond_0

    .line 553
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 554
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/RuntimeSkinManager;->mBlacklistedPackages:Ljava/util/HashSet;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 555
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/RuntimeSkinManager;->addBlacklistedApplication(I)V

    goto :goto_0

    .line 576
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_3
    move/from16 v0, p3

    and-int/lit16 v13, v0, 0x800

    const/16 v14, 0x800

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x80

    const/16 v14, 0x80

    if-eq v13, v14, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/RuntimeSkinManager;->isSystemSignedLP(Landroid/content/pm/PackageParser$Package;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    const/4 v12, 0x1

    .line 580
    .local v12, "trusted":Z
    :goto_2
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/RuntimeSkinManager;->mApplicationSkinInstallDir:Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v3, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 583
    .local v3, "appSkinDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v7, 0x1

    .line 585
    .local v7, "inflate":Z
    :goto_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v4, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v8, :cond_a

    aget-object v10, v4, v6

    .line 586
    .local v10, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    if-nez v13, :cond_7

    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 587
    const-string v13, "RuntimeSkin"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid runtime skin info in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 576
    .end local v3    # "appSkinDir":Ljava/io/File;
    .end local v4    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v6    # "i$":I
    .end local v7    # "inflate":Z
    .end local v8    # "len$":I
    .end local v10    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v12    # "trusted":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 583
    .restart local v3    # "appSkinDir":Ljava/io/File;
    .restart local v12    # "trusted":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 590
    .restart local v4    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .restart local v6    # "i$":I
    .restart local v7    # "inflate":Z
    .restart local v8    # "len$":I
    .restart local v10    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_7
    iput-boolean v12, v10, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    .line 591
    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/server/pm/RuntimeSkinManager;->getApplicationSkinScanPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    .line 592
    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSettingBase;->getRuntimeSkinDigest(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v13

    iput-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 594
    new-instance v11, Ljava/io/File;

    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    .local v11, "scanFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-eqz v13, :cond_8

    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v13}, Landroid/content/pm/RuntimeSkinDigest;->getTimeStamp()J

    move-result-wide v13

    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    cmp-long v13, v13, v15

    if-eqz v13, :cond_9

    .line 601
    :cond_8
    const/4 v7, 0x1

    .line 585
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 603
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/RuntimeSkinManager;->updateIdmapLI(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)V

    goto :goto_5

    .line 607
    .end local v10    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v11    # "scanFile":Ljava/io/File;
    :cond_a
    if-eqz v7, :cond_e

    .line 611
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/RuntimeSkinManager;->deleteAllFiles(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 612
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 617
    :try_start_0
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    sget v15, Llibcore/io/OsConstants;->S_IRWXU:I

    invoke-interface {v13, v14, v15}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    .line 620
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    sget v15, Llibcore/io/OsConstants;->S_IRWXU:I

    sget v16, Llibcore/io/OsConstants;->S_IRGRP:I

    or-int v15, v15, v16

    sget v16, Llibcore/io/OsConstants;->S_IXGRP:I

    or-int v15, v15, v16

    sget v16, Llibcore/io/OsConstants;->S_IROTH:I

    or-int v15, v15, v16

    sget v16, Llibcore/io/OsConstants;->S_IXOTH:I

    or-int v15, v15, v16

    invoke-interface {v13, v14, v15}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 633
    .local v2, "am":Landroid/content/res/AssetManager;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 635
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    array-length v8, v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v8, :cond_d

    aget-object v10, v4, v6

    .line 639
    .restart local v10    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    iget-object v14, v10, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v14}, Lcom/android/server/pm/RuntimeSkinManager;->copyApplicationSkin(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v13

    iput-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 640
    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-eqz v13, :cond_c

    .line 642
    iget-object v13, v10, Landroid/content/pm/RuntimeSkinInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/RuntimeSkinDigest;->setTimeStamp(J)V

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/RuntimeSkinManager;->updateIdmapLI(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 622
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v10    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :catch_0
    move-exception v5

    .line 623
    .local v5, "e":Llibcore/io/ErrnoException;
    const-string v13, "RuntimeSkin"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not create "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 625
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 628
    .end local v5    # "e":Llibcore/io/ErrnoException;
    :cond_b
    const-string v13, "RuntimeSkin"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not delete the application skins in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 644
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v10    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_c
    :try_start_2
    const-string v13, "RuntimeSkin"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not copy asset "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/RuntimeSkinManager;->deleteApplicationSkinFolder(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    const/4 v13, 0x0

    .line 652
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    goto/16 :goto_1

    .end local v10    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_d
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 659
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSettingBase;->setRuntimeSkinDigests([Landroid/content/pm/RuntimeSkinInfo;)V

    .line 661
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSettingBase;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 664
    .end local v2    # "am":Landroid/content/res/AssetManager;
    :cond_e
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 652
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    :catchall_0
    move-exception v13

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    throw v13
.end method

.method public setRuntimeSkin(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 682
    const/4 v4, 0x0

    .line 683
    .local v4, "result":Z
    iget-object v7, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 684
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 685
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v5, v0, v1

    .line 687
    .local v5, "uid":I
    if-nez p2, :cond_1

    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/pm/RuntimeSkinManager;->clearRuntimeSkinLP(I)Z

    move-result v3

    .line 694
    .local v3, "res":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 698
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 700
    :cond_0
    or-int/2addr v4, v3

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v3    # "res":Z
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;)Z

    move-result v3

    .restart local v3    # "res":Z
    goto :goto_1

    .line 702
    .end local v3    # "res":Z
    .end local v5    # "uid":I
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    if-eqz v4, :cond_3

    .line 707
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 713
    :cond_3
    return v4

    .line 702
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 703
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method public setRuntimeSkinVerificationInfo(Ljava/lang/String;[Landroid/content/pm/RuntimeSkinVerificationInfo;)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verificationInfo"    # [Landroid/content/pm/RuntimeSkinVerificationInfo;

    .prologue
    .line 311
    iget-object v11, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 312
    :try_start_0
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 314
    .local v5, "skinPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_6

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_6

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v10, :cond_6

    .line 315
    const/4 v9, 0x0

    .line 316
    .local v9, "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    array-length v10, v0

    if-lez v10, :cond_3

    .line 317
    move-object/from16 v1, p2

    .local v1, "arr$":[Landroid/content/pm/RuntimeSkinVerificationInfo;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v8, v1, v2

    .line 318
    .local v8, "ver":Landroid/content/pm/RuntimeSkinVerificationInfo;
    if-nez v8, :cond_1

    .line 317
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0, v5, v8}, Lcom/android/server/pm/RuntimeSkinManager;->isVerificationOkLP(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinVerificationInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 322
    if-nez v9, :cond_2

    .line 323
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 329
    .restart local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    new-instance v10, Landroid/util/Pair;

    iget-object v13, v8, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    iget v14, v8, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetVersionCode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    .end local v1    # "arr$":[Landroid/content/pm/RuntimeSkinVerificationInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "skinPs":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "ver":Landroid/content/pm/RuntimeSkinVerificationInfo;
    .end local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v10

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v10

    .line 359
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 334
    .restart local v5    # "skinPs":Lcom/android/server/pm/PackageSetting;
    .restart local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_3
    :try_start_3
    invoke-virtual {v5, v9}, Lcom/android/server/pm/PackageSettingBase;->setRuntimeSkinVerificationState(Ljava/util/HashSet;)V

    .line 335
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 338
    const/4 v6, 0x0

    .line 339
    .local v6, "updateSequence":Z
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget v7, v1, v2

    .line 340
    .local v7, "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 341
    .local v4, "skinPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_4

    iget-object v10, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 346
    const/4 v6, 0x1

    .line 349
    move-object/from16 v0, p1

    invoke-direct {p0, v7, v0}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 350
    iget-object v10, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v7}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 339
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 354
    .end local v4    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "userId":I
    :cond_5
    if-eqz v6, :cond_6

    .line 355
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 358
    .end local v1    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "updateSequence":Z
    .end local v9    # "verifiedRuntimeSkins":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_6
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    return-void
.end method

.method public updateRuntimeSkinPackageInfo(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v7, 0x1

    .line 420
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v5, :cond_0

    .line 421
    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/content/pm/PackageInfo;->isVerifiedSkin:Z

    .line 424
    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v1, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 425
    .local v4, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-boolean v5, v4, Landroid/content/pm/RuntimeSkinInfo;->trusted:Z

    if-eqz v5, :cond_1

    .line 426
    iput-boolean v7, p1, Landroid/content/pm/PackageInfo;->isVerifiedSkin:Z

    .line 441
    .end local v1    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_0
    :goto_1
    return-object p1

    .line 428
    .restart local v1    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    :cond_1
    iget-object v5, p2, Lcom/android/server/pm/PackageSettingBase;->verifiedRuntimeSkins:Ljava/util/HashSet;

    if-eqz v5, :cond_2

    .line 429
    iget-object v5, p0, Lcom/android/server/pm/RuntimeSkinManager;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 430
    .local v0, "appPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/pm/RuntimeSkinManager;->isValidLP(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    iput-boolean v7, p1, Landroid/content/pm/PackageInfo;->isVerifiedSkin:Z

    goto :goto_1

    .line 424
    .end local v0    # "appPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateSettingsLI(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Z
    .locals 14
    .param p1, "res"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .prologue
    .line 730
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 731
    iget-object v12, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 733
    const/4 v9, 0x0

    .line 734
    .local v9, "updateSettings":Z
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    if-eqz v12, :cond_0

    .line 735
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->updateSettingsLI(Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)Z

    move-result v9

    .line 739
    :cond_0
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    if-nez v12, :cond_2

    const/4 v12, -0x1

    invoke-direct {p0, v12}, Lcom/android/server/pm/RuntimeSkinManager;->getUsersForUserId(I)[I

    move-result-object v11

    .line 741
    .local v11, "users":[I
    :goto_0
    move-object v0, v11

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget v10, v0, v3

    .line 742
    .local v10, "userId":I
    invoke-direct {p0, v10}, Lcom/android/server/pm/RuntimeSkinManager;->getRuntimeSkinLP(I)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 743
    .local v8, "skinPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_3

    .line 744
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .local v1, "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v7, v1, v2

    .line 745
    .local v7, "rsi":Landroid/content/pm/RuntimeSkinInfo;
    iget-object v12, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iget-object v13, v7, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 746
    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10, v12, v7}, Lcom/android/server/pm/RuntimeSkinManager;->setRuntimeSkinLI(ILjava/lang/String;Landroid/content/pm/RuntimeSkinInfo;)Z

    move-result v6

    .line 747
    .local v6, "ret":Z
    or-int/2addr v9, v6

    .line 744
    .end local v6    # "ret":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 739
    .end local v1    # "arr$":[Landroid/content/pm/RuntimeSkinInfo;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "rsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v8    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "userId":I
    .end local v11    # "users":[I
    :cond_2
    iget-object v11, p1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    goto :goto_0

    .line 741
    .restart local v8    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v10    # "userId":I
    .restart local v11    # "users":[I
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 752
    .end local v8    # "skinPkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "userId":I
    :cond_4
    if-eqz v9, :cond_5

    .line 753
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 756
    :cond_5
    return v9
.end method

.method public updateSettingsLI(Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)Z
    .locals 9
    .param p1, "res"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .prologue
    .line 770
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 771
    iget-object v6, p0, Lcom/android/server/pm/RuntimeSkinManager;->mInstallLock:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/android/server/pm/RuntimeSkinManager;->assertLock(Ljava/lang/Object;)V

    .line 773
    const/4 v4, 0x0

    .line 774
    .local v4, "updateSettings":Z
    iget-object v6, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    if-eqz v6, :cond_0

    .line 780
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    .line 781
    .local v5, "userId":I
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/pm/RuntimeSkinManager;->getUpgradedSkinPackageLP(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->getDefaultSkinPackage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/RuntimeSkinManager;->initRuntimeSkinLI(I[Ljava/lang/String;)Z

    move-result v3

    .line 783
    .local v3, "ret":Z
    or-int/2addr v4, v3

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ret":Z
    .end local v5    # "userId":I
    :cond_0
    iget-object v6, p1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->skinForUsers:[I

    if-eqz v6, :cond_1

    .line 788
    invoke-direct {p0}, Lcom/android/server/pm/RuntimeSkinManager;->updateRuntimeSkinSequence()V

    .line 791
    :cond_1
    return v4
.end method
