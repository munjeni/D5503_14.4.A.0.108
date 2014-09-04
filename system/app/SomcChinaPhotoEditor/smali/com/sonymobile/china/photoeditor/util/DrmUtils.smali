.class public Lcom/sonymobile/china/photoeditor/util/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static isDrm(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    .local v7, "filePath":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v8

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 40
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 42
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 46
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 50
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v0, v8

    .line 50
    goto :goto_0
.end method
