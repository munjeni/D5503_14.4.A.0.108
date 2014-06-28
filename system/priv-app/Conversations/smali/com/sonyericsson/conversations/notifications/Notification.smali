.class public abstract Lcom/sonyericsson/conversations/notifications/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# static fields
.field public static final ACTION_NOTIFICATION_CLEAR:Ljava/lang/String; = "com.sonyericsson.conversations.NOTIFICATION_CLEAR"

.field protected static final BLINK_OFF_INTERVAL:I = 0x1770

.field protected static final BLINK_ON_INTERVAL:I = 0x64

.field public static final UNREAD_MESSAGE_THREADS:Ljava/lang/String; = "unReadMessageThreads"

.field public static final UNREAD_MESSAGE_URI:Ljava/lang/String; = "unReadMessageUri"

.field private static final UPDATE_INTERVAL:I = 0xfa0

.field protected static final UPDATE_LED_COLOR:I


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field protected mBundle:Landroid/os/Bundle;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mId:I

.field private mLastUpdateTime:J

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mUpdateLedTag:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    .line 61
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/notifications/Notification$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/notifications/Notification$1;-><init>(Lcom/sonyericsson/conversations/notifications/Notification;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method private getRingerMode()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method private final updateNotificationManager(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isAlert"    # Z

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/Notification;->getNotification(Landroid/net/Uri;Z)Landroid/app/Notification;

    move-result-object v0

    .line 80
    .local v0, "n":Landroid/app/Notification;
    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotification:Landroid/app/Notification;

    .line 82
    if-nez v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationLedEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 91
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public final add(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mLastUpdateTime:J

    .line 136
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/conversations/notifications/Notification;->updateNotificationManager(Landroid/net/Uri;Z)V

    .line 138
    iget v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->isNotificationProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mUpdateLedTag:Z

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 148
    :cond_1
    return-void
.end method

.method public final add(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 157
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mBundle:Landroid/os/Bundle;

    .line 159
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    .line 160
    return-void
.end method

.method public final addSilent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mLastUpdateTime:J

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/notifications/Notification;->updateNotificationManager(Landroid/net/Uri;Z)V

    .line 171
    return-void
.end method

.method public cancelLedColorUpdate()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    return-void
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 196
    return-void
.end method

.method protected final createDefaultNotification(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 4
    .param p1, "icon"    # I
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "clickIntent"    # Landroid/content/Intent;

    .prologue
    .line 202
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 206
    .local v1, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, p1, p4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 208
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iput p1, v1, Landroid/app/Notification;->icon:I

    .line 209
    iget-wide v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mLastUpdateTime:J

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 211
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 213
    return-object v1
.end method

.method protected final createDefaultNotificationBuilder(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification$Builder;
    .locals 10
    .param p1, "icon"    # I
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "clickIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 222
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v4, "nb":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const/high16 v9, 0x10000000

    invoke-static {v8, p1, p4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 227
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/Notification;->getRingerMode()I

    move-result v8

    if-ne v8, v6, :cond_1

    move v3, v6

    .line 228
    .local v3, "isRingerVibrate":Z
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sonyericsson.conversations.NOTIFICATION_CLEAR"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sonyericsson/conversations/notifications/NotificationClearReceiver;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    iget-object v8, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v8, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 232
    .local v1, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 233
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 235
    iget-wide v8, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mLastUpdateTime:J

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 236
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 237
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 238
    if-eqz v3, :cond_0

    .line 244
    new-array v5, v6, [J

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v7

    .line 245
    .local v5, "pattern":[J
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 247
    .end local v5    # "pattern":[J
    :cond_0
    return-object v4

    .end local v1    # "deleteIntent":Landroid/app/PendingIntent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isRingerVibrate":Z
    :cond_1
    move v3, v7

    .line 227
    goto :goto_0
.end method

.method public getNofication()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method protected abstract getNotification(Landroid/net/Uri;Z)Landroid/app/Notification;
.end method

.method public final update()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/conversations/notifications/Notification;->updateNotificationManager(Landroid/net/Uri;Z)V

    .line 180
    iget v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->isNotificationProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mUpdateLedTag:Z

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/Notification;->updateNotificationLedColor()V

    .line 189
    :cond_1
    return-void
.end method

.method public final updateNotificationLedColor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotification:Landroid/app/Notification;

    .line 100
    .local v0, "n":Landroid/app/Notification;
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mUpdateLedTag:Z

    if-eqz v1, :cond_2

    .line 103
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 104
    iput-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 105
    iput-object v2, v0, Landroid/app/Notification;->vibrate:[J

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUnreadMsgLedColor(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 116
    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotification:Landroid/app/Notification;

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUnreadMsgLedEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 122
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 126
    .end local v0    # "n":Landroid/app/Notification;
    :cond_1
    return-void

    .line 110
    .restart local v0    # "n":Landroid/app/Notification;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUnreadMsgLedColor(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 111
    const/16 v1, 0x64

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 112
    const/16 v1, 0x1770

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 113
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method
