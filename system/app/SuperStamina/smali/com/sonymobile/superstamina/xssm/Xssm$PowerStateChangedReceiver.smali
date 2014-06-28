.class Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Xssm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/Xssm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerStateChangedReceiver"
.end annotation


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/Xssm;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 607
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$800(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$800(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    return-void
.end method
