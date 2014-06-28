.class Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GatewayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/GatewayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/gateway/GatewayController$1;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    const-wide/16 v1, 0x3c

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$700(Lcom/sonymobile/superstamina/gateway/GatewayController;J)V

    .line 459
    return-void
.end method
