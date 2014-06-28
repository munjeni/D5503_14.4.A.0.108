.class Lcom/sonymobile/superstamina/gateway/GatewayController$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "GatewayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/GatewayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$1;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 164
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$1;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->RESTRICT_BACKGROUND_DATA:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    .line 169
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 159
    return-void
.end method
