.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogCancelListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaunchSettingAppDialogCancelListener"
.end annotation


# instance fields
.field private final mGeotagListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 0
    .param p1, "geotagListener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogCancelListener;->mGeotagListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .line 1097
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogCancelListener;->mGeotagListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 1102
    return-void
.end method
