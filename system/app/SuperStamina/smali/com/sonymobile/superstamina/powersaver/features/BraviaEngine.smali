.class public Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "BraviaEngine.java"


# static fields
.field private static final BRAVIA_DEFAULT:I

.field private static final BRAVIA_ENABLED:Ljava/lang/String; = "com.sonymobile.swiqi2_mode"

.field private static final BRAVIA_OFF:I = 0x0

.field private static final BRAVIA_PRODUCT_DEFAULT:Ljava/lang/String; = "persist.service.swiqi2.enable"

.field private static final BRAVIA_SUPPORTED:Z

.field private static final BRAVIA_SUPPORTED_PROPERTY:Ljava/lang/String; = "ro.service.swiqi2.supported"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLastValue:I

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string v0, "persist.service.swiqi2.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->BRAVIA_DEFAULT:I

    .line 36
    const-string v0, "ro.service.swiqi2.supported"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->BRAVIA_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string v0, "BraviaEngine"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 49
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mObserver:Landroid/database/ContentObserver;

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;

    .prologue
    .line 18
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mLastValue:I

    return v0
.end method

.method private getCurrentMode()I
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.sonymobile.swiqi2_mode"

    sget v2, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->BRAVIA_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setBravia(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mLastValue:I

    .line 109
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.sonymobile.swiqi2_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->setBravia(I)V

    .line 85
    return-void
.end method

.method public isAvailableOnDevice()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->BRAVIA_SUPPORTED:Z

    return v0
.end method

.method protected restoreSetting(I)V
    .locals 0
    .param p1, "savedState"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->setBravia(I)V

    .line 90
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.sonymobile.swiqi2_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    return-void
.end method
