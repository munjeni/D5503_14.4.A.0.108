.class public abstract Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.super Ljava/lang/Object;
.source "AnalyzerPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 43
    return-void
.end method

.method public onBatteryChanged(IZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 35
    return-void
.end method

.method public onPowerSaverActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 31
    return-void
.end method

.method public onPowerSaverEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 27
    return-void
.end method

.method public onScreenOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 39
    return-void
.end method

.method public onXssmActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 19
    return-void
.end method

.method public onXssmEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 15
    return-void
.end method

.method public onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 0
    .param p1, "state"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    .line 23
    return-void
.end method
