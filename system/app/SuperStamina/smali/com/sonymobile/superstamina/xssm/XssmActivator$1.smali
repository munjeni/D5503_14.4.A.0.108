.class Lcom/sonymobile/superstamina/xssm/XssmActivator$1;
.super Ljava/lang/Object;
.source "XssmActivator.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/XssmActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$1;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$1;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$002(Lcom/sonymobile/superstamina/xssm/XssmActivator;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 60
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator$1;->this$0:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->access$002(Lcom/sonymobile/superstamina/xssm/XssmActivator;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 64
    return-void
.end method
