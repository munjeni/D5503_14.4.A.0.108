.class Lcom/android/server/pm/RuntimeSkinUpgradeUtil;
.super Ljava/lang/Object;
.source "RuntimeSkinUpgradeUtil.java"


# static fields
.field private static final ENABLED:Ljava/lang/String; = "enabled"

.field private static final SEMC_GENERIC_UXP_RES:Ljava/lang/String; = "system@framework@SemcGenericUxpRes.apk"

.field private static final UXP_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.uxp"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 101
    if-nez p0, :cond_1

    .line 102
    const/4 p0, 0x0

    .line 114
    .local v0, "file":Ljava/io/File;
    .local v1, "p":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 104
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "p":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1    # "p":Ljava/lang/String;
    const-string v2, "@idmap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 110
    const/16 v2, 0x40

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getUpgradedPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/server/pm/RuntimeSkinUpgradeUtil;->getUpgradedPathV17(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/android/server/pm/RuntimeSkinUpgradeUtil;->getUpgradedPathV16(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    return-object v0
.end method

.method private static getUpgradedPathV16(I)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 69
    if-eqz p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/system/runtime-skin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system@framework@SemcGenericUxpRes.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "enabled"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/pm/RuntimeSkinUpgradeUtil;->resolveSymlink([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUpgradedPathV17(I)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sonyericsson.uxp"

    invoke-static {p0, v2}, Landroid/content/pm/PackageManager;->getDataDirForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system@framework@SemcGenericUxpRes.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "enabled"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/pm/RuntimeSkinUpgradeUtil;->resolveSymlink([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs resolveSymlink([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "parts"    # [Ljava/lang/String;

    .prologue
    .line 81
    new-instance v2, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "symlink":Ljava/io/File;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 83
    new-instance v3, Ljava/io/File;

    aget-object v4, p0, v0

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .end local v2    # "symlink":Ljava/io/File;
    .local v3, "symlink":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    .end local v3    # "symlink":Ljava/io/File;
    .restart local v2    # "symlink":Ljava/io/File;
    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 87
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_1
    invoke-static {v1}, Lcom/android/server/pm/RuntimeSkinUpgradeUtil;->extractPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 88
    :catch_0
    move-exception v4

    goto :goto_1
.end method
