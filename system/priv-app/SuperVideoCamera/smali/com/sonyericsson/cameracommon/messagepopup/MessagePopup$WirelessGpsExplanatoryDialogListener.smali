.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WirelessGpsExplanatoryDialogListener"
.end annotation


# instance fields
.field private mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V
    .locals 0
    .param p2, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 1038
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1049
    sget-object v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->ON:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    .line 1050
    .local v0, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    if-eqz p2, :cond_0

    .line 1052
    sget-object v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->OFF:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 1055
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->store()V

    .line 1056
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 1043
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->store()V

    .line 1044
    return-void
.end method
