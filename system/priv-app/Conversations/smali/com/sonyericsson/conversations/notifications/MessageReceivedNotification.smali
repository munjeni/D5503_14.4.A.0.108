.class Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;
.super Lcom/sonyericsson/conversations/notifications/MessageNotification;
.source "MessageReceivedNotification.java"


# static fields
.field private static final LED_COLOR:I = -0x1

.field private static final NAME_BODY_SEPERATOR:Ljava/lang/String; = ": "

.field private static final TAG:Ljava/lang/String; = "MessageReceivedNotification"


# instance fields
.field protected mAddress:Ljava/lang/String;

.field protected mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/MessageNotification;-><init>(Landroid/content/Context;I)V

    .line 59
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    .line 60
    return-void
.end method

.method private createAlertTicker(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 226
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/sonyericsson/conversations/model/Message;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 227
    .local v4, "threadId":J
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 229
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    const/4 v1, 0x0

    .line 230
    .local v1, "conversationName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->getNotificationTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mType:I

    .line 233
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mAddress:Ljava/lang/String;

    .line 236
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 238
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    const/4 v3, 0x0

    .line 239
    .local v3, "messageText":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r"

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    :cond_1
    if-nez v3, :cond_3

    .line 244
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v7, 0x7f07000e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    .end local v3    # "messageText":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 248
    .restart local v3    # "messageText":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_2

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getFirstImageInMessage(Lcom/sonyericsson/conversations/model/MmsMessage;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "attachedPicture":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 197
    .local v4, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 200
    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/ImageModel;->createThumbnail()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    .end local v2    # "i":I
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v4    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_1
    return-object v0

    .line 199
    .restart local v2    # "i":I
    .restart local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v4    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "i":I
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v4    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string v5, "MessageReceivedNotification"

    const-string v6, "create notification - failed to get the slideshow"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendNotificationBroadcasts(IILandroid/net/Uri;)V
    .locals 4
    .param p1, "oldNrOfUnreadMessages"    # I
    .param p2, "newNrOfUnreadMessages"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_2

    .line 258
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.conversations.intent.action.MESSAGE_RECEIVED_NOTIFICATION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "notificationUpdatedIntent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.conversations.intent.extra.UNREAD_COUNT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    if-eqz p3, :cond_1

    .line 266
    const-string v2, "com.sonyericsson.conversations.intent.extra.NEW_MESSAGE_URI"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-string v3, "com.sonyericsson.permission.CONVERSATIONS_RECEIVE_NOTIFICATIONS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "badgeIntent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v2, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    const-class v3, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v3, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    if-lez p2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string v2, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-string v3, "com.sonyericsson.home.permission.RECEIVE_BADGE"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 285
    .end local v0    # "badgeIntent":Landroid/content/Intent;
    .end local v1    # "notificationUpdatedIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 278
    .restart local v0    # "badgeIntent":Landroid/content/Intent;
    .restart local v1    # "notificationUpdatedIntent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateNotificationBuilder(Landroid/app/Notification$Builder;Ljava/lang/String;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 17
    .param p1, "notificationBuilder"    # Landroid/app/Notification$Builder;
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfThreads:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    if-eqz p3, :cond_0

    .line 124
    move-object/from16 v0, p3

    iget v13, v0, Lcom/sonyericsson/conversations/model/Message;->type:I

    if-nez v13, :cond_1

    .line 127
    :try_start_0
    const-string v13, "android.app.Notification$BigTextStyle"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 129
    .local v3, "BigTextStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 130
    .local v9, "bigTextStyle":Ljava/lang/Object;
    const-string v13, "bigText"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/CharSequence;

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 131
    .local v8, "bigTextMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-virtual {v8, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v13, "android.app.Notification$Style"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 135
    .local v4, "NotificationStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Landroid/app/Notification$Builder;

    const-string v14, "setStyle"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 137
    .local v11, "setStyleMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 186
    .end local v3    # "BigTextStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "NotificationStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "bigTextMethod":Ljava/lang/reflect/Method;
    .end local v9    # "bigTextStyle":Ljava/lang/Object;
    .end local v11    # "setStyleMethod":Ljava/lang/reflect/Method;
    .end local p3    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local p3    # "message":Lcom/sonyericsson/conversations/model/Message;
    :catch_0
    move-exception v10

    .line 139
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigTextStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v10

    .line 141
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigTextStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v10

    .line 143
    .local v10, "e":Ljava/lang/InstantiationException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigTextStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v10    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v10

    .line 145
    .local v10, "e":Ljava/lang/IllegalAccessException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigTextStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v10    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v10

    .line 147
    .local v10, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigTextStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v10    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    move-object/from16 v0, p3

    iget v13, v0, Lcom/sonyericsson/conversations/model/Message;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 151
    check-cast p3, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p3    # "message":Lcom/sonyericsson/conversations/model/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->getFirstImageInMessage(Lcom/sonyericsson/conversations/model/MmsMessage;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 153
    .local v5, "attachedPicture":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 155
    :try_start_1
    const-string v13, "android.app.Notification$BigPictureStyle"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 157
    .local v2, "BigPictureStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 159
    .local v7, "bigPictureStyle":Ljava/lang/Object;
    const-string v13, "bigPicture"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/graphics/Bitmap;

    aput-object v16, v14, v15

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 161
    .local v6, "bigPictureMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-virtual {v6, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v13, "setSummaryText"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/CharSequence;

    aput-object v16, v14, v15

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 165
    .local v12, "setSummaryTextMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-virtual {v12, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v13, "android.app.Notification$Style"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 169
    .restart local v4    # "NotificationStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Landroid/app/Notification$Builder;

    const-string v14, "setStyle"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 171
    .restart local v11    # "setStyleMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_9

    goto/16 :goto_0

    .line 172
    .end local v2    # "BigPictureStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "NotificationStyleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "bigPictureMethod":Ljava/lang/reflect/Method;
    .end local v7    # "bigPictureStyle":Ljava/lang/Object;
    .end local v11    # "setStyleMethod":Ljava/lang/reflect/Method;
    .end local v12    # "setSummaryTextMethod":Ljava/lang/reflect/Method;
    :catch_5
    move-exception v10

    .line 173
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigPictureStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v10

    .line 175
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigPictureStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v10

    .line 177
    .local v10, "e":Ljava/lang/InstantiationException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigPictureStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    .end local v10    # "e":Ljava/lang/InstantiationException;
    :catch_8
    move-exception v10

    .line 179
    .local v10, "e":Ljava/lang/IllegalAccessException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigPictureStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    .end local v10    # "e":Ljava/lang/IllegalAccessException;
    :catch_9
    move-exception v10

    .line 181
    .local v10, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v13, "MessageReceivedNotification"

    const-string v14, "Do not support BigPictureStyle notification"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected addNotificationAlert(Landroid/app/Notification;)V
    .locals 9
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 289
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationVibrateEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iput v8, p1, Landroid/app/Notification;->defaults:I

    .line 293
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTranslatedNotificationSound()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "sound":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->soundFileAccessible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 305
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->isNotificationProviderAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 307
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v6

    iget v3, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mType:I

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mAddress:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v1

    .line 310
    .local v1, "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mType:I

    if-ne v6, v8, :cond_3

    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->getContactLedColor(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "contactLedColor":I
    if-eqz v0, :cond_4

    .line 317
    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 328
    .end local v0    # "contactLedColor":I
    .end local v1    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    :goto_3
    const/16 v3, 0x64

    iput v3, p1, Landroid/app/Notification;->ledOnMS:I

    .line 329
    const/16 v3, 0x1770

    iput v3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 330
    iget v3, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/app/Notification;->flags:I

    .line 332
    return-void

    .line 298
    :cond_1
    iget v3, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    :cond_2
    move v3, v5

    .line 307
    goto :goto_1

    .restart local v1    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    :cond_3
    move v4, v5

    .line 311
    goto :goto_2

    .line 319
    .restart local v0    # "contactLedColor":I
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v3

    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    goto :goto_3

    .line 322
    .end local v0    # "contactLedColor":I
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v3

    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    goto :goto_3

    .line 325
    .end local v1    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    :cond_6
    const/4 v3, -0x1

    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    goto :goto_3
.end method

.method protected getNotification(Landroid/net/Uri;Z)Landroid/app/Notification;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isAlert"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 64
    iget v5, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    .line 66
    .local v5, "oldNrOfMessages":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-string v9, "unread_count"

    invoke-virtual {p0, v6, v9}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->updateIndicatorInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget v6, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    invoke-direct {p0, v5, v6, p1}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->sendNotificationBroadcasts(IILandroid/net/Uri;)V

    .line 71
    iget-object v9, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/mms/transaction/SmsUpdateNotificationsReceiver;

    iget v6, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    if-lez v6, :cond_4

    move v6, v7

    :goto_0
    invoke-static {v9, v10, v6}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 74
    iget v6, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    if-lez v6, :cond_7

    .line 75
    const v1, 0x7f020038

    .line 77
    .local v1, "icon":I
    const/4 v2, 0x0

    .line 79
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    iget v6, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    if-le v6, v7, :cond_5

    .line 80
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v9, 0x7f07000d

    new-array v7, v7, [Ljava/lang/Object;

    iget v10, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "contentText":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 100
    const-string v6, "\r"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->createMessageNotificationBuilder(ILjava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 104
    .local v4, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v4, v0, v2}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->updateNotificationBuilder(Landroid/app/Notification$Builder;Ljava/lang/String;Lcom/sonyericsson/conversations/model/Message;)V

    .line 105
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 107
    .local v3, "n":Landroid/app/Notification;
    if-eqz p1, :cond_2

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->createAlertTicker(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 111
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->addNotificationAlert(Landroid/app/Notification;)V

    .line 117
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v1    # "icon":I
    .end local v2    # "message":Lcom/sonyericsson/conversations/model/Message;
    .end local v3    # "n":Landroid/app/Notification;
    .end local v4    # "nb":Landroid/app/Notification$Builder;
    :cond_3
    :goto_2
    return-object v3

    :cond_4
    move v6, v8

    .line 71
    goto :goto_0

    .line 85
    .restart local v1    # "icon":I
    .restart local v2    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mThreadId:J

    invoke-static {v6, v7, v8}, Lcom/sonyericsson/conversations/model/Message;->getUnreadMessage(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "contentText":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->isUrgent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    const v1, 0x7f02003b

    goto :goto_1

    .line 94
    .end local v0    # "contentText":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v7, 0x7f07000e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_1

    .line 117
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v1    # "icon":I
    .end local v2    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method
