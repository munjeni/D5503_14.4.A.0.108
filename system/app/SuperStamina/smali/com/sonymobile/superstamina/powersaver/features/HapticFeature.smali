.class public Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "HapticFeature.java"


# static fields
.field public static final DEFAULT_HAPTIC_VALUE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-HapticFeature"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, "haptic"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 28
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->mObserver:Landroid/database/ContentObserver;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->getHapticOn()I

    move-result v0

    return v0
.end method

.method private getHapticOn()I
    .locals 3

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "SuperStamina-HapticFeature"

    const-string v2, "Setting not found! Haptic feature will not work properly."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setHapticOn(I)V
    .locals 2
    .param p1, "on"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->setHapticOn(I)V

    .line 53
    return-void
.end method

.method public isAvailableOnDevice()Z
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 46
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected restoreSetting(I)V
    .locals 0
    .param p1, "savedState"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->setHapticOn(I)V

    .line 63
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->getHapticOn()I

    move-result v0

    return v0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    return-void
.end method
