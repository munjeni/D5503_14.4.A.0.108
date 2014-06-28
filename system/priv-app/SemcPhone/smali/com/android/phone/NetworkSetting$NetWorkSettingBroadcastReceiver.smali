.class Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkSettingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p2, "x1"    # Lcom/android/phone/NetworkSetting$1;

    .prologue
    .line 1039
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;-><init>(Lcom/android/phone/NetworkSetting;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1042
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1044
    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "onReceive()-isAirplaneMode ON"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->disableNetworkSettingsMenu()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2600(Lcom/android/phone/NetworkSetting;)V

    .line 1047
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1073
    :cond_1
    :goto_0
    return-void

    .line 1049
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "onReceive()-isAirplaneMode OFF"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 1050
    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->enableNetworkSettingsMenu()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;)V

    goto :goto_0

    .line 1052
    :cond_4
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    const-string v2, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1055
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z
    invoke-static {v2, v4}, Lcom/android/phone/NetworkSetting;->access$2102(Lcom/android/phone/NetworkSetting;Z)Z

    .line 1057
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1059
    :try_start_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "onReceive()Unregister the callback"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 1060
    :cond_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 1061
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1062
    :catch_0
    move-exception v1

    .line 1063
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "phone"

    const-string v3, "Failed to stop network query"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1066
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DISCONNECTED"

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z
    invoke-static {v2, v4}, Lcom/android/phone/NetworkSetting;->access$2202(Lcom/android/phone/NetworkSetting;Z)Z

    .line 1070
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->loadNetworksList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0
.end method
