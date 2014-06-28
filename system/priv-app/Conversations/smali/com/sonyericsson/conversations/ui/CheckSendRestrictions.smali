.class public Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;
.super Ljava/lang/Object;
.source "CheckSendRestrictions.java"


# static fields
.field public static final EXTERNAL_EXCEPTION_NO_PERMISSION:I = 0xd3

.field public static final EXTERNAL_SENDMULTIPLE_ERROR_CANNOT_ADD_ALL_CONTENT:I = 0xd0

.field public static final EXTERNAL_SENDMULTIPLE_ERROR_CANNOT_ADD_CONTENT:I = 0xcf

.field public static final EXTERNAL_SENDMULTIPLE_ERROR_TEXT_SIZE:I = 0xd1

.field public static final EXTERNAL_SENDMULTIPLE_ERROR_UNSUPPORTED_RESOLUTION:I = 0xd2

.field public static final EXTERNAL_SEND_ERROR_AUDIO_SIZE:I = 0xcb

.field public static final EXTERNAL_SEND_ERROR_CANNOT_ADD_CONTENT:I = 0xcd

.field public static final EXTERNAL_SEND_ERROR_DRM:I = 0xc9

.field public static final EXTERNAL_SEND_ERROR_MESSAGE_SIZE:I = 0xcc

.field public static final EXTERNAL_SEND_ERROR_NONE:I = 0x0

.field public static final EXTERNAL_SEND_ERROR_TEXT_SIZE:I = 0xce

.field public static final EXTERNAL_SEND_ERROR_VIDEO_NOT_SUPPORTED:I = 0xd4

.field public static final EXTERNAL_SEND_ERROR_VIDEO_SIZE:I = 0xca

.field public static final INTENT_EXTRA_EXTERNAL_SEND_ERROR_CODE:Ljava/lang/String; = "external_send_error_code"

.field private static final TAG:Ljava/lang/String; = "CheckSendRestrictions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExternalSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I
    .locals 4
    .param p0, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "errorCode":I
    if-eqz p0, :cond_0

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->needCheckContent:Z

    if-eqz v3, :cond_0

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 92
    .local v2, "messageUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 93
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkForwardSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I

    move-result v1

    .line 106
    .end local v2    # "messageUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v1

    .line 94
    .restart local v2    # "messageUri":Landroid/net/Uri;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->handleExternalSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkTextLength(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 100
    :cond_3
    const/16 v1, 0xcf

    goto :goto_0

    .line 102
    .end local v2    # "messageUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/SecurityException;
    const/16 v1, 0xd3

    goto :goto_0
.end method

