.class Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Xssm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/Xssm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerStateTimeoutReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/Xssm;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/Xssm$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/xssm/Xssm$1;

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$800(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    return-void
.end method
