.class Lcom/android/phone/NetworkSetting$2;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 246
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v1, "connection created, binding local service."

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    # setter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$1202(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 248
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->checkSearchNwPossible()Z
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$1600(Lcom/android/phone/NetworkSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->loadNetworksList()V
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;)V

    .line 252
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 256
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v1, "connection disconnected, cleaning local binding."

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$1202(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 258
    return-void
.end method
