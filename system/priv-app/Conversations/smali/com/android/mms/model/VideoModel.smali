.class public Lcom/android/mms/model/VideoModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "VideoModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoModel"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "region"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 62
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "scheme":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0, p2}, Lcom/android/mms/model/VideoModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    .line 69
    return-void

    .line 65
    :cond_1
    const-string v0, "file"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/VideoModel;->initModelFromFileUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "region"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v2, "video"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 74
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 78
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 79
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 81
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    const/4 v8, 0x0

    .line 86
    .local v8, "path":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/model/MediaModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    .line 99
    :goto_0
    if-eqz v8, :cond_4

    .line 100
    const/16 v0, 0x2f

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mSrc:Ljava/lang/String;

    .line 106
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "source is unknown."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v8    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 90
    .restart local v8    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 91
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 93
    :cond_2
    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getIsMimeTypeFromFileExtension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-static {v8}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mSrc:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    .end local v8    # "path":Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_7
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .restart local v8    # "path":Ljava/lang/String;
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->initMediaDuration()V

    .line 129
    return-void
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 168
    .local v0, "cr":Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/VideoModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "evtType":Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 145
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 147
    iput-boolean v3, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/VideoModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/mms/model/VideoModel;->notifyModelChanged(Z)V

    .line 164
    return-void

    .line 148
    :cond_1
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 150
    iget-short v2, p0, Lcom/android/mms/model/VideoModel;->mFill:S

    if-eq v2, v3, :cond_0

    .line 151
    iput-boolean v4, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    goto :goto_0

    .line 153
    :cond_2
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 155
    iput-boolean v3, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    goto :goto_0

    .line 156
    :cond_3
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 158
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/VideoModel;->mSeekTo:I

    .line 159
    iput-boolean v3, p0, Lcom/android/mms/model/VideoModel;->mVisible:Z

    goto :goto_0
.end method

.method protected initModelFromFileUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/android/mms/model/RegionMediaModel;->initModelFromFileUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->initMediaDuration()V

    .line 135
    return-void
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
