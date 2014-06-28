.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$WpsListener;,
        Landroid/net/wifi/WifiManager$ActionListener;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field private static final BASE:I = 0x25000

.field public static final BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final ERROR:I = 0x0

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static final FIRST_SCAN_DELAY_MSEC:I = 0x7d0

.field public static final FORGET_CREDENTIAL:I = 0x25017

.field public static final FORGET_CREDENTIAL_FAILED:I = 0x25018

.field public static final FORGET_CREDENTIAL_SUCCEEDED:I = 0x25019

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final INVALID_ARGS:I = 0x8

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final IP_ADDRESS:Ljava/lang/String; = "ip_address"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field public static final MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MAX_RSSI_OPTIMIZED:I = -0x3c

.field private static final MIN_RSSI:I = -0x64

.field private static final MIN_RSSI_OPTIMIZED:I = -0x5f

.field private static final MIN_RSSI_ZERO_THRESHOLD:I = -0x5c

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAVE_CREDENTIAL:I = 0x2501a

.field public static final SAVE_CREDENTIAL_FAILED:I = 0x2501b

.field public static final SAVE_CREDENTIAL_SUCCEEDED:I = 0x2501c

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    sput v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 590
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    .line 591
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    .line 596
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 613
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 614
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->init()V

    .line 615
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 616
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 76
    invoke-static {p0}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 76
    sput-object p0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 76
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$508(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 76
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$510(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 76
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 701
    :goto_0
    return v1

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 1187
    const/4 v2, 0x5

    if-gt p1, v2, :cond_0

    .line 1188
    invoke-static {p0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevelOptimized(II)I

    move-result v2

    .line 1196
    :goto_0
    return v2

    .line 1189
    :cond_0
    const/16 v2, -0x64

    if-gt p0, v2, :cond_1

    .line 1190
    const/4 v2, 0x0

    goto :goto_0

    .line 1191
    :cond_1
    const/16 v2, -0x37

    if-lt p0, v2, :cond_2

    .line 1192
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 1194
    :cond_2
    const/high16 v0, 0x42340000

    .line 1195
    .local v0, "inputRange":F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 1196
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method private static calculateSignalLevelOptimized(II)I
    .locals 10
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L

    .line 1215
    const/16 v4, -0x5c

    if-gt p0, v4, :cond_0

    .line 1216
    const/4 v4, 0x0

    .line 1222
    :goto_0
    return v4

    .line 1217
    :cond_0
    const/16 v4, -0x3c

    if-lt p0, v4, :cond_1

    .line 1218
    add-int/lit8 v4, p1, -0x1

    goto :goto_0

    .line 1220
    :cond_1
    const-wide v0, 0x4041800000000000L

    .line 1221
    .local v0, "inputRange":D
    add-int/lit8 v4, p1, -0x1

    int-to-double v2, v4

    .line 1222
    .local v2, "outputRange":D
    add-int/lit8 v4, p0, 0x5f

    int-to-double v4, v4

    div-double/2addr v4, v0

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    goto :goto_0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    .prologue
    .line 1237
    sub-int v0, p0, p1

    return v0
.end method

.method private getCallerProcName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1079
    const-string/jumbo v3, "unknown"

    .line 1080
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1082
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/self/comm"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 1088
    if-eqz v2, :cond_0

    .line 1089
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 1094
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-object v3

    .line 1091
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 1093
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1084
    :catch_1
    move-exception v0

    .line 1085
    .local v0, "err":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "WifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read /proc/self/comm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1088
    if-eqz v1, :cond_1

    .line 1089
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1091
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1087
    .end local v0    # "err":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1088
    :goto_2
    if-eqz v1, :cond_2

    .line 1089
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1092
    :cond_2
    :goto_3
    throw v4

    .line 1091
    :catch_3
    move-exception v5

    goto :goto_3

    .line 1087
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1084
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1743
    sget-object v4, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1744
    :try_start_0
    sget v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-ne v3, v5, :cond_1

    .line 1745
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 1746
    .local v2, "messenger":Landroid/os/Messenger;
    if-nez v2, :cond_0

    .line 1747
    const/4 v3, 0x0

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1748
    monitor-exit v4

    .line 1765
    .end local v2    # "messenger":Landroid/os/Messenger;
    :goto_0
    return-void

    .line 1751
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "WifiManager"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 1752
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1753
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    .line 1755
    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1756
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .line 1757
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    :try_start_1
    sget-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1764
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1760
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "WifiManager"

    const-string v5, "interrupted wait at init"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    .line 1722
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1730
    :goto_0
    return v0

    .line 1724
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1726
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 1727
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 1728
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1729
    monitor-exit v2

    goto :goto_0

    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 1734
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1738
    :goto_0
    return-object v0

    .line 1735
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1736
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1737
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 1738
    monitor-exit v2

    goto :goto_0

    .line 1739
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWifiEnabledWithDelayedFirstScan(ZI)Z
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v2, 0x0

    .line 1129
    const-string v3, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getCallerProcName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    const-string v1, " enabled"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Wifi"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager;->noteOp(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 1137
    :goto_1
    return v1

    .line 1129
    :cond_0
    const-string v1, " disabled"

    goto :goto_0

    .line 1135
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiEnabledWithDelayedFirstScan(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 1136
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v1, v2

    .line 1137
    goto :goto_1
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    .line 1768
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1770
    :cond_0
    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 660
    if-nez p1, :cond_0

    .line 664
    :goto_0
    return v0

    .line 663
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 664
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1405
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    const/4 v1, 0x1

    .line 1408
    :goto_0
    return v1

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1931
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1932
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500e

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1933
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 1

    .prologue
    .line 2404
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->captivePortalCheckComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    :goto_0
    return-void

    .line 2405
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearBlacklist()Z
    .locals 2

    .prologue
    .line 1422
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    const/4 v1, 0x1

    .line 1425
    :goto_0
    return v1

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1811
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1812
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1813
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1814
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1789
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1793
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    const/4 v2, -0x1

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1795
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2212
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2178
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2194
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1869
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1870
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1871
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25011

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1872
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 750
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 752
    :goto_0
    return v1

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 778
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    const/4 v1, 0x1

    .line 781
    :goto_0
    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 735
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 737
    :goto_0
    return v1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableWifiWithDelayedFirstScan()Z
    .locals 2

    .prologue
    .line 1118
    const/4 v0, 0x1

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabledWithDelayedFirstScan(ZI)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2410
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2411
    :try_start_1
    sget v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2412
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 2414
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2416
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2418
    return-void

    .line 2414
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2416
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1854
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1856
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25004

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1857
    return-void
.end method

.method public forgetCredential(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "credId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1902
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1903
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1904
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25017

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1905
    return-void
.end method

.method public getBatchedScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 916
    :goto_0
    return-object v1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1971
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1973
    :goto_0
    return-object v1

    .line 1972
    :catch_0
    move-exception v0

    .line 1973
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredCredentials()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiCredential;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredCredentials()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 767
    :goto_0
    return-object v1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 641
    :goto_0
    return-object v1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 952
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 954
    :goto_0
    return-object v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 1068
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1070
    :goto_0
    return-object v1

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrequencyBand()I
    .locals 2

    .prologue
    .line 1042
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1044
    :goto_0
    return v1

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 966
    :goto_0
    return-object v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .prologue
    .line 1172
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1173
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25014

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1174
    return-void
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1297
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1299
    :goto_0
    return-object v1

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1347
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1349
    :goto_0
    return-object v1

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getWifiApMaxNumConnectedDevices()I
    .locals 2

    .prologue
    .line 1327
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApMaxNumConnectedDevices()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1329
    :goto_0
    return v1

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 1272
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1274
    :goto_0
    return v1

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1944
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1948
    :goto_0
    return-object v1

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1947
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1948
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 1150
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1152
    :goto_0
    return v1

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1959
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1961
    :goto_0
    return-object v1

    .line 1960
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 2394
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2395
    const/4 v1, 0x1

    .line 2397
    :goto_0
    return v1

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBatchedScanSupported()Z
    .locals 2

    .prologue
    .line 888
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isBatchedScanSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 889
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1055
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1057
    :goto_0
    return v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2382
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2384
    :goto_0
    return v1

    .line 2383
    :catch_0
    move-exception v0

    .line 2384
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2

    .prologue
    .line 980
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 982
    :goto_0
    return v1

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 1286
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 1162
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 821
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 826
    :goto_0
    return v1

    .line 824
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 1

    .prologue
    .line 942
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->pollBatchedScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    const/4 v1, 0x1

    .line 811
    :goto_0
    return v1

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 793
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    const/4 v1, 0x1

    .line 796
    :goto_0
    return v1

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 717
    :goto_0
    return v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;)Z
    .locals 4
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 870
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 871
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 876
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, v2, p2}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 877
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1835
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1836
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1837
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25007

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1838
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 997
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 999
    :goto_0
    return v1

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveCredential(Landroid/net/wifi/WifiCredential;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "cred"    # Landroid/net/wifi/WifiCredential;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 1886
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "credential cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1887
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1888
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2501a

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1889
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .locals 2
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    .prologue
    .line 1452
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :goto_0
    return-void

    .line 1453
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1466
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :goto_0
    return-void

    .line 1467
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1311
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    const/4 v1, 0x1

    .line 1314
    :goto_0
    return v1

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 1254
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    const/4 v1, 0x1

    .line 1257
    :goto_0
    return v1

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabledWithDelayedFirstScan(ZI)Z

    move-result v0

    return v0
.end method

.method public startScan()Z
    .locals 5

    .prologue
    .line 837
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getCallerProcName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested a scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v1, 0x0

    .line 840
    .local v1, "workSource":Landroid/os/WorkSource;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    const/4 v2, 0x1

    .line 843
    :goto_0
    return v2

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    const/4 v1, 0x1

    .line 853
    :goto_0
    return v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWifi()Z
    .locals 2

    .prologue
    .line 1368
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    const/4 v1, 0x1

    .line 1371
    :goto_0
    return v1

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsListener;

    .prologue
    .line 1917
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1918
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1919
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500a

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1920
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 1
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 903
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopWifi()Z
    .locals 2

    .prologue
    .line 1388
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    const/4 v1, 0x1

    .line 1391
    :goto_0
    return v1

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 683
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 684
    :cond_0
    const/4 v0, -0x1

    .line 686
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method
