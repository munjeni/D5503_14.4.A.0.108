.class public Lcom/android/mms/model/AudioModel;
.super Lcom/android/mms/model/MediaModel;
.source "AudioModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioModel"


# instance fields
.field private final mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, p2}, Lcom/android/mms/model/AudioModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/AudioModel;->initModelFromFileUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v2, "audio"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 81
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 83
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 85
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    invoke-static {p1}, Lcom/android/mms/model/AudioModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "path":Ljava/lang/String;
    const-string v0, "ct"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    .line 110
    :cond_0
    :goto_0
    const/16 v0, 0x2f

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mSrc:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v11    # "path":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 127
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    invoke-direct {v0, v10}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 90
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/android/mms/model/AudioModel;->isDownloadsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 92
    .restart local v11    # "path":Ljava/lang/String;
    const-string v0, "mimetype"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 93
    .end local v11    # "path":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-direct {p0, v9, p1}, Lcom/android/mms/model/AudioModel;->loadDocumentUri(Landroid/database/Cursor;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "path":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v11    # "path":Ljava/lang/String;
    :cond_3
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 97
    .restart local v11    # "path":Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    .line 100
    const-string v0, "album"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "album":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    const-string v2, "album"

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_4
    const-string v0, "artist"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "artist":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    const-string v2, "artist"

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 124
    .end local v7    # "album":Ljava/lang/String;
    .end local v8    # "artist":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    :cond_5
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
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :cond_6
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

    .line 129
    .restart local v11    # "path":Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->initMediaDuration()V

    .line 136
    return-void
.end method

.method private loadDocumentUri(Landroid/database/Cursor;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "displayName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 151
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Display name is null"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    const-string v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    .line 154
    return-object v0
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
    .line 195
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 196
    .local v0, "cr":Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/AudioModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 169
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "evtType":Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 175
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 187
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/model/AudioModel;->notifyModelChanged(Z)V

    .line 188
    return-void

    .line 177
    :cond_1
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0

    .line 179
    :cond_2
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0

    .line 181
    :cond_3
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 183
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/AudioModel;->mSeekTo:I

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
    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/mms/model/MediaModel;->initModelFromFileUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->initMediaDuration()V

    .line 161
    return-void
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->notifyModelChanged(Z)V

    .line 166
    return-void
.end method
