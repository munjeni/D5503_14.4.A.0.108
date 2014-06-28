.class Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;
.super Landroid/telephony/PhoneStateListener;
.source "GatewayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/GatewayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionListener"
.end annotation


# instance fields
.field mLastState:I

.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V
    .locals 1

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 517
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->mLastState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/gateway/GatewayController$1;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V

    return-void
.end method

.method private isAPNTableEmpty()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 540
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 541
    .local v1, "PREFERRED_APN":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # getter for: Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$1100(Lcom/sonymobile/superstamina/gateway/GatewayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 542
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x1

    .line 543
    .local v7, "result":Z
    if-eqz v6, :cond_0

    .line 545
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .line 547
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_0
    return v7

    .line 545
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 521
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 522
    iget v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->mLastState:I

    if-ne p1, v2, :cond_0

    .line 532
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v3, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->APN_MISSING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->isAPNTableEmpty()Z

    move-result v4

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    .line 526
    iput p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->mLastState:I

    .line 529
    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # getter for: Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnectivityMgr:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$1000(Lcom/sonymobile/superstamina/gateway/GatewayController;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 531
    .local v0, "wifi":Landroid/net/NetworkInfo$State;
    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v3, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v4, :cond_1

    :goto_1
    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v2, v3, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
