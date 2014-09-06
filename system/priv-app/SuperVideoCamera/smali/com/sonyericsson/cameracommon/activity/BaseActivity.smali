.class public abstract Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/TerminateListener;
.implements Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
.implements Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    }
.end annotation


# static fields
.field private static final AUTO_OFF_TIMER_TIMEOUT_COUNT:I = 0x2bf20

.field public static final INTENT_SUBJECT_START_SECURE:Ljava/lang/String; = "start-secure"

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field mAddToMediaStore:Z

.field mAutoOffTimer:Ljava/util/Timer;

.field protected mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

.field protected mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

.field private final mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraOutput:Landroid/net/Uri;

.field protected mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field mHandler:Landroid/os/Handler;

.field private mIsAutoOffTimerEnabled:Z

.field protected mIsKeyguardAvailable:Z

.field private mIsReceiverResistered:Z

.field private mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field private mLastDeterminedOrientationDegree:I

.field private mLastOrientationDegree:I

.field private mLaunchAsOneShot:Z

.field private mLaunchAsOneShotPhoto:Z

.field private mLaunchAsOneShotVideo:Z

.field protected mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field private mLayoutOrientationChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

.field protected mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field protected mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

.field private mSensorOrientationDegree:I

.field protected mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

.field private mStorageListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field protected mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

.field protected mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 78
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    .line 80
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    .line 82
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    .line 132
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 134
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    .line 138
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    .line 140
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 142
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    .line 151
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 175
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsKeyguardAvailable:Z

    .line 178
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 180
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    .line 240
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 627
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    return p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    return-void
.end method

.method private checkOneShot()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 868
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 869
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 874
    const-string v4, "BaseActivity"

    const-string v5, "setRequestedMode: getAction() == null "

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 881
    :cond_0
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 882
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    .line 886
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    if-eqz v4, :cond_3

    .line 887
    :cond_2
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    .line 891
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 892
    .local v1, "extra":Landroid/os/Bundle;
    if-nez v1, :cond_6

    .line 893
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 894
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    .line 915
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    if-eqz v4, :cond_4

    .line 925
    :cond_4
    return-void

    .line 883
    .end local v1    # "extra":Landroid/os/Bundle;
    :cond_5
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 884
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    goto :goto_0

    .line 895
    .restart local v1    # "extra":Landroid/os/Bundle;
    :cond_6
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    if-eqz v4, :cond_8

    .line 896
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    .line 900
    :cond_7
    const-string v4, "output"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 901
    const-string v4, "addToMediaStore"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    goto :goto_1

    .line 903
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 904
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    goto :goto_1
.end method

.method private getOrientationDegree(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)I
    .locals 4
    .param p1, "fixed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 753
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 769
    const/4 v0, -0x1

    .local v0, "degree":I
    move v1, v0

    .line 775
    .end local v0    # "degree":I
    .local v1, "degree":I
    :goto_0
    return v1

    .line 757
    .end local v1    # "degree":I
    :pswitch_0
    const/4 v0, 0x0

    .line 772
    .restart local v0    # "degree":I
    :goto_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    .line 773
    rem-int/lit16 v0, v0, 0x168

    move v1, v0

    .line 775
    .end local v0    # "degree":I
    .restart local v1    # "degree":I
    goto :goto_0

    .line 760
    .end local v1    # "degree":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 761
    .restart local v0    # "degree":I
    goto :goto_1

    .line 763
    .end local v0    # "degree":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 764
    .restart local v0    # "degree":I
    goto :goto_1

    .line 766
    .end local v0    # "degree":I
    :pswitch_3
    const/16 v0, 0x10e

    .line 767
    .restart local v0    # "degree":I
    goto :goto_1

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static in(III)Z
    .locals 1
    .param p0, "testee"    # I
    .param p1, "lower"    # I
    .param p2, "upper"    # I

    .prologue
    .line 722
    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private muteSound(I)V
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v3, 0x1

    .line 421
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 422
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 423
    .local v0, "m":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 424
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 432
    .end local v0    # "m":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 3
    .param p1, "orientation"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 656
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne p1, v2, :cond_1

    .line 668
    :cond_0
    return-void

    .line 658
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-eq p1, v2, :cond_0

    .line 664
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 665
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .line 666
    .local v1, "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;->onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    goto :goto_0
