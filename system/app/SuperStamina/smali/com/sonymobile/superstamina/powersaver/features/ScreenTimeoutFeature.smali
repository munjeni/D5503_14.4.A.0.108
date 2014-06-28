.class public Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "ScreenTimeoutFeature.java"


# static fields
.field public static final DEFAULT_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-ScreenTimeoutFeature"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "Timeout"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 28
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mObserver:Landroid/database/ContentObserver;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->getTimeout()I

    move-result v0

    return v0
.end method

.method private getTimeout()I
    .locals 3

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 50
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "SuperStamina-ScreenTimeoutFeature"

    const-string v2, "Setting not found! ScreenTimeout feature will not work properly."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/16 v1, 0x7530

    goto :goto_0
.end method

.method private setTimeout(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getParam()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    if-gt v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getParam()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->setTimeout(I)V

    .line 64
    :cond_0
    return-void
.end method

.method protected restoreSetting(I)V
    .locals 0
    .param p1, "savedState"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->setTimeout(I)V

    .line 74
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->getTimeout()I

    move-result v0

    return v0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    return-void
.end method
