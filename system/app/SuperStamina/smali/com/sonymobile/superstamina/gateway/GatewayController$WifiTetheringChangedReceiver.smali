.class Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GatewayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/GatewayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiTetheringChangedReceiver"
.end annotation


# instance fields
.field mLastState:I

.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Z)V
    .locals 1
    .param p2, "active"    # Z

    .prologue
    .line 566
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 559
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;->mLastState:I

    .line 567
    if-eqz p2, :cond_0

    .line 568
    const/16 v0, 0xd

    iput v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;->mLastState:I

    .line 570
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xd

    .line 574
    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 577
    .local v0, "wifiApState":I
    if-ne v0, v3, :cond_1

    .line 578
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_TETHERING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const/4 v3, 0x1

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    .line 583
    :cond_0
    :goto_0
    iput v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;->mLastState:I

    .line 584
    return-void

    .line 579
    :cond_1
    iget v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;->mLastState:I

    if-ne v1, v3, :cond_0

    .line 580
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_TETHERING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const/4 v3, 0x0

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0
.end method
