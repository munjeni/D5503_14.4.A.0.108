.class public Lcom/sonyericsson/conversations/notifications/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final CMZ_CONTENT_PATH:Ljava/lang/String; = "content://com.sonyericsson.provider.customization/content/com.sonyericsson.conversations/"

.field private static final COLOR_BLACK:I = 0x0

.field private static final INVALID_ID:I = -0x1

.field private static final PATH_START_CONTENT:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "NotificationUtil"

.field private static mIncomingMsgLedColor:I = 0x0

.field private static mIncomingMsgLedEnabled:Z = false

.field private static mUnreadMsgLedColor:I = 0x0

.field private static mUnreadMsgLedEnabled:Z = false

.field private static sNotificationFailSoundUri:Landroid/net/Uri; = null

.field private static final sResourcePath:Ljava/lang/String; = "android.resource://com.sonyericsson.conversations/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "android.resource://com.sonyericsson.conversations/2131099648"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->sNotificationFailSoundUri:Landroid/net/Uri;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNotificationPathToInternalUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "external"    # Ljava/lang/String;

    .prologue
    const-wide/16 v7, -0x1

    .line 76
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    :cond_0
    const/4 v4, 0x0

    .line 117
    :cond_1
    :goto_0
    return-object v4

    .line 80
    :cond_2
    const/4 v4, 0x0

    .line 84
    .local v4, "internal":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->translateDefaultUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    :cond_3
    const-string v5, "content://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.sonyericsson.provider.customization/content/com.sonyericsson.conversations/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_4
    const/4 v0, 0x0

    .line 95
    .local v0, "filename":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 96
    .local v3, "idx":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 97
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_5
    invoke-static {p0, v0, v7, v8}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getMediaIdByFileName(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 104
    .local v1, "id":J
    cmp-long v5, v1, v7

    if-eqz v5, :cond_6

    .line 105
    invoke-static {}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getMediaInfoUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 112
    :cond_6
    move-object v4, p1

    goto :goto_0
.end method

.method public static getDefaultIncomingMsgLedColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 202
    .local v0, "color":I
    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 205
    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public static getIncomingMsgLedColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->queryIncomingMsgLed(Landroid/content/Context;)V

    .line 229
    sget v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mIncomingMsgLedColor:I

    return v0
.end method

.method public static getIncomingMsgLedEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-boolean v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mIncomingMsgLedEnabled:Z

    return v0
.end method

.method static getNotificationFailSoundUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->sNotificationFailSoundUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUnreadMsgLedColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->queryUnreadMsgLed(Landroid/content/Context;)V

    .line 234
    sget v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mUnreadMsgLedColor:I

    return v0
.end method

.method public static getUnreadMsgLedEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    sget-boolean v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mUnreadMsgLedEnabled:Z

    return v0
.end method

.method public static isNotificationProviderAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    :try_start_0
    const-string v1, "com.sonymobile.settings.illumination.Illumination"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    sget-object v1, Lcom/sonymobile/settings/illumination/Illumination;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->getProviderEnabledState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static notificationHasBeenIndexed(Ljava/lang/String;)Z
    .locals 4
    .param p0, "sound"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "indexed":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    const-string v3, "content://media/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 147
    .local v0, "idx":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 148
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "mediaIndex":Ljava/lang/String;
    const-string v3, "[0-9]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 155
    .end local v0    # "idx":I
    .end local v2    # "mediaIndex":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static queryIncomingMsgLed(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 239
    const-string v0, "ON"

    .line 243
    .local v0, "STATE_ON":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDefaultIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v7

    sput v7, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mIncomingMsgLedColor:I

    .line 244
    sput-boolean v5, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mIncomingMsgLedEnabled:Z

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 247
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_2

    .line 248
    const/4 v2, 0x0

    .line 250
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getIncomingMsgLedInfo(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "status":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sput v7, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mIncomingMsgLedColor:I

    .line 255
    const-string v7, "ON"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_0
    sput-boolean v5, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mIncomingMsgLedEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 268
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 255
    goto :goto_0

    .line 257
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "NotificationUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An exception occurs in reading provider of settings, just catch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 262
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_4
    const/4 v1, 0x0

    .line 262
    throw v5
.end method

.method private static queryUnreadMsgLed(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 272
    const-string v0, "ON"

    .line 275
    .local v0, "STATE_ON":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sput v7, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mUnreadMsgLedColor:I

    .line 277
    sput-boolean v5, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mUnreadMsgLedEnabled:Z

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 280
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_2

    .line 281
    const/4 v2, 0x0

    .line 283
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getUnreadMsgLedInfo(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 285
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 286
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "status":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sput v7, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mUnreadMsgLedColor:I

    .line 288
    const-string v7, "ON"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_0
    sput-boolean v5, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->mUnreadMsgLedEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 301
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 288
    goto :goto_0

    .line 290
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 291
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "NotificationUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An exception occurs in reading provider of settings, just catch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    if-eqz v2, :cond_1

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 295
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_4
    const/4 v1, 0x0

    .line 295
    throw v5
.end method

.method public static soundFileAccessible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soundUri"    # Ljava/lang/String;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 167
    :cond_0
    const/4 v1, 0x0

    .line 181
    :cond_1
    :goto_0
    return v1

    .line 168
    :cond_2
    const/4 v1, 0x1

    .line 171
    .local v1, "isValid":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 172
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 174
    .local v2, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    throw v3
.end method

.method private static translateDefaultUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getNotificationSound(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "notificationSound":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    move-object p1, v0

    .line 130
    .end local v0    # "notificationSound":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
