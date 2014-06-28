.class Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiReminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/WifiReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 167
    .local v1, "manager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 168
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 169
    const-string v2, "SuperStamina-WifiAnalyzer"

    const-string v3, "WifiReceiver - Can\'t get WiFi network info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_1
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    # invokes: Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiConnected()V
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->access$200(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    # invokes: Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiDisconnected()V
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->access$300(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    goto :goto_0

    .line 181
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    # invokes: Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiDisabled()V
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->access$500(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    goto :goto_0

    .line 185
    :pswitch_4
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    # invokes: Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiEnabled()V
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->access$400(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sonymobile.LBW_SHOW_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    # invokes: Lcom/sonymobile/superstamina/analyzer/WifiReminder;->showNotification()V
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->access$600(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 182
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
