.class Lcom/android/phone/PhoneGlobals$5;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 2509
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2513
    const-string v0, "PhoneApp"

    const-string v1, "Headset phone created, binding local service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 2515
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 2519
    const-string v0, "PhoneApp"

    const-string v1, "Headset phone disconnected, cleaning local binding."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 2521
    return-void
.end method
