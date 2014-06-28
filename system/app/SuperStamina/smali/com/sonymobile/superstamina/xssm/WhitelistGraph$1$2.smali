.class Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;
.super Ljava/lang/Object;
.source "WhitelistGraph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->onDependencyRemoved(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

.field final synthetic val$from:Lcom/sony/stamina/ProcessInfo;

.field final synthetic val$to:Lcom/sony/stamina/ProcessInfo;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->val$from:Lcom/sony/stamina/ProcessInfo;

    iput-object p3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->val$to:Lcom/sony/stamina/ProcessInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$000(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->val$from:Lcom/sony/stamina/ProcessInfo;

    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->val$to:Lcom/sony/stamina/ProcessInfo;

    # invokes: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->removeDependenciesForUidLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    invoke-static {v1, v3, v4}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$500(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$300(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$2;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$300(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;->onUpdate()V

    .line 87
    :cond_0
    monitor-exit v2

    .line 88
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