.method private static checkForwardSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I
    .locals 11
    .param p0, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 287
    .local v1, "errorCode":I
    iget-wide v7, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardThreadid:J

    .line 288
    .local v7, "threadid":J
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 289
    .local v4, "messageUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 290
    .local v5, "msg":Lcom/sonyericsson/conversations/model/Message;
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    .line 291
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v9

    invoke-virtual {v9, v7, v8, v4}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    .line 294
    :cond_0
    if-nez v5, :cond_1

    .line 295
    invoke-static {p1, v4}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    .line 298
    :cond_1
    instance-of v9, v5, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v9, :cond_2

    .line 300
    :try_start_0
    check-cast v5, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v5    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    .line 301
    .local v6, "ssm":Lcom/android/mms/model/SlideshowModel;
    if-eqz v6, :cond_2

    .line 304
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v9

    int-to-long v2, v9

    .line 305
    .local v2, "maxSize":J
    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v9, v2

    if-lez v9, :cond_3

    .line 306
    const/16 v1, 0xcc

    .line 315
    .end local v2    # "maxSize":J
    .end local v6    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :cond_2
    :goto_0
    return v1

    .line 307
    .restart local v2    # "maxSize":J
    .restart local v6    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :cond_3
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/model/MmsMessage;->hasNonForwardableDrmContent(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 308
    const/16 v1, 0xc9

    goto :goto_0

    .line 311
    .end local v2    # "maxSize":J
    .end local v6    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v9, "CheckSendRestrictions"

    const-string v10, "Error while checkForwardSendIntentData"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)I
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "currentSize"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "errorCode":I
    const-wide/16 v6, 0x0

    .line 331
    .local v6, "size":J
    const-wide/16 v3, 0x0

    .line 332
    .local v3, "maxSize":J
    if-eqz p0, :cond_3

    .line 333
    const/4 v2, 0x0

    .line 335
    .local v2, "isVideo":Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v8

    int-to-long v3, v8

    .line 337
    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "application/ogg"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 341
    :cond_0
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    .line 343
    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 344
    int-to-long v8, p1

    add-long/2addr v6, v8

    .line 347
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/mms/model/MediaModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    .line 364
    .end local v0    # "errorCode":I
    .end local v2    # "isVideo":Z
    .end local v5    # "mimeType":Ljava/lang/String;
    .local v1, "errorCode":I
    :goto_0
    return v1

    .line 351
    .end local v1    # "errorCode":I
    .restart local v0    # "errorCode":I
    .restart local v2    # "isVideo":Z
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_2
    cmp-long v8, v6, v3

    if-lez v8, :cond_5

    .line 352
    if-eqz v2, :cond_4

    .line 353
    const/16 v0, 0xca

    .end local v2    # "isVideo":Z
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    move v1, v0

    .line 364
    .end local v0    # "errorCode":I
    .restart local v1    # "errorCode":I
    goto :goto_0

    .line 355
    .end local v1    # "errorCode":I
    .restart local v0    # "errorCode":I
    .restart local v2    # "isVideo":Z
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_4
    const/16 v0, 0xcb

    goto :goto_1

    .line 357
    :cond_5
    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 358
    const/16 v0, 0xc9

    goto :goto_1

    .line 359
    :cond_6
    if-eqz v2, :cond_3

    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->isUriVideoContainerInvalid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 360
    const/16 v0, 0xd4

    goto :goto_1
.end method

