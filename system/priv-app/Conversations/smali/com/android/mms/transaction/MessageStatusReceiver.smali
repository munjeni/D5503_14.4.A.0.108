.class public Lcom/android/mms/transaction/MessageStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageStatusReceiver.java"


# static fields
.field public static final MESSAGE_STATUS_RECEIVED_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-class v0, Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-static {p1, p2}, Lcom/android/mms/transaction/SmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    return-void
.end method
