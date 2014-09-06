.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogCancelListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIALOG_BUTTON_FONT_SIZE_IN_DP:F = 14.0f

.field public static final NO_RESOURCE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MessagePopup"

.field private static final TERMINATE_WAIT_TIME:I = 0x7d0


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private final mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

.field private final mMessageHandler:Landroid/os/Handler;

.field private mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

.field private mSensorOrientation:I

.field private mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

.field private mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStoreProgressDialog:Landroid/app/AlertDialog;

.field private mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

.field private mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

.field private mWirelessGpsExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/activity/TerminateListener;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "terminateApplication"    # Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    .line 70
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 73
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 76
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 82
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 88
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 91
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 94
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 102
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 117
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method private lazyAbort()V
    .locals 4

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1427
    return-void
.end method

.method private setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1393
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1394
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1395
    const/4 v0, -0x3

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1396
    return-void
.end method

.method private setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "buttonId"    # I

    .prologue
    .line 1402
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1403
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1404
    const/4 v1, 0x1

    const/high16 v2, 0x41600000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1406
    :cond_0
    return-void
.end method

.method private show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 2
    .param p1, "builder"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .prologue
    .line 242
    iget v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 245
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 246
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    .line 247
    return-object v0
.end method

.method private showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "builder"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .prologue
    .line 699
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v1, :cond_2

    .line 708
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 709
    .local v0, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 710
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 711
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 713
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 716
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v1
.end method


# virtual methods
.method public cancelMemoryErrorPopup()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->cancel()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 670
    :cond_0
    return-void
.end method

.method public closeMessage()V
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 1417
    :cond_0
    return-void
.end method

.method public createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 3
    .param p1, "changed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 1015
    const/4 v0, 0x2

    .line 1016
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1022
    const/4 v0, 0x2

    .line 1025
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setSensorOrientation(I)V

    .line 1026
    return-void

    .line 1018
    :pswitch_0
    const/4 v0, 0x1

    .line 1019
    goto :goto_0

    .line 1016
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 134
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 138
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 142
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 146
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 150
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 154
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_6

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 159
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_7

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 164
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 166
    :cond_7
    return-void
.end method

.method public releaseContext()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 174
    return-void
.end method

