.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
.super Ljava/lang/Object;
.source "GeotagManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcquiring:Z

.field private final mContext:Landroid/content/Context;

.field private mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

.field private mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static getGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;)Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .locals 2
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "originalValue"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .prologue
    .line 296
    move-object v0, p1

    .line 297
    .local v0, "modifiedValue":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v1, :cond_0

    .line 298
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeotagAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 302
    :cond_0
    return-object v0
.end method

.method public static isGeotagAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .locals 1
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isGpsLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isNetworkLocationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public assignResource()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "gps"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "network"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    :cond_2
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 176
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 177
    .local v1, "locNetwork":Landroid/location/Location;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v0

    .line 179
    .local v0, "locGps":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 186
    .end local v0    # "locGps":Landroid/location/Location;
    :goto_0
    return-object v0

    .line 182
    .restart local v0    # "locGps":Landroid/location/Location;
    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationListener(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 320
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAcquiring()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    return v0
.end method

.method public isGpsAcquired()Z
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "isAcquired":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 225
    :cond_0
    return v0
.end method

.method public isNetworkAcquired()Z
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "isAcquired":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 240
    :cond_0
    return v0
.end method

.method public notifyStatus()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v0

    .line 198
    .local v0, "gps":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v1

    .line 200
    .local v1, "net":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onAcquired(ZZ)V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 90
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 92
    return-void
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    .line 82
    return-void
.end method

.method public setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 4
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 254
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v3, "gps"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 263
    .local v0, "gps":Z
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v3, "network"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 266
    .local v1, "net":Z
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    .line 268
    .end local v0    # "gps":Z
    .end local v1    # "net":Z
    :cond_1
    return-void
.end method

.method public setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 2
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .param p2, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p4, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 273
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v0, :cond_2

    .line 274
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeotagAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 277
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 278
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isGeotagExplanatoryDialogOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {p3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeCurrentDialog()V

    .line 280
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showWirelessGpsExplanatoryDialog(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    .line 283
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 293
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-interface {p3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeCurrentDialog()V

    .line 287
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showLaunchSettingAppDialog(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 291
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0
.end method

.method public setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    .line 101
    return-void
.end method

.method public declared-synchronized startLocationUpdates(ZZ)V
    .locals 7
    .param p1, "gps"    # Z
    .param p2, "network"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :catch_0
    move-exception v6

    .line 140
    .local v6, "ex":Ljava/lang/SecurityException;
    :try_start_1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->TAG:Ljava/lang/String;

    const-string v1, "provider can\'t access."

    invoke-static {v0, v1, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 142
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :catch_1
    move-exception v6

    .line 145
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopReceivingLocationUpdates()V
    .locals 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_1
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
