.class public Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;
.super Lcom/sonymobile/superstamina/BaseActivator;
.source "PowerSaverActivator.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-PowerSaverActivator"


# instance fields
.field private mIgnoreCharging:Z

.field private mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/powersaver/PowerSaver;)V
    .locals 1
    .param p1, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;
    .param p2, "powerSaver"    # Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    .prologue
    .line 30
    const-string v0, "powersaver"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/superstamina/BaseActivator;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;->mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    .line 32
    return-void
.end method


# virtual methods
.method public debug([Ljava/lang/String;)I
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 74
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 75
    const-string v0, "ignorecharger"

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;->mIgnoreCharging:Z

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    .line 79
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Usage: powersaveractivator ignorecharger [true,false]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/sonymobile/superstamina/BaseActivator;->init()V

    .line 36
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;->mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->restoreAllFeatures()V

    .line 41
    :cond_0
    return-void
.end method

.method protected onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;->mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->onPowerSaverActivated(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService;->onPowerSaverActivated(Z)V

    .line 60
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService;->onPowerSaverEnabled(Z)V

    .line 50
    return-void
.end method

.method protected shouldBeActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-super {p0}, Lcom/sonymobile/superstamina/BaseActivator;->shouldBeActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;->mIgnoreCharging:Z

    if-eqz v1, :cond_0

    .line 70
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
