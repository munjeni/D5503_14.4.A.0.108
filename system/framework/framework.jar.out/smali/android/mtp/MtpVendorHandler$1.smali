.class Landroid/mtp/MtpVendorHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpVendorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpVendorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpVendorHandler;


# direct methods
.method constructor <init>(Landroid/mtp/MtpVendorHandler;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sonyericsson.mtp.action.NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 68
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    const-string v2, "com.sonyericsson.mtp.category.RESPONSE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 72
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "com.sonyericsson.mtp.category.EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 75
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
