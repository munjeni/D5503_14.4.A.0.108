.class public Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final KEY_CACHE_UP_TO_DATE:Ljava/lang/String; = "cache-up-to-date"

.field private static sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldCheckDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->sOldCheckDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "maxEntries"    # I
    .param p3, "maxBytes"    # I
    .param p4, "version"    # I

    .prologue
    .line 44
    sget-object v8, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 45
    :try_start_0
    sget-boolean v2, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->sOldCheckDone:Z

    if-nez v2, :cond_0

    .line 46
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V

    .line 47
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->sOldCheckDone:Z

    .line 49
    :cond_0
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    .line 50
    .local v6, "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    if-nez v6, :cond_1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    .line 52
    .local v7, "cacheDir":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 54
    .local v1, "path":Ljava/lang/String;
    :try_start_1
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .end local v6    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    :try_start_2
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .end local v1    # "path":Ljava/lang/String;
    .end local v7    # "cacheDir":Ljava/io/File;
    :goto_0
    :try_start_3
    monitor-exit v8

    return-object v0

    .line 63
    .end local v0    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 56
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v6    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    .restart local v7    # "cacheDir":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v6

    .end local v6    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    .restart local v0    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    .end local v0    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    .end local v1    # "path":Ljava/lang/String;
    .end local v7    # "cacheDir":Ljava/io/File;
    .restart local v6    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    :cond_1
    move-object v0, v6

    .end local v6    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    .restart local v0    # "cache":Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
    goto :goto_0
.end method

.method private static removeOldFilesIfNecessary(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    .local v2, "pref":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 71
    .local v1, "n":I
    :try_start_0
    const-string v4, "cache-up-to-date"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    if-eqz v1, :cond_0

    .line 85
    :goto_1
    return-void

    .line 77
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "cache-up-to-date"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "imgcache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rev_geocoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bookmark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v3    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
