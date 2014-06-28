.class Lcom/android/phone/CallNotifier$2;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/CallNotifier;->access$602(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2163
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2164
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$602(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2168
    return-void
.end method
