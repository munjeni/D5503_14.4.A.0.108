.class public Lcom/android/mms/transaction/SmsRejectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRejectedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "reason":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 52
    .end local v0    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v0    # "reason":I
    :cond_1
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    goto :goto_0
.end method
