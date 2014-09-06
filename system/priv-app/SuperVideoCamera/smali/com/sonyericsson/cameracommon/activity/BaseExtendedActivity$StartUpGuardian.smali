.class abstract Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
.super Ljava/lang/Object;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StartUpGuardian"
.end annotation


# instance fields
.field private mIsAlreadyResumed:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->mIsAlreadyResumed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 97
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsKeyguardAvailable:Z

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsKeyguardAvailable:Z

    goto :goto_0
.end method

.method protected tryToResumeAll()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsKeyguardAvailable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->mIsAlreadyResumed:Z

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->mIsAlreadyResumed:Z

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->isPreinstalledApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->showAndConfirmDisclaimer()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->resumeAll()V

    .line 121
    :cond_1
    return-void
.end method
