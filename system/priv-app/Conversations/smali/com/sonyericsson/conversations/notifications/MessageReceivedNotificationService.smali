.class public Lcom/sonyericsson/conversations/notifications/MessageReceivedNotificationService;
.super Lcom/android/mms/transaction/ConversationService;
.source "MessageReceivedNotificationService.java"


# static fields
.field private static final CREATE_NOTIFICATION:Ljava/lang/String; = "com.sonyericsson.conversations.notifications.MessageReceivedNotificationService.CREATE"

.field private static final TAG:Ljava/lang/String; = "MessageReceivedNotificationService"

.field private static final UPDATE_NOTIFICATIONS:Ljava/lang/String; = "com.sonyericsson.conversations.notifications.MessageReceivedNotificationService.UPDATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/mms/transaction/ConversationService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string v2, "com.sonyericsson.conversations.notifications.MessageReceivedNotificationService.CREATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, "messageUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 60
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    .line 70
    .end local v1    # "messageUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 71
    return-void

    .line 62
    :cond_1
    const-string v2, "com.sonyericsson.conversations.notifications.MessageReceivedNotificationService.UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    goto :goto_0
.end method
