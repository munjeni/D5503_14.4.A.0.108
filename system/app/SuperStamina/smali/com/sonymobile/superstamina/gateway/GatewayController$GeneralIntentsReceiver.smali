.class Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GatewayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/GatewayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneralIntentsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/gateway/GatewayController$1;

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 472
    iget-object v6, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v8, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->FLIGHT_MODE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v9, "state"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v6, v8, v7}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 475
    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "state":Ljava/lang/String;
    const-string v8, "READY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 477
    iget-object v6, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v8, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->NO_SIM:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v6, v8, v7}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0

    .line 478
    :cond_2
    const-string v7, "ABSENT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 479
    iget-object v7, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v8, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->NO_SIM:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v7, v8, v6}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0

    .line 481
    .end local v5    # "state":Ljava/lang/String;
    :cond_3
    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 483
    const-string v8, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 485
    .local v5, "state":I
    iget-object v8, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v9, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->BT_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const/4 v10, 0x2

    if-ne v5, v10, :cond_4

    :goto_1
    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v8, v9, v6}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    .line 486
    .end local v5    # "state":I
    :cond_5
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 488
    const-string v8, "state"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 489
    .local v2, "currentState":I
    iget-object v8, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v9, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->HEADSET_PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    if-ne v2, v6, :cond_6

    :goto_2
    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v8, v9, v6}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_2

    .line 490
    .end local v2    # "currentState":I
    :cond_7
    const-string v8, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 492
    const-string v6, "enabled"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 494
    .local v1, "active":Z
    iget-object v6, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v7, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->GPS_ACTIVE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v6, v7, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0

    .line 495
    .end local v1    # "active":Z
    :cond_8
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 497
    const-string v8, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 498
    .restart local v5    # "state":I
    iget-object v8, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v9, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->DOCKING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    if-eqz v5, :cond_9

    :goto_3
    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v8, v9, v6}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto/16 :goto_0

    :cond_9
    move v6, v7

    goto :goto_3

    .line 499
    .end local v5    # "state":I
    :cond_a
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 502
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 503
    const-string v6, "networkInfo"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 505
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 506
    iget-object v6, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v7, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_DIRECT:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v8

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v6, v7, v8}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto/16 :goto_0
.end method
