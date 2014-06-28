.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 349
    :pswitch_0
    const-string v1, "BluetoothDevicePreference"

    const-string v2, "Receiver DISABLED_ACTION "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$200(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
