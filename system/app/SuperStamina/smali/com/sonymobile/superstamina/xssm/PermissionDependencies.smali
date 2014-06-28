.class public Lcom/sonymobile/superstamina/xssm/PermissionDependencies;
.super Ljava/lang/Object;
.source "PermissionDependencies.java"

# interfaces
.implements Lcom/sony/stamina/IApplicationDependency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;
    }
.end annotation


# static fields
.field private static final C2DM_PERMISSION:Ljava/lang/String; = "com.google.android.c2dm.permission.RECEIVE"

.field private static final READ_GSERVICES_PERMISSION:Ljava/lang/String; = "com.google.android.providers.gsf.permission.READ_GSERVICES"


# instance fields
.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->initPermissions(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private belongsToProcess([Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "infoArray"    # [Landroid/content/pm/ComponentInfo;
    .param p2, "process"    # Ljava/lang/String;

    .prologue
    .line 193
    if-eqz p2, :cond_1

    .line 194
    if-eqz p1, :cond_1

    .line 195
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/pm/ComponentInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 196
    .local v2, "info":Landroid/content/pm/ComponentInfo;
    iget-object v4, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    const/4 v4, 0x1

    .line 202
    .end local v0    # "arr$":[Landroid/content/pm/ComponentInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Landroid/content/pm/ComponentInfo;
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 195
    .restart local v0    # "arr$":[Landroid/content/pm/ComponentInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Landroid/content/pm/ComponentInfo;
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "arr$":[Landroid/content/pm/ComponentInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Landroid/content/pm/ComponentInfo;
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPermissionDependencyForProcess(Lcom/sony/stamina/ProcessInfo;Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 20
    .param p1, "processInfo"    # Lcom/sony/stamina/ProcessInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sony/stamina/ProcessInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sony/stamina/ProcessInfo;->uid:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "packages":[Ljava/lang/String;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v15, "permissionDependency":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;>;"
    move-object v3, v12

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v7, v5

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v11, v3, v7

    .line 128
    .local v11, "packageName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x100f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sony/stamina/ProcessInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v11, v1, v2}, Lcom/sonymobile/superstamina/Util;->getPackageInfo(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 133
    .local v10, "packInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->packageHasProcess(Landroid/content/pm/PackageInfo;Lcom/sony/stamina/ProcessInfo;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 134
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 135
    iget-object v4, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v5, 0x0

    .end local v7    # "i$":I
    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v14, v4, v6

    .line 136
    .local v14, "permission":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "i$":I
    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;

    .line 138
    .local v13, "pc":Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;
    iget-object v0, v13, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->permissionName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    iget v0, v13, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageUid:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sony/stamina/ProcessInfo;->uid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v17, v0

    iget-object v0, v13, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->permissionName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 142
    .local v16, "res":I
    if-nez v16, :cond_0

    .line 143
    invoke-virtual {v15, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 150
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "len$":I
    .end local v10    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "pc":Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;
    .end local v14    # "permission":Ljava/lang/String;
    .end local v16    # "res":I
    :catch_0
    move-exception v17

    .line 126
    :cond_1
    add-int/lit8 v5, v7, 0x1

    .local v5, "i$":I
    move v7, v5

    .end local v5    # "i$":I
    .restart local v7    # "i$":I
    goto/16 :goto_0

    .line 135
    .end local v7    # "i$":I
    .restart local v4    # "arr$":[Ljava/lang/String;
    .local v5, "i$":Ljava/util/Iterator;
    .restart local v9    # "len$":I
    .restart local v10    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "permission":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_1

    .line 156
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "permission":Ljava/lang/String;
    .restart local v7    # "i$":I
    :cond_3
    return-object v15
.end method

.method private initPermissions(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 57
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPermissions:Ljava/util/ArrayList;

    .line 59
    if-eqz v6, :cond_3

    .line 60
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 61
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_0

    .line 62
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .local v0, "arr$":[Landroid/content/pm/PermissionInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 64
    .local v4, "permission":Landroid/content/pm/PermissionInfo;
    const-string v7, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    iget-object v8, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPermissions:Ljava/util/ArrayList;

    new-instance v8, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;

    const-string v9, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v11, "com.google.android.gsf"

    invoke-direct {v8, v9, v10, v11}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    const-string v7, "com.google.android.c2dm.permission.RECEIVE"

    iget-object v8, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPermissions:Ljava/util/ArrayList;

    new-instance v8, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;

    const-string v9, "com.google.android.c2dm.permission.RECEIVE"

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v11, "com.google.android.gsf"

    invoke-direct {v8, v9, v10, v11}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "arr$":[Landroid/content/pm/PermissionInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "permission":Landroid/content/pm/PermissionInfo;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    return-void
.end method

.method private packageHasProcess(Landroid/content/pm/PackageInfo;Lcom/sony/stamina/ProcessInfo;)Z
    .locals 3
    .param p1, "packInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "process"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    const/4 v0, 0x1

    .line 169
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iget-object v2, p2, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->belongsToProcess([Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iget-object v2, p2, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->belongsToProcess([Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    iget-object v2, p2, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->belongsToProcess([Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    iget-object v2, p2, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->belongsToProcess([Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDependency(Lcom/sony/stamina/ProcessInfo;)[Lcom/sony/stamina/ProcessInfo;
    .locals 7
    .param p1, "process"    # Lcom/sony/stamina/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->getPermissionDependencyForProcess(Lcom/sony/stamina/ProcessInfo;Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v1

    .line 98
    .local v1, "extraDependencies":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v3, "pis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;

    .line 100
    .local v0, "dependency":Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget v5, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Lcom/sonymobile/superstamina/Util;->buildUidProcesslist(Landroid/content/pm/IPackageManager;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 103
    .end local v0    # "dependency":Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/sony/stamina/ProcessInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sony/stamina/ProcessInfo;

    return-object v4
.end method

.method public setObserver(Lcom/sony/stamina/IApplicationDependencyObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/sony/stamina/IApplicationDependencyObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    return-void
.end method
