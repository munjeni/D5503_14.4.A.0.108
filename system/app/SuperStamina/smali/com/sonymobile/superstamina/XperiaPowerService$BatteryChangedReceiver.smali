.class Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XperiaPowerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/XperiaPowerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryChangedReceiver"
.end annotation


# instance fields
.field private lastLevel:I

.field private lastPlugged:Z

.field final synthetic this$0:Lcom/sonymobile/superstamina/XperiaPowerService;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 1

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->lastLevel:I

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->lastPlugged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/XperiaPowerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/XperiaPowerService$1;

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 406
    const-string v3, "level"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 407
    .local v0, "level":I
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 408
    .local v2, "pluggedType":I
    if-eq v2, v1, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 411
    .local v1, "plugged":Z
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->lastLevel:I

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->lastPlugged:Z

    if-eq v1, v3, :cond_2

    .line 412
    :cond_1
    iput v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->lastLevel:I

    .line 413
    iput-boolean v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->lastPlugged:Z

    .line 415
    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;
    invoke-static {v3}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$300(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/XssmActivator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/superstamina/BaseActivator;->onBatteryChanged(IZ)V

    .line 416
    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;
    invoke-static {v3}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$600(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/superstamina/BaseActivator;->onBatteryChanged(IZ)V

    .line 417
    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;
    invoke-static {v3}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$100(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/analyzer/Analyzer;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->onBatteryChanged(IZ)V

    .line 418
    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget-object v3, v3, Lcom/sonymobile/superstamina/XperiaPowerService;->mSocketSynchronizer:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->onBatteryChanged(IZ)V

    .line 419
    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # invokes: Lcom/sonymobile/superstamina/XperiaPowerService;->updateEstimationsInContentProvider()V
    invoke-static {v3}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$700(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    .line 421
    :cond_2
    return-void

    .line 408
    .end local v1    # "plugged":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
