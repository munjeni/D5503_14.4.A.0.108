.class Landroid/net/wifi/TxPowerControl$1;
.super Landroid/content/BroadcastReceiver;
.source "TxPowerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/TxPowerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/TxPowerControl;


# direct methods
.method constructor <init>(Landroid/net/wifi/TxPowerControl;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    iget-object v5, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const-string/jumbo v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 155
    .local v4, "state":I
    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    .line 157
    .local v3, "running":I
    :goto_1
    iget-object v6, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v3    # "running":I
    :cond_2
    move v3, v5

    .line 155
    goto :goto_1

    .line 160
    .end local v4    # "state":I
    :cond_3
    const-string v6, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 162
    const-string v6, "discoveryState"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 164
    .restart local v4    # "state":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 166
    .restart local v3    # "running":I
    :goto_2
    iget-object v6, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v8, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v3    # "running":I
    :cond_4
    move v3, v5

    .line 164
    goto :goto_2

    .line 169
    .end local v4    # "state":I
    :cond_5
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 173
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v3

    .line 175
    .local v1, "connected":I
    :goto_3
    iget-object v6, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/TxPowerControl$1;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v8, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v1    # "connected":I
    :cond_6
    move v1, v5

    .line 173
    goto :goto_3
.end method
