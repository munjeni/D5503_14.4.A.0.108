.class Landroid/net/wifi/WifiStateMachine$7;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 848
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 851
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_hs2_auto_connection"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 853
    .local v0, "enabled":I
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20090

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 854
    return-void
.end method
