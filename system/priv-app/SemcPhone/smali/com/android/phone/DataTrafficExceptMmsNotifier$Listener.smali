.class Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafficExceptMmsNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataTrafficExceptMmsNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataTrafficExceptMmsNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/DataTrafficExceptMmsNotifier;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;->this$0:Lcom/android/phone/DataTrafficExceptMmsNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "DataTrafficExceptMmsNotifier"

    const-string v3, "ACTION_MOBILE_DATA_SETTING_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    const/4 v0, 0x1

    .line 131
    .local v0, "changedTo":Z
    iget-object v2, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;->this$0:Lcom/android/phone/DataTrafficExceptMmsNotifier;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 133
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;->this$0:Lcom/android/phone/DataTrafficExceptMmsNotifier;

    invoke-virtual {v2}, Lcom/android/phone/DataTrafficExceptMmsNotifier;->on()V

    .line 140
    .end local v0    # "changedTo":Z
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    :goto_0
    return-void

    .line 137
    .restart local v0    # "changedTo":Z
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;->this$0:Lcom/android/phone/DataTrafficExceptMmsNotifier;

    invoke-virtual {v2}, Lcom/android/phone/DataTrafficExceptMmsNotifier;->off()V

    goto :goto_0
.end method