.method private static checkMultipleSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I
    .locals 12
    .param p0, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "errorCode":I
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    .line 142
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .line 143
    .local v2, "mime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 144
    .local v5, "supportedContentCount":I
    const/4 v4, 0x0

    .line 148
    .local v4, "resizeableContentCount":I
    invoke-static {p1, v8}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->removeUnsupportedContent(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 149
    .local v6, "supportedUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 150
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 151
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {p1, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    move v5, v9

    .line 149
    goto :goto_0

    .line 162
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    if-nez v5, :cond_3

    .line 164
    const/16 v9, 0xcf

    .line 207
    :goto_2
    return v9

    .line 171
    :cond_3
    invoke-static {p1, v6, v5, v4}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->removeToFit(Landroid/content/Context;Ljava/util/ArrayList;II)V

    .line 176
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 177
    if-nez v5, :cond_5

    .line 179
    const/16 v0, 0xcf

    .line 189
    :cond_4
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 190
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 195
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-static {p1, v9}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "mimeType":Ljava/lang/String;
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    .end local v3    # "mimeType":Ljava/lang/String;
    :goto_4
    move v9, v0

    .line 207
    goto :goto_2

    .line 180
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 182
    const/16 v0, 0xd0

    goto :goto_3

    .line 205
    :cond_6
    const-string v9, "*/*"

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    goto :goto_4
.end method

.method private static checkSingleSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I
    .locals 12
    .param p0, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "errorCode":I
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 220
    .local v6, "mediaUri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 221
    const-wide/16 v8, 0x0

    .line 222
    .local v8, "size":J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v10

    int-to-long v4, v10

    .line 223
    .local v4, "maxSize":J
    const/4 v2, 0x0

    .line 224
    .local v2, "isVCard":Z
    const/4 v3, 0x0

    .line 225
    .local v3, "isVideo":Z
    const/4 v1, 0x0

    .line 226
    .local v1, "isAudio":Z
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "mimeType":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 229
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 230
    const/4 v3, 0x1

    .line 231
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    .line 243
    :cond_0
    :goto_0
    if-nez v2, :cond_8

    .line 244
    cmp-long v10, v8, v4

    if-lez v10, :cond_7

    .line 245
    if-eqz v3, :cond_5

    .line 246
    const/16 v0, 0xca

    .line 272
    .end local v1    # "isAudio":Z
    .end local v2    # "isVCard":Z
    .end local v3    # "isVideo":Z
    .end local v4    # "maxSize":J
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "size":J
    :cond_1
    :goto_1
    return v0

    .line 232
    .restart local v1    # "isAudio":Z
    .restart local v2    # "isVCard":Z
    .restart local v3    # "isVideo":Z
    .restart local v4    # "maxSize":J
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "size":J
    :cond_2
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "application/ogg"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 234
    :cond_3
    const/4 v1, 0x1

    .line 235
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    goto :goto_0

    .line 236
    :cond_4
    const-string v10, "text/x-vCard"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 238
    const/4 v2, 0x1

    .line 239
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    goto :goto_0

    .line 247
    :cond_5
    if-eqz v1, :cond_6

    .line 248
    const/16 v0, 0xcb

    goto :goto_1

    .line 250
    :cond_6
    const/16 v0, 0xcc

    goto :goto_1

    .line 252
    :cond_7
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 253
    const/16 v0, 0xc9

    goto :goto_1

    .line 256
    :cond_8
    cmp-long v10, v8, v4

    if-lez v10, :cond_9

    .line 257
    const/16 v0, 0xcd

    goto :goto_1

    .line 259
    :cond_9
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/util/VCardUtil;->isMultipleContactsVCard(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 266
    const/16 v0, 0xcd

    goto :goto_1
.end method

.method private static checkTextLength(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "errorCode":I
    if-eqz p1, :cond_0

    .line 468
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/Composer;->isTextTooLong(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xcc

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    const/16 v0, 0xce

    goto :goto_0
.end method

.method private static handleExternalSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I
    .locals 3
    .param p0, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "errorCode":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const/16 v0, 0xcd

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 124
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkSingleSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkMultipleSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private static removeToFit(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "totalCount"    # I
    .param p3, "resizeableCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v12

    int-to-long v6, v12

    .line 433
    .local v6, "maxSize":J
    move/from16 v0, p2

    int-to-long v12, v0

    div-long v1, v6, v12

    .line 434
    .local v1, "estimatedResizeableContentSize":J
    move/from16 v0, p3

    int-to-long v12, v0

    mul-long v9, v1, v12

    .line 436
    .local v9, "totalUnresizeableSize":J
    const/4 v11, 0x0

    .line 437
    .local v11, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 438
    .local v4, "idx":I
    const/4 v5, 0x0

    .line 439
    .local v5, "limitReached":Z
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 440
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "uri":Landroid/net/Uri;
    check-cast v11, Landroid/net/Uri;

    .line 441
    .restart local v11    # "uri":Landroid/net/Uri;
    invoke-static {p0, v11}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, "mime":Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v8}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "application/ogg"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "text/x-vCard"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 446
    :cond_0
    invoke-static {p0, v11}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v12

    add-long/2addr v9, v12

    .line 447
    cmp-long v12, v9, v6

    if-lez v12, :cond_2

    .line 450
    const/4 v5, 0x1

    .line 458
    .end local v8    # "mime":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_3

    .line 459
    move v3, v4

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 460
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 439
    .end local v3    # "i":I
    .restart local v8    # "mime":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 463
    .end local v8    # "mime":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static removeUnsupportedContent(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v6, "supportedUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v1

    .line 382
    .local v1, "maxNbrOfObjects":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v8

    int-to-long v2, v8

    .line 383
    .local v2, "maxSize":J
    const/4 v5, 0x0

    .line 386
    .local v5, "supportedContentCount":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    if-ge v5, v1, :cond_6

    .line 387
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 388
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "mime":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "text/x-vCard"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 390
    :cond_0
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "application/ogg"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_3

    .line 386
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_3
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gtz v8, :cond_2

    .line 399
    :cond_4
    const-string v8, "text/x-vCard"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/VCardUtil;->isMultipleContactsVCard(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gtz v8, :cond_2

    .line 406
    :cond_5
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 411
    .end local v4    # "mime":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_6
    return-object v6
.end method
