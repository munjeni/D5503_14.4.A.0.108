.class Lcom/android/settings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p2, "x1"    # Lcom/android/settings/wifi/WifiSettings$1;

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 986
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 995
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 996
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 1006
    :cond_0
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1007
    :cond_1
    :goto_0
    return-void

    .line 997
    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 998
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 999
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1000
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1001
    const v1, 0x7f0b029a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 989
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 990
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 991
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 978
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 981
    :cond_0
    return-void
.end method
