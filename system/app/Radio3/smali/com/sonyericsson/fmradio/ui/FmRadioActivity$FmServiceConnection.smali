.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
.super Lcom/sonyericsson/fmradio/util/SmartServiceConnection;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .line 502
    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;-><init>(Landroid/content/Context;)V

    .line 503
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 507
    check-cast p2, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;->getService()Lcom/sonyericsson/fmradio/service/FmService;

    move-result-object v0

    .line 508
    .local v0, "fmService":Lcom/sonyericsson/fmradio/service/FmService;
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/FmService;->isUserBackground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$900(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/fmradio/service/FmService;->getTuner(Z)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v2

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/service/Tuner;)V

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1100(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->unbind()V

    .line 512
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    const/4 v2, 0x0

    # setter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1102(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    goto :goto_0
.end method