.end method

.method private notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 201
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .line 202
    .local v1, "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "storage":Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;->onMediaScanFinished()V

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v2, :cond_0

    .line 207
    invoke-interface {v1, p1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;->onStorageCheckRequested(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;
    .end local v2    # "storage":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 322
    return-void
.end method

.method private final declared-synchronized stopAutoOffTimer()V
    .locals 1

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_0
    monitor-exit p0

    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unmuteSound(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 440
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 441
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 442
    .local v0, "m":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 450
    .end local v0    # "m":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private updateBalloonTipsCounter()V
    .locals 3

    .prologue
    .line 991
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 993
    .local v0, "count":Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$BalloonTipsCounter:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1014
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_STOP:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 1017
    :goto_0
    :pswitch_0
    return-void

    .line 995
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 998
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 1001
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract abort()V
.end method

.method public addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 617
    return-void
.end method

.method public addStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    return-void
.end method

.method protected callOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 1035
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1036
    return-void
.end method

.method protected callOnDestroy()V
    .locals 0

    .prologue
    .line 1059
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1060
    return-void
.end method

.method protected callOnPause()V
    .locals 0

    .prologue
    .line 1047
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1048
    return-void
.end method

.method protected callOnRestart()V
    .locals 0

    .prologue
    .line 1043
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1044
    return-void
.end method

.method protected callOnResume()V
    .locals 0

    .prologue
    .line 1051
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1052
    return-void
.end method

.method protected callOnStart()V
    .locals 0

    .prologue
    .line 1039
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1040
    return-void
.end method

.method protected callOnStop()V
    .locals 0

    .prologue
    .line 1055
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1056
    return-void
.end method

.method protected clearKeepScreenOn()V
    .locals 2

    .prologue
    .line 572
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 573
    return-void
.end method

.method public final disableAutoOffTimer()V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 512
    return-void
.end method

.method public disableOrientation()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 601
    :cond_0
    return-void
.end method

.method public final enableAutoOffTimer()V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 502
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer()Z

    .line 503
    return-void
.end method

.method public enableOrientation()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 593
    :cond_0
    return-void
.end method

.method public getAutoReviewSettings()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    return-object v0
.end method

.method public abstract getCallingDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end method

.method public getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    return-object v0
.end method

.method public getConfigurationOrientation()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    packed-switch v0, :pswitch_data_0

    .line 740
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 731
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    return-object v0
.end method

.method public getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method public getLastDetectedOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    return-object v0
.end method

.method public getLastOrientationDegree()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    return v0
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 676
    iget v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 677
    .local v2, "orientation":I
    if-ne v2, v3, :cond_0

    .line 678
    iget v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    .line 680
    :cond_0
    if-ne v2, v3, :cond_1

    .line 681
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 717
    :goto_0
    return-object v3

    .line 686
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v3

    rsub-int v3, v3, 0x168

    add-int/2addr v2, v3

    .line 687
    rem-int/lit16 v2, v2, 0x168

    .line 692
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 695
    .local v1, "nowPortrait":Z
    :goto_1
    if-eqz v1, :cond_4

    const/16 v0, 0x3c

    .line 707
    .local v0, "margin":I
    :goto_2
    rsub-int/lit8 v3, v0, 0x5a

    add-int/lit8 v4, v0, 0x5a

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 708
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0

    .line 692
    .end local v0    # "margin":I
    .end local v1    # "nowPortrait":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 695
    .restart local v1    # "nowPortrait":Z
    :cond_4
    const/16 v0, 0x1e

    goto :goto_2

    .line 710
    .restart local v0    # "margin":I
    :cond_5
    add-int/lit8 v3, v0, 0x5a

    rsub-int v4, v0, 0x10e

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 711
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0

    .line 713
    :cond_6
    rsub-int v3, v0, 0x10e

    add-int/lit16 v4, v0, 0x10e

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 714
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0

    .line 717
    :cond_7
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0
.end method

.method public getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 785
    .local v0, "orientation":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v0

    .line 789
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 799
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 793
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 797
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOrientationDegree()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 809
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    if-eq v0, v1, :cond_0

    .line 810
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 817
    :goto_0
    return v0

    .line 811
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    if-eq v0, v1, :cond_1

    .line 813
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    goto :goto_0

    .line 817
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    return-object v0
.end method

.method public getSensorOrientationDegree()I
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    return v0
.end method

.method public getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    return-object v0
.end method

.method public getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    return-object v0
.end method

.method public hasExtraOutputPath()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 949
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 954
    :cond_0
    :goto_0
    return v1

    .line 952
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "fixedStoragePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAlreadyHighTemperature()Z
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result v0

    return v0
.end method

.method public isDeviceInSecurityLock()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 973
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 975
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 977
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 979
    .local v3, "subject":Ljava/lang/String;
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 981
    .local v1, "keyguadManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 984
    .local v2, "restrictedMode":Z
    const-string v5, "start-secure"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 987
    .end local v1    # "keyguadManager":Landroid/app/KeyguardManager;
    .end local v2    # "restrictedMode":Z
    .end local v3    # "subject":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method public abstract isDualStorageAvailable()Z
.end method

.method public isGeotagExplanatoryDialogOn()Z
    .locals 3

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, "value":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG_EXPLANATORY_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->ON:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    if-ne v1, v2, :cond_0

    .line 1023
    const/4 v0, 0x1

    .line 1026
    :cond_0
    return v0
.end method

.method public isGpsLocationAllowed()Z
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsGpsLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public abstract isMenuAvailable()Z
.end method

.method public isNetworkLocationAllowed()Z
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsNetworkLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    return v0
.end method

.method public isOneShotPhoto()Z
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    return v0
.end method

.method public isOneShotVideo()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    return v0
.end method

.method protected keepScreenOn()V
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 568
    return-void
.end method

.method public msgPopupCanceled()V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public msgPopupOpened()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 388
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    .line 396
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isGeotagExplanatoryDialogOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;)Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showWirelessGpsExplanatoryDialog(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->checkOneShot()V

    .line 265
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 268
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/activity/TerminateListener;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setMessagePopupStateListener(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 271
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {v0, p0, v1, p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    .line 274
    new-instance v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    .line 275
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 281
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    .line 282
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->releaseContext()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 374
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 330
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableAutoOffTimer()V

    .line 339
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->unmuteSound(I)V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->suspend()V

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 345
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableOrientation()V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 350
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "android.intent.action.MEDIA_EJECT"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 295
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->load()V

    .line 299
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->updateBalloonTipsCounter()V

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    .line 304
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->enableAutoOffTimer()V

    .line 307
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getOrientationDegree(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 310
    invoke-static {p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setContext(Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 358
    return-void
.end method

.method public pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->muteSound(I)V

    .line 462
    return-void
.end method

.method public removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 621
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    return-void
.end method

.method public final declared-synchronized restartAutoOffTimer()V
    .locals 1

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    .line 521
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract resumeAll()V
.end method

.method public shouldAddToMediaStore()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    return v0
.end method

.method protected startAutoOffTimer()Z
    .locals 1

    .prologue
    .line 469
    const v0, 0x2bf20

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer(I)Z

    move-result v0

    return v0
.end method

.method protected final declared-synchronized startAutoOffTimer(I)Z
    .locals 5
    .param p1, "autoOffTimeoutDuration"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 473
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 477
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 479
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 483
    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
