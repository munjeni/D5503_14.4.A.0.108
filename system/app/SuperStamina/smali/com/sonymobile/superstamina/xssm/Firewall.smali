.class public Lcom/sonymobile/superstamina/xssm/Firewall;
.super Ljava/lang/Object;
.source "Firewall.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-Firewall"


# instance fields
.field private mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mEnabled:Z

    .line 22
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    .line 23
    return-void
.end method


# virtual methods
.method public addWhitelistedUid(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x1

    .line 50
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "firewall"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "whitelist"

    aput-object v5, v3, v4

    const-string v4, "add"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v6, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 51
    return-void
.end method

.method public debug([Ljava/lang/String;)I
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const-string v0, "xssm"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "firewall"

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 74
    const-string v0, "enable"

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v3, v5}, Lcom/sonymobile/superstamina/xssm/Firewall;->enable(ZLandroid/os/Handler;)V

    .line 79
    :goto_0
    return v2

    .line 77
    :cond_0
    const-string v0, "disable"

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0, v2, v5}, Lcom/sonymobile/superstamina/xssm/Firewall;->enable(ZLandroid/os/Handler;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Usage: xssm firewall enable|disable\n"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable(ZLandroid/os/Handler;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x1

    .line 37
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mEnabled:Z

    if-ne v1, p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "firewall"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v1, "enable"

    :goto_1
    aput-object v1, v3, v4

    invoke-direct {v0, v5, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .local v0, "enableCommand":Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    invoke-virtual {v0, p2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->setResultHandler(Landroid/os/Handler;)V

    .line 44
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 45
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mEnabled:Z

    goto :goto_0

    .line 41
    .end local v0    # "enableCommand":Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    :cond_1
    const-string v1, "disable"

    goto :goto_1
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 63
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "firewall"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "init"

    aput-object v4, v3, v6

    invoke-direct {v1, v5, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 65
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "firewall"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "enable"

    aput-object v4, v3, v6

    invoke-direct {v1, v5, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 68
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mEnabled:Z

    return v0
.end method

.method public removeWhitelistedUid(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x1

    .line 54
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Firewall;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "firewall"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "whitelist"

    aput-object v5, v3, v4

    const-string v4, "remove"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v6, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 55
    return-void
.end method
