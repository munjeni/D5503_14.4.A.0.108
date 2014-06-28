.class Lcom/sonymobile/superstamina/xssm/SSMDriver;
.super Ljava/lang/Object;
.source "SSMDriver.java"


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
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/SSMDriver;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    .line 15
    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 18
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/SSMDriver;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v2, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v3, "ssm_driver"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v0, "enable"

    :goto_0
    aput-object v0, v4, v5

    invoke-direct {v2, v5, v3, v4}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 19
    return-void

    .line 18
    :cond_0
    const-string v0, "disable"

    goto :goto_0
.end method

.method public enableLateResumeEvents(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 22
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/SSMDriver;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v2, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v3, "ssm_driver"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const-string v0, "enableLateResumeEvents"

    aput-object v0, v4, v6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    const-string v0, "enable"

    :goto_0
    aput-object v0, v4, v5

    invoke-direct {v2, v6, v3, v4}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 23
    return-void

    .line 22
    :cond_0
    const-string v0, "disable"

    goto :goto_0
.end method

.method public requestSuspendEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 26
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/SSMDriver;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "ssm_driver"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "requestNextPrepareSuspendEvent"

    aput-object v4, v3, v5

    invoke-direct {v1, v5, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 27
    return-void
.end method
