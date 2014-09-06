.class public abstract Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.super Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$AutoUploadSettingCheckCallback;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseExtendedActivity"


# instance fields
.field private mCameraActivityFinishReceiver:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;

.field private mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

.field private mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

.field protected mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

.field private mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

.field private final mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    return-object v0
.end method


# virtual methods
.method protected abort()V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 301
    return-void
.end method

.method protected cancelCheckAutoUploadSetting()V
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->cancel(Landroid/content/Context;)V

    .line 485
    return-void
.end method

.method public final dismissDialog()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 180
    :cond_0
    return-void
.end method

.method public finishOneShot(Landroid/content/Intent;)V
    .locals 1
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 423
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 424
    return-void

    .line 421
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public forTestGetCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getPreviewSize()Landroid/graphics/Rect;
.end method

.method public getSoundPlayer()Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    return-object v0
.end method

.method public isPhoneCallWorking()Z
    .locals 2

    .prologue
    .line 541
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 542
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    const/4 v1, 0x1

    .line 545
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPreinstalledApp()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 503
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 504
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_3

    .line 505
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 506
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 507
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 508
    .local v1, "flags":I
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 528
    .end local v1    # "flags":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 511
    .restart local v1    # "flags":I
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 513
    const/4 v4, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "flags":I
    :cond_2
    const-string v5, "BaseExtendedActivity"

    const-string v6, "Can\'t get packeage info. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BaseExtendedActivity"

    const-string v6, "Can\'t get packeage info. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_1
    const-string v5, "BaseExtendedActivity"

    const-string v6, "Can\'t get packeage manager. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->terminateApplication()V

    .line 432
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 196
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    .line 295
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onDestroy()V

    .line 296
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 471
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 472
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->pause()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->cancelCheckAutoUploadSetting()V

    .line 272
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 274
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onPause()V

    .line 275
    return-void

    .line 262
    :cond_0
    const-string v0, "BaseExtendedActivity"

    const-string v1, "onPause():[Application is already paused.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    .line 228
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->requestCheckAutoUploadSetting()V

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    if-ne v1, v2, :cond_0

    .line 236
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onResume()V

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->resume()V

    .line 244
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->resume()V

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setLaunchedFrom(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Landroid/content/Intent;ZZ)V

    .line 247
    return-void

    .line 224
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 210
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    .line 211
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 212
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 213
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 280
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 281
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    .line 284
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onStop()V

    .line 285
    return-void
.end method

.method public onStoreComplete(ZLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 2
    .param p1, "storeSuccessfull"    # Z
    .param p2, "originUri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "orientation"    # I

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 397
    invoke-static {p0, p2, p3, p4}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 403
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finishOneShot(Landroid/content/Intent;)V

    .line 414
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->enableAutoOffTimer()V

    .line 415
    return-void

    .line 405
    :cond_2
    if-eqz p1, :cond_3

    .line 406
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 410
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 408
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method

.method protected requestCheckAutoUploadSetting()V
    .locals 3

    .prologue
    .line 477
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$AutoUploadSettingCheckCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$AutoUploadSettingCheckCallback;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->request(Landroid/content/Context;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;)V

    .line 479
    return-void
.end method

.method public resumeFromIncomingCall()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->dismissDialog()V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->tryToResumeAll()V

    .line 190
    return-void
.end method

.method public setDestinationToSave()V
    .locals 5

    .prologue
    .line 371
    const/4 v2, 0x0

    .line 373
    .local v2, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->hasExtraOutputPath()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "fixedStorage":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    .line 383
    .end local v0    # "fixedStorage":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 384
    return-void

    .line 379
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 381
    .local v1, "storage":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    goto :goto_0
.end method

.method public setPhoneStateChangedListener(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    .line 318
    return-void
.end method

.method protected showAndConfirmDisclaimer()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public terminateApplication()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 447
    :cond_0
    return-void
.end method
