.class public Lcom/sonymobile/superstamina/xssm/Leds;
.super Ljava/lang/Object;
.source "Leds.java"


# instance fields
.field private mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;)V
    .locals 0
    .param p1, "connector"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Leds;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    .line 15
    return-void
.end method


# virtual methods
.method public enableGamma(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 22
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Leds;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v2, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v3, "leds"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v0, "enableGamma"

    :goto_0
    aput-object v0, v4, v5

    invoke-direct {v2, v5, v3, v4}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 23
    return-void

    .line 22
    :cond_0
    const-string v0, "disableGamma"

    goto :goto_0
.end method

.method public enableOverride(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 18
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Leds;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v2, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v3, "leds"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v0, "enableOverride"

    :goto_0
    aput-object v0, v4, v5

    invoke-direct {v2, v5, v3, v4}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 19
    return-void

    .line 18
    :cond_0
    const-string v0, "disableOverride"

    goto :goto_0
.end method

.method public initOverride(IIIII)V
    .locals 7
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "onTime"    # I
    .param p5, "offTime"    # I

    .prologue
    const/4 v6, 0x0

    .line 26
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Leds;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "leds"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "initOverride"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v6, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 28
    return-void
.end method
