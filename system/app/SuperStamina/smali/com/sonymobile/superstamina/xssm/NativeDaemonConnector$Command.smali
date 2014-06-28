.class public Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mCmd:Ljava/lang/String;

.field private mDisposable:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public varargs constructor <init>(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "disposable"    # Z
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mDisposable:Z

    .line 84
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mArgs:[Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mDisposable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mArgs:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public setResultHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v1, "ret":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mArgs:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mArgs:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
