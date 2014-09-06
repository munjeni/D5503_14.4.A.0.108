.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchSettingAppDialogListener"
.end annotation


# instance fields
.field private final mGeotagListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 0
    .param p2, "geotagListener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mGeotagListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .line 1112
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mGeotagListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 1131
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mGeotagListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    invoke-interface {v0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 1117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_advanced_setting_geo_tag_return_txt:I

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$600(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    .line 1121
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1126
    return-void
.end method
