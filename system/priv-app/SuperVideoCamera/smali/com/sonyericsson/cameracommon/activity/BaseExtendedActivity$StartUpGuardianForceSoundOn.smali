.class Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;
.super Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartUpGuardianForceSoundOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->pause()V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->dismissDialog()V

    .line 172
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->resume()V

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->isPhoneCallWorking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->pauseAudioPlayback()V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->resumeFromIncomingCall()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->dismissDialog()V

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->tryToResumeAll()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCallingDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method
