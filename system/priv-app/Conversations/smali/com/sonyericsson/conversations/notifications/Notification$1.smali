.class Lcom/sonyericsson/conversations/notifications/Notification$1;
.super Landroid/os/Handler;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/notifications/Notification;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/notifications/Notification;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/notifications/Notification;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/Notification$1;->this$0:Lcom/sonyericsson/conversations/notifications/Notification;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/Notification$1;->this$0:Lcom/sonyericsson/conversations/notifications/Notification;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/Notification;->updateNotificationLedColor()V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
