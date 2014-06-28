.class public abstract Lcom/sonyericsson/fmradio/util/SmartServiceConnection;
.super Ljava/lang/Object;
.source "SmartServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBound:Z

.field private mUnbindRequest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    .line 45
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    .line 46
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mUnbindRequest:Z

    .line 47
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Intent;I)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 51
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    :cond_0
    return v0
.end method

.method public abstract onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mUnbindRequest:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    .line 86
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mBound:Z

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->mUnbindRequest:Z

    goto :goto_0
.end method
