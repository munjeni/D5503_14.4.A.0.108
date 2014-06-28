.class Landroid/net/wifi/WifiApConfigStore$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 87
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 104
    const-string v1, "WifiApConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return v2

    .line 90
    :pswitch_0
    const-string v1, "WifiApConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Landroid/net/wifi/WifiApConfigStore;->access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiApConfigStore;->access$100(Landroid/net/wifi/WifiApConfigStore;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_ap_hiddenssid"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiApConfigStore;->access$200(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v3, 0x2001c

    iget-object v4, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Landroid/net/wifi/WifiApConfigStore;->access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiApConfigStore"

    const-string v3, "AP settings not found, returning"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
