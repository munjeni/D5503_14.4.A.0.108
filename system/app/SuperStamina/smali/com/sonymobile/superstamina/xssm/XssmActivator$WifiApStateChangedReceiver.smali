.class Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XssmActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/XssmActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/xssm/XssmActivator;Lcom/sonymobile/superstamina/xssm/XssmActivator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/xssm/XssmActivator;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/xssm/XssmActivator$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;-><init>(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "wifiApState":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    # getter for: Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$200(Lcom/sonymobile/superstamina/xssm/XssmActivator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z
    invoke-static {v1, v2}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$202(Lcom/sonymobile/superstamina/xssm/XssmActivator;Z)Z

    .line 155
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    # invokes: Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$300(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    # getter for: Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$200(Lcom/sonymobile/superstamina/xssm/XssmActivator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z
    invoke-static {v1, v2}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$202(Lcom/sonymobile/superstamina/xssm/XssmActivator;Z)Z

    .line 163
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    # invokes: Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$400(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V

    goto :goto_0
.end method
