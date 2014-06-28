.class Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;
.super Ljava/lang/Object;
.source "WhitelistGraph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->onDependencyAdded(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
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
    .line 57
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->val$from:Lcom/sony/stamina/ProcessInfo;

    iput-object p3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->val$to:Lcom/sony/stamina/ProcessInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 60
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$000(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$100(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->val$from:Lcom/sony/stamina/ProcessInfo;

    invoke-virtual {v1, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v0

    .line 62
    .local v0, "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    iget-object v3, v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->val$to:Lcom/sony/stamina/ProcessInfo;

    # invokes: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->whitelistPackageLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    invoke-static {v1, v3, v4}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$200(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    .line 64
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$300(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1$1;->this$1:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    iget-object v1, v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$300(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;->onUpdate()V

    .line 68
    :cond_0
    monitor-exit v2

    .line 69
    return-void

    .line 68
    .end local v0    # "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
