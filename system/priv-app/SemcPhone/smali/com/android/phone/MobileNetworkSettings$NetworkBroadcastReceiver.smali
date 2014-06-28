.class Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p2, "x1"    # Lcom/android/phone/MobileNetworkSettings$1;

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 946
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$900(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$1100(Lcom/android/phone/MobileNetworkSettings;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$1100(Lcom/android/phone/MobileNetworkSettings;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 955
    :cond_2
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # invokes: Lcom/android/phone/MobileNetworkSettings;->updateNetworkOperatorsPreference()V
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1200(Lcom/android/phone/MobileNetworkSettings;)V

    goto :goto_0
.end method
