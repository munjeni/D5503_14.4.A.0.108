.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;
.super Ljava/lang/Object;
.source "GeotagLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mLastLocation:Landroid/location/Location;

.field public final mProvider:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "geotagManager"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 44
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const-wide/16 v2, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 88
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 101
    if-nez p2, :cond_0

    .line 103
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 131
    return-void
.end method
