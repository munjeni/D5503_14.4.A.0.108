.class Lcom/sonymobile/android/addoncamera/supervideo/view/setting/GeotagDialogListener;
.super Ljava/lang/Object;
.source "GeotagDialogListener.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/GeotagDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 25
    return-void
.end method


# virtual methods
.method public onSet(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 35
    .local v0, "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/GeotagDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 36
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/GeotagDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 37
    return-void

    .line 33
    .end local v0    # "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .restart local v0    # "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    goto :goto_0
.end method
