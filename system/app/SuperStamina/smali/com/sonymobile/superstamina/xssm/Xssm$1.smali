.class Lcom/sonymobile/superstamina/xssm/Xssm$1;
.super Ljava/lang/Object;
.source "Xssm.java"

# interfaces
.implements Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/xssm/Xssm;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/Xssm;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$1;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNodeAdded(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V
    .locals 3
    .param p1, "node"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$1;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$300(Lcom/sonymobile/superstamina/xssm/Xssm;)Lcom/sonymobile/superstamina/xssm/Firewall;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v2, v2, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/Firewall;->addWhitelistedUid(I)V

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$1;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmManager:Landroid/app/IAlarmManager;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$400(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/app/IAlarmManager;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v2, v2, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-interface {v1, v2}, Landroid/app/IAlarmManager;->addWhitelistedUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onNodeRemoved(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V
    .locals 3
    .param p1, "node"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$1;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$200(Lcom/sonymobile/superstamina/xssm/Xssm;)Lcom/sonymobile/superstamina/xssm/WhitelistController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->getGraph()Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v2, v2, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$1;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$300(Lcom/sonymobile/superstamina/xssm/Xssm;)Lcom/sonymobile/superstamina/xssm/Firewall;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v2, v2, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/Firewall;->removeWhitelistedUid(I)V

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$1;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmManager:Landroid/app/IAlarmManager;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$400(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/app/IAlarmManager;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v2, v2, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-interface {v1, v2}, Landroid/app/IAlarmManager;->removeWhitelistedUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
