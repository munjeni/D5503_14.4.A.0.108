.class public Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "GPSFeature.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "GPS"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 24
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mObserver:Landroid/database/ContentObserver;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mContentResolver:Landroid/content/ContentResolver;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->isGpsOn()Z

    move-result v0

    return v0
.end method

.method private isGpsOn()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setGpsOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->setGpsOn(Z)V

    .line 44
    return-void
.end method

.method protected restoreSetting(I)V
    .locals 1
    .param p1, "savedState"    # I

    .prologue
    .line 53
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->setGpsOn(Z)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->isGpsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    return-void
.end method
