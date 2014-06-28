.class public Lcom/sonyericsson/conversations/util/DrmUtil;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Conversations - DrmUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 33
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "client":Landroid/drm/DrmManagerClient;
    const/4 v2, 0x1

    .line 36
    .local v2, "isForwardable":Z
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/FileUtil;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "path":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    const/4 v5, 0x3

    invoke-virtual {v0, p1, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 39
    .local v4, "result":I
    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 47
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 49
    return v2

    .line 39
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 41
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 45
    .local v1, "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 47
    .end local v1    # "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    throw v5
.end method
