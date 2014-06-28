.class public Lcom/android/mms/transaction/SmsFailedUpdateNotificationsReceiver;
.super Lcom/android/mms/transaction/SmsUpdateNotificationsReceiver;
.source "SmsFailedUpdateNotificationsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsUpdateNotificationsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/android/mms/transaction/SmsUpdateNotificationsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 29
    return-void
.end method
