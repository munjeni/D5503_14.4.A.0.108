.class Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;
.super Ljava/lang/Object;
.source "GatewayController.java"

# interfaces
.implements Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/GatewayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataListener"
.end annotation


# static fields
.field protected static final REQUEST_READ:Ljava/lang/String; = "read"

.field protected static final REQUEST_WRITE:Ljava/lang/String; = "write"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/gateway/GatewayController$1;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/String;)V
    .locals 10
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const-wide/32 v8, 0xdbba0

    const-wide/16 v6, 0x3c

    .line 424
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # getter for: Lcom/sonymobile/superstamina/gateway/GatewayController;->mEnabled:Z
    invoke-static {v4}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$500(Lcom/sonymobile/superstamina/gateway/GatewayController;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 425
    const-string v4, "SuperStamina-Gateway"

    const-string v5, "Gate feature is disabled"

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Gate feature is disabled"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const-string v4, "read"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "write"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 433
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # getter for: Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;
    invoke-static {v4}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$600(Lcom/sonymobile/superstamina/gateway/GatewayController;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V
    invoke-static {v4, v6, v7}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$700(Lcom/sonymobile/superstamina/gateway/GatewayController;J)V

    goto :goto_0

    .line 437
    :cond_3
    const-string v4, "block"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 441
    .local v0, "now":J
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # getter for: Lcom/sonymobile/superstamina/gateway/GatewayController;->mTimeClosed:J
    invoke-static {v4}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$800(Lcom/sonymobile/superstamina/gateway/GatewayController;)J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    .line 443
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V
    invoke-static {v4, v6, v7}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$700(Lcom/sonymobile/superstamina/gateway/GatewayController;J)V

    goto :goto_0

    .line 445
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # getter for: Lcom/sonymobile/superstamina/gateway/GatewayController;->mTimeClosed:J
    invoke-static {v4}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$800(Lcom/sonymobile/superstamina/gateway/GatewayController;)J

    move-result-wide v4

    sub-long v4, v0, v4

    sub-long v2, v8, v4

    .line 446
    .local v2, "timeLeft":J
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;->this$0:Lcom/sonymobile/superstamina/gateway/GatewayController;

    # invokes: Lcom/sonymobile/superstamina/gateway/GatewayController;->setAlarm(J)V
    invoke-static {v4, v2, v3}, Lcom/sonymobile/superstamina/gateway/GatewayController;->access$900(Lcom/sonymobile/superstamina/gateway/GatewayController;J)V

    goto :goto_0
.end method
