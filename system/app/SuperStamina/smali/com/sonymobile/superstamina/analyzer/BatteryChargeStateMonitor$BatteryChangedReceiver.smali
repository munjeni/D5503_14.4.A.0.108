.class Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryChargeStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    # getter for: Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->access$100(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->setBatteryData(Landroid/content/Intent;)V

    .line 128
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    # getter for: Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->access$100(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->hasEnoughDrop()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    # getter for: Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mIsDialogDisabled:Z
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->access$200(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    # getter for: Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->access$100(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->isUsbConnected()Z

    move-result v1

    .line 130
    .local v1, "isUsbConnected":Z
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    # setter for: Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCanMeasure:Z
    invoke-static {v2, v3}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->access$302(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;Z)Z

    .line 131
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    invoke-virtual {v2, v3}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->enableReceiver(Z)V

    .line 133
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    # getter for: Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mChargeStateDialog:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->access$400(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    move-result-object v3

    if-eqz v1, :cond_1

    const v2, 0x7f050020

    :goto_0
    invoke-virtual {v3, v2}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->show(I)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "highCurrentIntent":Landroid/content/Intent;
    const-string v2, "com.sonymobile.mib.bm.high_drain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    .end local v0    # "highCurrentIntent":Landroid/content/Intent;
    .end local v1    # "isUsbConnected":Z
    :cond_0
    return-void

    .line 133
    .restart local v1    # "isUsbConnected":Z
    :cond_1
    const v2, 0x7f050021

    goto :goto_0
.end method
