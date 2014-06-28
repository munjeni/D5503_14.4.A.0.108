.class Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullNotification;
.super Lcom/sonyericsson/conversations/notifications/Notification;
.source "SmsRejectedMemoryFullNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/Notification;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getNotification(Landroid/net/Uri;Z)Landroid/app/Notification;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isAlert"    # Z

    .prologue
    .line 42
    if-eqz p2, :cond_0

    .line 43
    const v3, 0x7f02003e

    .line 44
    .local v3, "icon":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v6, 0x7f070012

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "contentTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v6, 0x7f070013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "contentText":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-class v6, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "clickIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/sonyericsson/conversations/notifications/Notification;->createDefaultNotification(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v4

    .line 54
    .local v4, "n":Landroid/app/Notification;
    iput-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 55
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getNotificationFailSoundUri()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 59
    .end local v0    # "clickIntent":Landroid/content/Intent;
    .end local v1    # "contentText":Ljava/lang/String;
    .end local v2    # "contentTitle":Ljava/lang/String;
    .end local v3    # "icon":I
    .end local v4    # "n":Landroid/app/Notification;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
