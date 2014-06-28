.class public Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;
.super Ljava/lang/Object;
.source "WirelessControllerIntentSender.java"


# static fields
.field public static final ACTION_BT_CONTROLLER_ATTACHED:Ljava/lang/String; = "com.sony.wirelesscontroller.action.BT_CONTROLLER_ATTACHED"

.field public static final ACTION_BT_CONTROLLER_DETACHED:Ljava/lang/String; = "com.sony.wirelesscontroller.action.BT_CONTROLLER_DETACHED"

.field public static final ACTION_BT_CONTROLLER_SETUP_BT:Ljava/lang/String; = "com.sony.wirelesscontroller.action.BT_CONTROLLER_SETUP_BT"

.field public static final ACTION_USB_CONTROLLER_ATTACHED:Ljava/lang/String; = "com.sony.wirelesscontroller.action.USB_CONTROLLER_ATTACHED"

.field public static final ACTION_USB_CONTROLLER_DETACHED:Ljava/lang/String; = "com.sony.wirelesscontroller.action.USB_CONTROLLER_DETACHED"

.field public static final EXTRA_BT_BDADDR:Ljava/lang/String; = "com.sony.wirelesscontroller.extra.BT_BDADDR"

.field public static final EXTRA_USBDEVICE:Ljava/lang/String; = "com.sony.wirelesscontroller.extra.USBDEVICE"

.field private static final SONY_PS3_PRODUCT_ID:I = 0x268

.field private static final SONY_VENDOR_ID:I = 0x54c


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->mRes:Landroid/content/res/Resources;

    .line 46
    return-void
.end method

.method private sendIntentFlagIncludeStoppedPackages(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void
.end method


# virtual methods
.method public isWirelessController(Ljava/lang/String;)Z
    .locals 7
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v5, p0, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->mRes:Landroid/content/res/Resources;

    const v6, 0x107000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "ps3cNames":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 70
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    const/4 v5, 0x1

    .line 73
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return v5

    .line 69
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isWirelessControllerId(II)Z
    .locals 1
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I

    .prologue
    .line 77
    const/16 v0, 0x54c

    if-ne p1, v0, :cond_0

    const/16 v0, 0x268

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendBtConnectedIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "bdaddr"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sony.wirelesscontroller.action.BT_CONTROLLER_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sony.wirelesscontroller.extra.BT_BDADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->sendIntentFlagIncludeStoppedPackages(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public sendBtDisconnectedIntent()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sony.wirelesscontroller.action.BT_CONTROLLER_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->sendIntentFlagIncludeStoppedPackages(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public sendUsbConnectedIntent(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sony.wirelesscontroller.action.USB_CONTROLLER_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sony.wirelesscontroller.extra.USBDEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->sendIntentFlagIncludeStoppedPackages(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public sendUsbDisconnectedIntent()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sony.wirelesscontroller.action.USB_CONTROLLER_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sony/wirelesscontroller/WirelessControllerIntentSender;->sendIntentFlagIncludeStoppedPackages(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
