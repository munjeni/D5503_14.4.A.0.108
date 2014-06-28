.class public Lcom/android/mms/transaction/PrivilegedSmsReceiver;
.super Lcom/android/mms/transaction/SmsReceiver;
.source "PrivilegedSmsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/transaction/SmsReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 33
    return-void
.end method
