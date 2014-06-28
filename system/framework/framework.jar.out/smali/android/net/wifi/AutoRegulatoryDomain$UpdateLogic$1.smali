.class Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;


# direct methods
.method constructor <init>(Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$0:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$0:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v3, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$0:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 72
    :cond_2
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    const-string/jumbo v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 76
    .local v2, "wifiState":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 77
    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$0:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 79
    .end local v2    # "wifiState":I
    :cond_3
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string/jumbo v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, "apState":I
    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    .line 84
    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$0:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
