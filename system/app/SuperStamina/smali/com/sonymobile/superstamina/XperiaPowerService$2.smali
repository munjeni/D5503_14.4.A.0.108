.class Lcom/sonymobile/superstamina/XperiaPowerService$2;
.super Landroid/content/BroadcastReceiver;
.source "XperiaPowerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/XperiaPowerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/XperiaPowerService;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonymobile/superstamina/XperiaPowerService$2;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$2;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$100(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/analyzer/Analyzer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->onScreenOn(Z)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$2;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget-object v0, v0, Lcom/sonymobile/superstamina/XperiaPowerService;->mSocketSynchronizer:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->onScreenOn(Z)V

    .line 175
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$2;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mIddHandler:Lcom/sonymobile/superstamina/xssm/IddHandler;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$200(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/IddHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/xssm/IddHandler;->onScreenOff()V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$2;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$300(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/XssmActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->onScreenOff()V

    .line 177
    return-void
.end method
