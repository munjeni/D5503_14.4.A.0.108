.class Landroid/net/wifi/WifiApConfigStore$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 123
    :goto_0
    return v1

    .line 115
    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    # setter for: Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3, v0}, Landroid/net/wifi/WifiApConfigStore;->access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 116
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiApConfigStore;->access$100(Landroid/net/wifi/WifiApConfigStore;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_hiddenssid"

    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Landroid/net/wifi/WifiApConfigStore;->access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiApConfigStore;->access$300(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiApConfigStore;->access$400(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 116
    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
    .end packed-switch
.end method
