.class public Lcom/sonymobile/superstamina/HardwareRestrictionManager;
.super Ljava/lang/Object;
.source "HardwareRestrictionManager.java"


# static fields
.field private static final ACTION_NOTIFY_RUNTIME_STAMINA_CHANGE:Ljava/lang/String; = "com.sonymobile.RUNTIME_STAMINA_STATE_CHANGE"

.field private static final KEY_XSSM_RESTRICT_PERFOMRANCE:Ljava/lang/String; = "xssm_restrict_performance"

.field private static final RUNTIME_ENABLE_TAG:Ljava/lang/String; = "enable"


# instance fields
.field private mActivated:Z

.field private mHwRestrictionEnabled:Z

.field private mPowerSaverHwRestrictionActivated:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mService:Lcom/sonymobile/superstamina/XperiaPowerService;

.field private mStaminaEnabled:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    .line 65
    iput-object p2, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 66
    iget-object v1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "xssm_restrict_performance"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "xssm_restrict_performance"

    const v3, 0x7f090001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->isXssmHwRestrictionEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mHwRestrictionEnabled:Z

    .line 72
    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 53
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mActivated:Z

    .line 54
    .local v1, "prevActivated":Z
    iget-boolean v2, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mHwRestrictionEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mStaminaEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mPowerSaverHwRestrictionActivated:Z

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mActivated:Z

    .line 56
    iget-boolean v2, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mActivated:Z

    if-eq v1, v2, :cond_2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.RUNTIME_STAMINA_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enable"

    iget-boolean v3, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mActivated:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 54
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public debug([Ljava/lang/String;)I
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    const-string v2, "hw-rest-mgr"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 77
    const-string v2, "activate"

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const-string v2, "true"

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iput-boolean v0, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mHwRestrictionEnabled:Z

    .line 80
    invoke-direct {p0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->updateState()V

    .line 90
    :goto_0
    return v0

    .line 82
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mHwRestrictionEnabled:Z

    .line 83
    invoke-direct {p0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->updateState()V

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Usage: hw-rest-mgr activate true|false"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public enableXssmHwRestriction(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mHwRestrictionEnabled:Z

    .line 99
    iget-object v0, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xssm_restrict_performance"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    invoke-direct {p0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->updateState()V

    .line 101
    return-void
.end method

.method public isXssmHwRestrictionEnabled()Z
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "xssm_restrict_performance"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onPowerSaverHwRestrictionActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mPowerSaverHwRestrictionActivated:Z

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->updateState()V

    .line 118
    return-void
.end method

.method public onStaminaEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->mStaminaEnabled:Z

    .line 128
    invoke-direct {p0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->updateState()V

    .line 129
    return-void
.end method
