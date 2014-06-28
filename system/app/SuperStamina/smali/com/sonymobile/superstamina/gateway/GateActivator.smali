.class public Lcom/sonymobile/superstamina/gateway/GateActivator;
.super Lcom/sonymobile/superstamina/BaseActivator;
.source "GateActivator.java"


# instance fields
.field private mGatewayController:Lcom/sonymobile/superstamina/gateway/GatewayController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/gateway/GatewayController;)V
    .locals 1
    .param p1, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;
    .param p2, "gatewayController"    # Lcom/sonymobile/superstamina/gateway/GatewayController;

    .prologue
    .line 15
    const-string v0, "gate"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/superstamina/BaseActivator;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/sonymobile/superstamina/gateway/GateActivator;->mGatewayController:Lcom/sonymobile/superstamina/gateway/GatewayController;

    .line 17
    return-void
.end method


# virtual methods
.method protected onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 27
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GateActivator;->mGatewayController:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->enableGate(Z)V

    .line 22
    return-void
.end method
