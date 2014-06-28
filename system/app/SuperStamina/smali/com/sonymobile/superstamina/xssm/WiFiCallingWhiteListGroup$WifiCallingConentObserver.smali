.class Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;
.super Landroid/database/ContentObserver;
.source "WiFiCallingWhiteListGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallingConentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;->this$0:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    .line 52
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;->this$0:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    # invokes: Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->isWifiCallingEnabled()Z
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->access$000(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;->this$0:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    # invokes: Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->addPackagesToWhiteList()V
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->access$100(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;->this$0:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    # invokes: Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->removePackagesFromWhiteList()V
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->access$200(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;)V

    goto :goto_0
.end method
