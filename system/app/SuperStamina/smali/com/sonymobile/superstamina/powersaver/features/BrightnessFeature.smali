.class public Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "BrightnessFeature.java"


# static fields
.field public static final DEFAULT_BRIGHTNESS_VALUE:I = 0x95

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-BrightnessFeature"

.field public static final MAX_BRIGHTNESS_VALUE:I = 0xff

.field public static final MIN_BRIGHTNESS_VALUE:I = 0x14


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLastValue:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mPower:Landroid/os/IPowerManager;

.field private mSetBrightnessMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 60
    const-string v2, "Brightness"

    const/16 v5, 0x14

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 45
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mObserver:Landroid/database/ContentObserver;

    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mPower:Landroid/os/IPowerManager;

    .line 64
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->initBrightnessReflection()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->getBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mLastValue:I

    return v0
.end method

.method private getBrightness()I
    .locals 3

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "SuperStamina-BrightnessFeature"

    const-string v2, "Setting not found! Brightness feature will not work properly."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/16 v1, 0x95

    goto :goto_0
.end method

.method private initBrightnessReflection()V
    .locals 6

    .prologue
    .line 70
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mPower:Landroid/os/IPowerManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBacklightBrightness"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mSetBrightnessMethod:Ljava/lang/reflect/Method;

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mPower:Landroid/os/IPowerManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTemporaryScreenBrightnessSettingOverride"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mSetBrightnessMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reflection failed. New cookie?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setBrightess(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mLastValue:I

    .line 114
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 115
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mSetBrightnessMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mPower:Landroid/os/IPowerManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reflection failed. New cookie?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 121
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reflection failed. New cookie?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 124
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "SuperStamina-BrightnessFeature"

    const-string v3, "Failed to set brightness"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected applySaving()V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->getBrightness()I

    move-result v0

    .line 138
    .local v0, "current":I
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getParam()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getParam()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->setBrightess(I)V

    .line 141
    :cond_0
    return-void
.end method

.method protected restoreSetting(I)V
    .locals 0
    .param p1, "savedState"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->setBrightess(I)V

    .line 151
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->getBrightness()I

    move-result v0

    return v0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    return-void
.end method

.method public declared-synchronized update(Lcom/sonymobile/superstamina/powersaver/features/Feature;)V
    .locals 3
    .param p1, "f"    # Lcom/sonymobile/superstamina/powersaver/features/Feature;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->update(Lcom/sonymobile/superstamina/powersaver/features/Feature;)V

    .line 92
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->isSavingActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    iget v2, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 97
    .local v0, "newValue":I
    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->setBrightess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v0    # "newValue":I
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
