.class Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;
.super Lcom/sony/stamina/IApplicationDependencyObserver$Stub;
.source "WhitelistGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    invoke-direct {p0}, Lcom/sony/stamina/IApplicationDependencyObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDependencyAdded(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 2
    .param p1, "from"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "to"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$400(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;-><init>(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public onDependencyRemoved(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 2
    .param p1, "from"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "to"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$400(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;-><init>(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method
