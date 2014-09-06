.class public Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionThermal;,
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;,
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_COOLED_DOWN_NORMAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

.field public static final ACTION_CAMERA_HEATED_OVER_CRITICAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

.field private static final CAMERA_CRITICAL:I = 0x25c

.field private static final CAMERA_NORMAL:I = 0x258

.field private static final CAMERA_WARNING:I = 0x25b

.field private static final SYSMON_SERVICE:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.ISysmonService"

.field private static final TAG:Ljava/lang/String;

.field private static final THERMAL_CUSTOM_KEY_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final THERMAL_CUSTOM_KEY_WARNING:Ljava/lang/String; = "warning"

.field private static final THERMAL_SERVICE:Ljava/lang/String; = "com.sonyericsson.psm.thermalservice.ISysmonService"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsAlreadyHighTemperature:Z

.field private mIsBindSysmonService:Z

.field private mIsBindThermalService:Z

.field private final mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

.field private final mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field private final mServiceConnectionSysmon:Landroid/content/ServiceConnection;

.field private final mServiceConnectionThermal:Landroid/content/ServiceConnection;

.field private mSetting:Ljava/lang/String;

.field private mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

.field private mThermalService:Lcom/sonyericsson/psm/thermalservice/ISysmonService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 76
    const-string v0, "shutdown"

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSetting:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 157
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    .line 158
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 159
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 160
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionSysmon;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    .line 161
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionThermal;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ServiceConnectionThermal;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionThermal:Landroid/content/ServiceConnection;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)Lcom/sonyericsson/psm/thermalservice/ISysmonService;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalService:Lcom/sonyericsson/psm/thermalservice/ISysmonService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/psm/thermalservice/ISysmonService;)Lcom/sonyericsson/psm/thermalservice/ISysmonService;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/psm/thermalservice/ISysmonService;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mThermalService:Lcom/sonyericsson/psm/thermalservice/ISysmonService;

    return-object p1
.end method

.method private checkStartupStatus(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "service"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 97
    :pswitch_2
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private finishOnStartup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, v3}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachHighTemperature(Z)V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_already_high_txt:I

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessageAndAbort(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 249
    return-void
.end method

.method private showDialogCritical()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachHighTemperature(Z)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showThermalCriticalAndAbort()V

    .line 258
    return-void
.end method

.method private showDialogWarning()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showThermalWarning()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 253
    return-void
.end method


# virtual methods
.method public bindThermalService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 170
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.psm.thermalservice.ISysmonService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionThermal:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindThermalService:Z

    .line 181
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindThermalService:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionThermal:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public isAlreadyHighTemperature()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    if-nez v2, :cond_0

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->thermal_camera_action:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSetting:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    const-string v2, "shutdown"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->showDialogCritical()V

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    const-string v3, "readCustomSettingThermal failed."

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 236
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    const-string v2, "warning"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->showDialogWarning()V

    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public unbindThermalService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_0

    .line 194
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindThermalService:Z

    if-eqz v0, :cond_1

    .line 198
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mIsBindThermalService:Z

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->mServiceConnectionThermal:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 201
    :cond_1
    return-void
.end method
