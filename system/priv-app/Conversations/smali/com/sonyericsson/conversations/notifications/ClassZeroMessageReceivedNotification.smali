.class public Lcom/sonyericsson/conversations/notifications/ClassZeroMessageReceivedNotification;
.super Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;
.source "ClassZeroMessageReceivedNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getNotification(Landroid/net/Uri;Z)Landroid/app/Notification;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isAlert"    # Z

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mBundle:Landroid/os/Bundle;

    const-string v2, "CLASS_ZERO_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mAddress:Ljava/lang/String;

    .line 40
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->mType:I

    .line 42
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 43
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;->addNotificationAlert(Landroid/app/Notification;)V

    .line 46
    .end local v0    # "n":Landroid/app/Notification;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
