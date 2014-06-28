.class Landroid/net/wifi/p2p/WifiP2pService$IncomingDeviceInfo;
.super Ljava/lang/Object;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingDeviceInfo"
.end annotation


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public expiredTime:J

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0

    .prologue
    .line 3140
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$IncomingDeviceInfo;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p2, "x1"    # Landroid/net/wifi/p2p/WifiP2pService$1;

    .prologue
    .line 3140
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$IncomingDeviceInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    return-void
.end method