.method public setMessagePopupStateListener(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .line 126
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_7

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 205
    :cond_7
    return-void
.end method

.method public showCameraDisabledMessage()V
    .locals 3

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1224
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1232
    :goto_0
    return-void

    .line 1227
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1228
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_use_of_camera_not_authorized_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1229
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1230
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1232
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showDeviceErrorMessage()V
    .locals 3

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1206
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1210
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1211
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_device_not_available_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1212
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1213
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1215
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showDisclaimer(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 11
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "onOkClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1463
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1464
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-nez v10, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->disclaimer_content:I

    invoke-virtual {v10, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1470
    .local v1, "contentView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 1471
    .local v9, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_consent_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v9, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1489
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1490
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_accept_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_decline_txt:I

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1501
    invoke-virtual {v9, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1502
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setPositiveButtonEnabled(Z)V

    .line 1504
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public showErrorOkAndCancelExit(IZIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "title"    # I
    .param p2, "needAlertIcon"    # Z
    .param p3, "msg"    # I
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "can"    # I
    .param p7, "canClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 849
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v2, :cond_3

    .line 850
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 853
    .local v1, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 854
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 855
    const/4 v2, 0x0

    .line 868
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :goto_0
    return-object v2

    .line 858
    .restart local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .restart local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 859
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 860
    :cond_1
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 861
    :cond_2
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 862
    invoke-virtual {v0, p6, p7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 864
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 865
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 868
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showErrorOkExit(IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 10
    .param p1, "title"    # I
    .param p2, "needAlertIcon"    # Z
    .param p3, "msg"    # I
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 813
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorOkAndCancelExit(IZIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v9

    .line 823
    .local v9, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    return-object v9
.end method

.method public showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 266
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 276
    :goto_0
    return-object v1

    .line 270
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 271
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 272
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 273
    :cond_2
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 275
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 276
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showLaunchSettingAppDialog(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "geotagListener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1142
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 1145
    :cond_0
    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;

    invoke-direct {v6, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 1147
    .local v6, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_advanced_setting_geo_tag_both_off_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_advanced_setting_geo_tag_title_txt:I

    const/4 v3, 0x1

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v7, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogCancelListener;

    invoke-direct {v7, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogCancelListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    move-object v0, p0

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1155
    return-void
.end method

.method public showMemoryError(II)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "msg"    # I
    .param p2, "title"    # I

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-object v2

    .line 614
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_2

    .line 615
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 619
    :cond_2
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    .line 621
    .local v1, "ok":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 622
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 628
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 629
    :cond_3
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;

    invoke-direct {v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 632
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 634
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showMemoryErrorAndAbort(II)V
    .locals 4
    .param p1, "msg"    # I
    .param p2, "title"    # I

    .prologue
    .line 646
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 648
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 649
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 655
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 656
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 659
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showMessageOnUiThread(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1266
    return-void
.end method

.method public showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1286
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v2, :cond_3

    .line 1287
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;

    invoke-direct {v1, p0, p5, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1289
    .local v1, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1290
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1291
    const/4 v2, 0x0

    .line 1302
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;
    :goto_0
    return-object v2

    .line 1294
    .restart local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .restart local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1295
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1296
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1297
    :cond_2
    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1298
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1299
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1300
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1302
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 492
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 496
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_1

    .line 508
    :goto_0
    return-object v1

    .line 500
    :cond_1
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 501
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 502
    :cond_2
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 503
    :cond_3
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 507
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 508
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 533
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-object v1

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_2

    .line 540
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 544
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 549
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 550
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 551
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 555
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 556
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkAndCancelMsg(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 1560
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-object v1

    .line 1566
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_2

    .line 1567
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1570
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1571
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1576
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1577
    :cond_3
    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1578
    :cond_4
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1579
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1581
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1582
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1583
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1585
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 579
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v1, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 581
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 594
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :goto_0
    return-object v1

    .line 585
    .restart local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 586
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 587
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 588
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;

    invoke-direct {v1, p0, p5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 589
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 591
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 594
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showRecordingSizeLimitError()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 3

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 783
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 784
    const/4 v1, 0x0

    .line 791
    :goto_0
    return-object v1

    .line 787
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 788
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_mms_rec_size_limit_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 789
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 790
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 791
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 971
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 973
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 992
    :cond_1
    :goto_0
    return-void

    .line 980
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 981
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_1

    .line 985
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->inflate(Landroid/view/LayoutInflater;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 986
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setDuration(I)V

    .line 987
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setTextResId(I)V

    .line 988
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    iget v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    .line 989
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 990
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->show()V

    goto :goto_0
.end method

.method public showRotatableToastMessageAndAbort(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 1004
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1005
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->lazyAbort()V

    .line 1006
    return-void
.end method

.method public showShareSelection(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4
    .param p1, "selectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v3, 0x0

    .line 884
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 886
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 889
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 890
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_file_share_title_txt:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 891
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 892
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 893
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 897
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 899
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 901
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v1
.end method

.method public showStoreProgressDialog(I)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1343
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1345
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1349
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    .line 1351
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1352
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1354
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V

    .line 1355
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public showStoreProgressDialog(IIZLandroid/view/View;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "isVisibleIcon"    # Z
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 1371
    if-eqz p4, :cond_2

    .line 1372
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 1373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1375
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1376
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1377
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1378
    if-eqz p3, :cond_0

    .line 1379
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1381
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 1382
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1384
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1385
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V

    .line 1386
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 1388
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showStoreProgressDialog(I)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public showTermsAndConditions(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 9
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "onOkClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 1510
    if-nez p1, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1516
    .local v7, "inflater":Landroid/view/LayoutInflater;
    if-eqz v7, :cond_0

    .line 1521
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->terms_and_conditions_content:I

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1523
    .local v1, "contentView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->consent_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1524
    .local v8, "link":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1528
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 749
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 751
    .local v2, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 752
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-object v1

    .line 756
    :cond_0
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_ask_shut_down_title_txt:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 757
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_ask_shut_down_txt:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 758
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 759
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shut_down_yes_txt:I

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 760
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 761
    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 762
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 763
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showThermalCriticalAndAbort()V
    .locals 0

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 773
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->lazyAbort()V

    .line 774
    return-void
.end method

.method public showThermalWarning()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 725
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 726
    .local v2, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 727
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 740
    :goto_0
    return-object v1

    .line 731
    :cond_0
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_ask_shut_down_title_txt:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 732
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_ask_shut_down_txt:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 733
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 734
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shut_down_yes_txt:I

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shut_down_no_txt:I

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 738
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 740
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showUnknownErrorMessage()V
    .locals 3

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1241
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1245
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1246
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_fatal_txt:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1247
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1248
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1250
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_0
.end method

.method public showWirelessGpsExplanatoryDialog(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V
    .locals 11
    .param p1, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .prologue
    const/4 v5, 0x0

    .line 1162
    new-instance v10, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;

    invoke-direct {v10, p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    .line 1165
    .local v10, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$WirelessGpsExplanatoryDialogListener;
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1171
    .local v9, "inflater":Landroid/view/LayoutInflater;
    if-eqz v9, :cond_0

    .line 1176
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->geotag_popup_content:I

    invoke-virtual {v9, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1179
    .local v1, "explanatoryView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 1180
    .local v7, "checkBox":Landroid/widget/CheckBox;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->footer_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1181
    .local v8, "footer":Landroid/widget/TextView;
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_show_popup_again_txt:I

    invoke-direct {v0, v10, v8, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$GpsCheckBoxListener;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/TextView;I)V

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1184
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_wireless_gps_explanatory_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mWirelessGpsExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mWirelessGpsExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mWirelessGpsExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public showZoomHelpMessage(Z)V
    .locals 3
    .param p1, "zoomSupported"    # Z

    .prologue
    .line 913
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 916
    if-eqz p1, :cond_1

    .line 917
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_zoom_help_txt:I

    .line 922
    .local v0, "resId":I
    :goto_0
    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 924
    .end local v0    # "resId":I
    :cond_0
    return-void

    .line 919
    :cond_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_zoom_not_supported_txt:I

    .restart local v0    # "resId":I
    goto :goto_0
.end method
