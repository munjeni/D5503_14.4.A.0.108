.class public Lcom/android/phone/SomcInCallScreen;
.super Landroid/app/Activity;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/CallView$CallViewActionListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcInCallScreen$26;,
        Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;,
        Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;,
        Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;,
        Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;",
        "Lcom/android/phone/CallTime$OnTickListener;",
        "Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;",
        "Lcom/android/phone/CallView$CallViewActionListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/phone/ItemWithIcon;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mAudioErrorDialog:Landroid/app/AlertDialog;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private final mCallRecordTimerRunnable:Ljava/lang/Runnable;

.field private mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

.field mCallTime:Lcom/android/phone/CallTime;

.field private mCallView:Lcom/android/phone/CallView;

.field public final mCallWidgetListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

.field private mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

.field private mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

.field private mContext:Landroid/content/Context;

.field private mDTMFToneEnabled:Z

.field private mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

.field private mEmergencyCallRetryCount:I

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field mHeadsetConnected:Z

.field mIsDestroyed:Z

.field mIsEndOrRejectBtPressed:Z

.field mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

.field private mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

.field private mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSystemProvided:Z

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWidgetManagerConnection:Landroid/content/ServiceConnection;

.field private oldNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mHeadsetConnected:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    .line 162
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    .line 199
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsDestroyed:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 237
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    .line 256
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    .line 338
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    .line 387
    new-instance v0, Lcom/android/phone/SomcInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$1;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    .line 559
    new-instance v0, Lcom/android/phone/SomcInCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$2;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;

    .line 4798
    new-instance v0, Lcom/android/phone/SomcInCallScreen$24;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$24;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    .line 4816
    new-instance v0, Lcom/android/phone/SomcInCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$25;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/SomcInCallScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/SomcInCallScreen;ZZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/SomcInCallScreen;->enableNavigationBar(ZZZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/SomcInCallScreen;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->showSupplementaryServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/SomcInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/SomcInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/SomcSoundHandling;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/SomcInCallScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->finishIfNotInUse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/widget/SomcCallWidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/widget/SomcCallWidgetManager;)Lcom/android/phone/widget/SomcCallWidgetManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Lcom/android/phone/widget/SomcCallWidgetManager;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SomcInCallScreen;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/SomcInCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # C

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcInCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2947
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2950
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 2951
    const-string v0, "show vm setting, finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2952
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2953
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2957
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2958
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2959
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2960
    return-void
.end method

.method private asyncUpdateContactImage(Lcom/android/phone/SomcCallerInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4303
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/phone/SomcCallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4305
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4306
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 4307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is being loaded already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ignoret the duplicate load request. (or null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4328
    :cond_1
    :goto_0
    return-void

    .line 4313
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 4314
    if-nez v1, :cond_3

    .line 4315
    const-string v0, "SomcInCallScreen"

    const-string v1, "photoUri became null. Show default avatar icon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4319
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "SomcInCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin loading image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    :cond_4
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    .line 4325
    const/16 v0, 0x70

    new-instance v2, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;

    invoke-direct {v2, v5, p1, v5}, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v0, p0, v1, p0, v2}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2861
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2862
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2863
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 2879
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2887
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2888
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    .line 2890
    :cond_2
    return-void
.end method

.method private checkIfRejectMsgNeeded(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1876
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1878
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 1893
    :cond_0
    :goto_0
    return v0

    .line 1883
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1884
    if-eqz v1, :cond_0

    .line 1886
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 1887
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-eq v1, v2, :cond_0

    .line 1892
    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1893
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isMessagingEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2263
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2264
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2281
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2286
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    if-nez v0, :cond_2

    .line 2287
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->goToSleep()V

    .line 2292
    :cond_2
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    .line 2293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 2294
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 2295
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3776
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3777
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3778
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3779
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3780
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3781
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 3783
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 3784
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    .line 3785
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3786
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3787
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3789
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 3790
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    .line 3791
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3792
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3793
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3795
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 3796
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    .line 3797
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3798
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3799
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3801
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 3802
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3803
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3804
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3807
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 3808
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3809
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3810
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3813
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 3814
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3815
    :cond_c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3816
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3819
    :cond_d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 3820
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "- DISMISSING mPopupMenu."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3821
    :cond_e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 3822
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 3825
    :cond_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 3826
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "- DISMISSING mAudioErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3827
    :cond_10
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3828
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    .line 3831
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissProgressIndication()V

    .line 3832
    return-void
.end method

.method private dismissProgressIndication()V
    .locals 1

    .prologue
    .line 3900
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissProgressIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3901
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 3902
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3905
    :cond_1
    return-void
.end method

.method private displayMmiInfo(Lcom/android/internal/telephony/MmiCode;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4682
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 4684
    :goto_0
    if-nez v0, :cond_2

    .line 4685
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "not a USSD code, displaying status toast."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4686
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4687
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4688
    const/4 v0, 0x0

    .line 4710
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 4682
    goto :goto_0

    .line 4690
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "running USSD code, displaying indeterminate progress."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4693
    :cond_3
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4694
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f0b01ec

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4695
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4696
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4697
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4698
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/SomcInCallScreen$23;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcInCallScreen$23;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4708
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method private dontAddVoiceMailNumber()V
    .locals 2

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2967
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 2968
    const-string v0, "dontAddVoiceMailNumber: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2970
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2971
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    .line 2972
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2974
    :cond_2
    return-void
.end method

.method private enableCallRecorderMenuItems(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1310
    const v1, 0x7f0700f4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1311
    const v2, 0x7f0700f5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1313
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1314
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1323
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1319
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private enableNavigationBar(ZZZZ)V
    .locals 1
    .param p1, "isBackEnable"    # Z
    .param p2, "isHomeEnable"    # Z
    .param p3, "isRecentEnable"    # Z
    .param p4, "isSearchEnable"    # Z

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarBack(Z)V

    .line 4631
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarHome(Z)V

    .line 4632
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarRecent(Z)V

    .line 4633
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarSearch(Z)V

    .line 4634
    return-void
.end method

.method private endSomcInCallScreenSession(Z)V
    .locals 2

    .prologue
    .line 4175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endSomcInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4176
    if-eqz p1, :cond_1

    .line 4177
    const-string v0, "SomcInCallScreen"

    const-string v1, "endSomcInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 4188
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    .line 4189
    return-void

    .line 4180
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4182
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->clear()V

    .line 4183
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_2

    .line 4184
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->clearStack()V

    .line 4186
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    goto :goto_0
.end method

.method private finishIfNotInUse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3373
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3374
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishIfNotInUse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3376
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    .line 3381
    :goto_0
    return-void

    .line 3378
    :cond_1
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishIfNotInUse: Attempted finish while application is still running! Message ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "staying in SomcInCallScreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 4664
    const/4 v0, 0x0

    .line 4665
    .local v0, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 4666
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 4667
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 4671
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 4668
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_0

    .line 4669
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    goto :goto_0
.end method

.method private getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 4

    .prologue
    .line 4643
    .line 4644
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 4645
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4646
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4654
    :goto_0
    return-object v0

    .line 4647
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4650
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 4652
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleBackKey()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3334
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 3335
    const-string v2, "handleBackKey()..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3337
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->isRejectMsgListOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3338
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeRejectMsgList()V

    .line 3362
    :cond_1
    :goto_0
    return v0

    .line 3341
    :cond_2
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3346
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3347
    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3348
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move v0, v1

    .line 3353
    goto :goto_0

    .line 3357
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->handleBackKey()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3362
    goto :goto_0
.end method

.method private handleCityIdInfo(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .param p1, "somcCallerInfo"    # Lcom/android/phone/SomcCallerInfo;

    .prologue
    .line 4335
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4337
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4362
    :cond_0
    :goto_0
    return-void

    .line 4340
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4341
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 4345
    new-instance v0, Lcom/android/phone/SomcInCallScreen$19;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/SomcInCallScreen$19;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    .line 4360
    .local v0, "queryCityIdTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v0, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    .line 4361
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleLandOwnerInfo(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .param p1, "somcCallerInfo"    # Lcom/android/phone/SomcCallerInfo;

    .prologue
    .line 4369
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4371
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4396
    :cond_0
    :goto_0
    return-void

    .line 4374
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4375
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryLandOwnerTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 4379
    new-instance v0, Lcom/android/phone/SomcInCallScreen$20;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/SomcInCallScreen$20;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    .line 4394
    .local v0, "queryLandOwnerTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v0, p1, Lcom/android/phone/SomcCallerInfo;->queryLandOwnerTask:Landroid/os/AsyncTask;

    .line 4395
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryLandOwnerTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 2893
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2894
    const-string v0, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2896
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2897
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2899
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2900
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2902
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a0

    new-instance v4, Lcom/android/phone/SomcInCallScreen$15;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/SomcInCallScreen$15;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    new-instance v4, Lcom/android/phone/SomcInCallScreen$14;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/SomcInCallScreen$14;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2922
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/SomcInCallScreen$16;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SomcInCallScreen$16;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2930
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/SomcInCallScreen$17;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$17;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2940
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2942
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2943
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 4

    .prologue
    .line 4414
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    .line 4415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a connection!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4417
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4418
    if-nez v0, :cond_1

    .line 4438
    :goto_0
    return-void

    .line 4419
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/Connection$PostDialState;

    if-nez v1, :cond_2

    .line 4420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Connection.PostDialState!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4422
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4423
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4425
    :cond_3
    sget-object v2, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4428
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4429
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 4430
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 4431
    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcInCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 4425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRedirectingInfoQuery(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .param p1, "somcCallerInfo"    # Lcom/android/phone/SomcCallerInfo;

    .prologue
    const/4 v1, 0x0

    .line 3238
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3240
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    :cond_0
    :goto_0
    return-void

    .line 3244
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3249
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/phone/SomcInCallScreen$18;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$18;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->queryRedirectingInfo(Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V

    goto :goto_0
.end method

.method private hideAllMenuItems(Landroid/view/Menu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1346
    const v0, 0x7f0700f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1347
    const v0, 0x7f0700f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1348
    return-void
.end method

.method private hideAmAnimation()V
    .locals 1

    .prologue
    .line 4760
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideAmAnimation()V

    .line 4761
    return-void
.end method

.method private initCallWidgetManager()V
    .locals 3

    .prologue
    .line 4506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.callwidgetframework.ACTION_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4507
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/SomcInCallScreen;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4508
    return-void
.end method

.method private internalAnswerCall()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3911
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 3913
    if-eqz v0, :cond_1

    .line 3914
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3915
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3916
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3917
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 3918
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3920
    :cond_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3953
    :goto_0
    if-ne v0, v4, :cond_1

    .line 3957
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showSipCallingProgress()V

    .line 3962
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3963
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 3964
    return-void

    .line 3922
    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 3929
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 3930
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 3932
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 3933
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    .line 3934
    const-string v2, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3939
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3945
    :cond_5
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "internalAnswerCall: answering..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3946
    :cond_6
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3950
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1429
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1433
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1453
    :cond_2
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1464
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    const-string v0, "com.android.phone.ShowDialpad"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1470
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1476
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    goto :goto_0

    .line 1484
    :cond_4
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1489
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_6
    const-string v1, "SomcInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isCallEndedInteractionDisplayable(Lcom/android/internal/telephony/Connection;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4869
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4875
    :cond_0
    :goto_0
    return v0

    .line 4872
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/SomcPhoneUtils;->needShowCallEndedInteraction(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4873
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHDSpeechCodec(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3017
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 3018
    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v0

    if-ge v0, v3, :cond_0

    .line 3019
    const-string v3, "Codec"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3021
    const-string v3, "AMR_WB"

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3022
    const/4 v1, 0x1

    .line 3027
    :cond_0
    return v1

    .line 3018
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isHDVoiceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2988
    .line 2990
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getIndex()I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2998
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    invoke-interface {v2, v1}, Lorg/codeaurora/ims/IImsService;->getCallDetailsExtrasinCall(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 3003
    if-nez v2, :cond_1

    .line 3004
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 3005
    const-string v1, "callDetailsExtras is null"

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3013
    :cond_0
    :goto_0
    return v0

    .line 2991
    :catch_0
    move-exception v1

    .line 2992
    const-string v2, "SomcInCallScreen"

    const-string v3, "Error get connection index"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2999
    :catch_1
    move-exception v1

    .line 3000
    const-string v2, "SomcInCallScreen"

    const-string v3, "Error getCallDetailsExtrasinCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3008
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 3009
    invoke-direct {p0, v4}, Lcom/android/phone/SomcInCallScreen;->isHDSpeechCodec(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3010
    const/4 v0, 0x1

    goto :goto_0

    .line 3008
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V
    .locals 3

    .prologue
    .line 4270
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 4272
    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 4276
    :cond_0
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1

    .line 4277
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 4279
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    instance-of v0, v0, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_3

    .line 4280
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/phone/SomcCallerInfo;->cachedContactNumberIcon:Landroid/graphics/Bitmap;

    .line 4289
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    .line 4290
    const-string v0, "Load Image done: updateScreen!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4292
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 4295
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 4296
    return-void

    .line 4282
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v0

    .line 4284
    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4285
    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2556
    const-string v0, "SomcInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 11

    .prologue
    const/16 v10, 0x6c

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1569
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1570
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    .line 1571
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    .line 1576
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 1577
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 1581
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    .line 1583
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v9, :cond_4

    move v5, v3

    .line 1584
    :goto_1
    if-eqz v5, :cond_1f

    .line 1587
    if-eqz v2, :cond_1f

    .line 1588
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "call_auto_retry"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1601
    :goto_2
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRawDisconnectCause()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5

    .line 1604
    :cond_1
    const v0, 0x7f0b0012

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    .line 1853
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    .line 1581
    goto :goto_0

    :cond_4
    move v5, v4

    .line 1583
    goto :goto_1

    .line 1606
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_6

    .line 1607
    const v0, 0x7f0b0017

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1609
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_7

    .line 1610
    const v0, 0x7f0b0016

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1612
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_8

    .line 1613
    const v0, 0x7f0b0014

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1615
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_9

    .line 1616
    const v0, 0x7f0b0015

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1618
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMSI_UNKNOWN_IN_VLR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_a

    .line 1619
    iget v7, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    if-gtz v7, :cond_b

    .line 1620
    const v0, 0x7f0b0019

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1623
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMEI_NOT_ACCEPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_b

    .line 1624
    iget v7, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    if-gtz v7, :cond_b

    .line 1625
    const v0, 0x7f0b0018

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1630
    :cond_b
    if-eqz v5, :cond_c

    .line 1631
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1632
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    .line 1637
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1671
    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1672
    if-eqz v1, :cond_f

    .line 1681
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1682
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_e

    .line 1683
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1684
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_d

    .line 1693
    const-string v1, "SomcInCallScreen"

    const-string v5, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1695
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1703
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_f

    .line 1704
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1705
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x75

    invoke-static {v5, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1706
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1724
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1729
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_10

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v5, :cond_11

    :cond_10
    if-eqz v2, :cond_11

    move v4, v3

    .line 1733
    :cond_11
    const-string v3, "SomcInCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDisconnect: , cause="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", callDuration"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    if-eqz v4, :cond_17

    .line 1753
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_12

    .line 1754
    const-string v0, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1759
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V

    goto/16 :goto_3

    .line 1638
    :cond_13
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_14

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_c

    :cond_14
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    .line 1644
    iget-boolean v5, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v5, :cond_15

    .line 1646
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1647
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1649
    :cond_15
    if-nez v1, :cond_16

    .line 1651
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1652
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1656
    :cond_16
    iput-boolean v3, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1761
    :cond_17
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_18

    .line 1762
    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1769
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 1775
    if-eqz v2, :cond_1a

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1a

    .line 1778
    :cond_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v1, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1813
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_1c

    .line 1814
    if-nez v2, :cond_1c

    .line 1818
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1822
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1b

    .line 1823
    const-string v0, "onDisconnect: Call Collision case - staying on InCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1825
    :cond_1b
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3

    .line 1835
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isEndCallInteractionOpened()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1836
    const/16 v0, 0xbb8

    .line 1844
    :goto_5
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1845
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1838
    :cond_1d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_1e

    .line 1839
    const/16 v0, 0x5dc

    goto :goto_5

    .line 1841
    :cond_1e
    const/16 v0, 0x7d0

    goto :goto_5

    :cond_1f
    move v1, v4

    goto/16 :goto_2
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 2602
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2603
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2606
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2617
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2618
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 2

    .prologue
    .line 2301
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2302
    const-string v0, "SomcInCallScreen"

    const-string v1, "onPhoneStateChanged()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 2309
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 2310
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2311
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->invalidateOptionsMenu()V

    .line 2315
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 2317
    :cond_1
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshCallViewSoundStates(Z)V
    .locals 6
    .param p1, "isMuteButtonEnabled"    # Z

    .prologue
    .line 2182
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isMicMuted()Z

    move-result v2

    .line 2183
    .local v2, "micMuted":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v3

    .line 2188
    .local v3, "speakerOn":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isBluetoothConnected()Z

    move-result v0

    .line 2190
    .local v0, "bluetoothHeadsetConnected":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v1

    .line 2191
    .local v1, "bluetoothSoundOn":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isWiredHeadsetConnected()Z

    move-result v4

    .line 2193
    .local v4, "wiredHeadsetConnected":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v2}, Lcom/android/phone/CallView;->setMicIsMuted(Z)V

    .line 2194
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v3}, Lcom/android/phone/CallView;->setSpeakerIsOn(Z)V

    .line 2195
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v0}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 2196
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v1}, Lcom/android/phone/CallView;->setBluetoothAudioIsOn(Z)V

    .line 2197
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v4}, Lcom/android/phone/CallView;->setWiredHeadsetIsConnected(Z)V

    .line 2198
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 2199
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, p1}, Lcom/android/phone/CallView;->setMicButtonEnabled(Z)V

    .line 2200
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1366
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1380
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1381
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1382
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1383
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 1387
    :cond_0
    return-void
.end method

.method private rejectCallAndSendMsg(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3720
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3721
    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 3722
    if-nez v0, :cond_1

    .line 3731
    :cond_0
    :goto_0
    return-void

    .line 3723
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send message to number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3724
    :cond_2
    if-eqz p1, :cond_3

    .line 3725
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/SomcRejectMsgManager;->addPendingRejectMsgInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3728
    :cond_3
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcRejectMsgManager;->showCustomMessageDialog(Ljava/lang/String;)V

    .line 3729
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "message content is to be written"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBackgroundCallInfoFor3rdIncoming(Lcom/android/internal/telephony/Call;)V
    .locals 4

    .prologue
    .line 4580
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4581
    if-nez v0, :cond_0

    .line 4582
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    .line 4619
    :goto_0
    return-void

    .line 4588
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 4589
    if-nez v1, :cond_1

    .line 4590
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    goto :goto_0

    .line 4595
    :cond_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4596
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    goto :goto_0

    .line 4602
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 4603
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 4606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4607
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v2, v0, :cond_5

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4609
    :goto_1
    if-eqz v0, :cond_3

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4610
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4613
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4614
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4618
    :cond_4
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    goto :goto_0

    .line 4607
    :cond_5
    const-string v0, ""

    goto :goto_1
.end method

.method private setForegroundCallInfoForWaitingCall(Lcom/android/internal/telephony/Call;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 4517
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 4519
    if-nez v2, :cond_0

    .line 4520
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    .line 4571
    :goto_0
    return-void

    .line 4525
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 4527
    if-nez v3, :cond_1

    .line 4528
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    goto :goto_0

    .line 4534
    :cond_1
    const/4 v0, 0x0

    .line 4536
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 4538
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4539
    invoke-static {v4}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4540
    const/4 v1, 0x3

    .line 4549
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 4550
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 4552
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4553
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v4, v2, :cond_7

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4555
    :goto_2
    if-eqz v2, :cond_3

    const-string v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4556
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4558
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4559
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 4564
    :cond_4
    if-eqz v0, :cond_8

    .line 4565
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4541
    :cond_5
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4542
    const/4 v1, 0x2

    goto :goto_1

    .line 4544
    :cond_6
    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 4553
    :cond_7
    const-string v2, ""

    goto :goto_2

    .line 4567
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showAmPlayingAnimation()V
    .locals 1

    .prologue
    .line 4731
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showAmPlayingAnimation()V

    .line 4732
    return-void
.end method

.method private showAmRecordingAnimation()V
    .locals 2

    .prologue
    .line 4745
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showAmRecordingAnimation()V

    .line 4746
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v1}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->toggleSpeakerIcon(Z)V

    .line 4747
    return-void
.end method

.method private showCallEndedInteractionLayout(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 4883
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 4884
    .local v0, "info":Lcom/android/internal/telephony/CallerInfo;
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/android/phone/CallView;->showCallEndedInteractionLayout(ZLjava/lang/Object;)V

    .line 4885
    return-void

    .line 4884
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 4202
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4205
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 4206
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 4207
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4223
    :cond_1
    :goto_0
    return-void

    .line 4213
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 4214
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4218
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4222
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 2204
    if-eqz p4, :cond_4

    .line 2205
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show photo for foreground call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2210
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 2211
    const/4 v0, 0x1

    .line 2213
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p3}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2214
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 2215
    const-string v0, " == Showing emergency call picture."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2216
    :cond_1
    const/4 v0, 0x3

    .line 2241
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 2242
    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    .line 2243
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2248
    :cond_3
    :goto_2
    return-void

    .line 2207
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show photo for background call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2217
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2218
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    .line 2219
    const-string v0, " == Showing voicemail picture."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2220
    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    .line 2221
    :cond_7
    if-eqz p1, :cond_9

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_9

    .line 2222
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_8

    .line 2223
    const-string v2, " == Cached photo is current."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2225
    :cond_8
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 2226
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 2227
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    .line 2228
    const-string v2, " === Showing cached photo."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2231
    :cond_9
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_a

    .line 2232
    const-string v2, "showPhoto else clause.... Async update of photo!"

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2234
    :cond_a
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2235
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2236
    const/4 v0, 0x0

    goto :goto_1

    .line 2245
    :cond_b
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    goto :goto_2
.end method

.method private showExitingECMDialog()V
    .locals 4

    .prologue
    .line 2825
    const-string v0, "SomcInCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2828
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 2837
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 2838
    new-instance v1, Lcom/android/phone/SomcInCallScreen$12;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/SomcInCallScreen$12;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 2842
    new-instance v2, Lcom/android/phone/SomcInCallScreen$13;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SomcInCallScreen$13;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 2848
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b03d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b01fd

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 2853
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2855
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2856
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 6

    .prologue
    .line 2736
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2737
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGenericErrorDialog(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2744
    :cond_0
    if-eqz p2, :cond_1

    .line 2745
    new-instance v2, Lcom/android/phone/SomcInCallScreen$6;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$6;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2750
    new-instance v1, Lcom/android/phone/SomcInCallScreen$7;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$7;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2755
    new-instance v0, Lcom/android/phone/SomcInCallScreen$8;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$8;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2780
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0d0005

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b00a0

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 2783
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2787
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2789
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2790
    return-void

    .line 2761
    :cond_1
    new-instance v2, Lcom/android/phone/SomcInCallScreen$9;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$9;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2766
    new-instance v1, Lcom/android/phone/SomcInCallScreen$10;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$10;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2771
    new-instance v0, Lcom/android/phone/SomcInCallScreen$11;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$11;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    goto :goto_0
.end method

.method private showInfoForBackgroundCall(Lcom/android/internal/telephony/Call;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3266
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3267
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v7}, Lcom/android/phone/CallView;->setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 3293
    :goto_0
    return-void

    .line 3270
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0, v7}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 3273
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    .line 3274
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 3276
    if-eqz v2, :cond_1

    .line 3277
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3281
    :cond_1
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-static {v2, v3, v0}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 3283
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3285
    :goto_1
    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 3286
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v5, v3, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v2, v0, v5, v6}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v3, v3, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v2, v0, v3, v5}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v7, v2}, Lcom/android/phone/SomcInCallScreen;->showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 3283
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private showInfoForMainCall(Lcom/android/internal/telephony/Call;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3031
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show info for main call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3034
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v12, :cond_1c

    .line 3035
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->isHDVoiceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    move v2, v0

    .line 3037
    :goto_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3038
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v12}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    .line 3039
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0053

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3235
    :goto_1
    return-void

    .line 3042
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 3043
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 3045
    if-eqz v9, :cond_1a

    .line 3047
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    .line 3052
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 3053
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_9

    .line 3054
    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {v6, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 3062
    :goto_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 3063
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 3064
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    .line 3065
    invoke-direct {p0, v9}, Lcom/android/phone/SomcInCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 3067
    if-eqz v8, :cond_4

    .line 3068
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_2

    .line 3069
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " info.phoneNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3071
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " info.cnapName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3074
    :cond_2
    if-eqz v5, :cond_3

    iget-object v10, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v4

    .line 3077
    :cond_3
    if-eqz v6, :cond_4

    iget-object v5, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v4

    :cond_4
    move v5, v0

    .line 3094
    :goto_3
    const/4 v0, 0x0

    .line 3096
    if-eqz v5, :cond_c

    .line 3097
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 3099
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 3100
    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move v8, v0

    .line 3132
    :goto_4
    if-eqz v1, :cond_19

    .line 3138
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    .line 3139
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3140
    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3141
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3142
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3143
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3144
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 3148
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 3149
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 3153
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v7}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v6

    .line 3155
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v7, v0, :cond_12

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3157
    :goto_5
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 3160
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v10, :cond_13

    .line 3161
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 3167
    :goto_6
    if-nez v5, :cond_6

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    .line 3169
    const-string v5, "SomcInCallScreen"

    const-string v7, "internet call, phonetype changed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b039a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3171
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3172
    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3185
    :cond_6
    if-eqz v0, :cond_7

    const-string v7, "sip:"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3186
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3189
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 3190
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v0, v5, v6, v7, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3198
    :goto_7
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 3199
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->handleRedirectingInfoQuery(Lcom/android/phone/SomcCallerInfo;)V

    .line 3202
    :cond_8
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v8, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V

    .line 3205
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/SomcLandOwnerInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3208
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->handleLandOwnerInfo(Lcom/android/phone/SomcCallerInfo;)V

    goto/16 :goto_1

    .line 3057
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    goto/16 :goto_2

    .line 3081
    :cond_a
    if-ne v5, v4, :cond_1b

    .line 3082
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 3083
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_b

    .line 3084
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " oldNumber = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3087
    :cond_b
    if-eqz v5, :cond_1b

    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 3089
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 3090
    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    move v5, v4

    goto/16 :goto_3

    .line 3105
    :cond_c
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_d

    .line 3106
    const-string v5, "- displayMainCallStatus: using data we already have..."

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3107
    :cond_d
    instance-of v5, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_f

    .line 3109
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_e

    .line 3110
    const-string v0, "   ==> Got CallerInfo."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3113
    :cond_e
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    move v8, v4

    .line 3114
    goto/16 :goto_4

    .line 3115
    :cond_f
    instance-of v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_11

    .line 3118
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_10

    .line 3119
    const-string v0, "   ==> Got CallerInfoToken."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3121
    :cond_10
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    move v8, v3

    goto/16 :goto_4

    .line 3123
    :cond_11
    const-string v1, "SomcInCallScreen"

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    move-object v1, v0

    goto/16 :goto_4

    .line 3155
    :cond_12
    const-string v0, ""

    goto/16 :goto_5

    .line 3164
    :cond_13
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    goto/16 :goto_6

    .line 3194
    :cond_14
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    if-nez v5, :cond_15

    const-string v5, ""

    :cond_15
    invoke-virtual {v7, v6, v0, v5, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 3209
    :cond_16
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CityIdInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3212
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3217
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_17

    :goto_8
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    .line 3218
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->handleCityIdInfo(Lcom/android/phone/SomcCallerInfo;)V

    goto/16 :goto_1

    :cond_17
    move v4, v3

    .line 3217
    goto :goto_8

    .line 3220
    :cond_18
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3224
    :cond_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3231
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_1b
    move v5, v0

    goto/16 :goto_3

    :cond_1c
    move v2, v3

    goto/16 :goto_0
.end method

.method private showProgressIndication(II)V
    .locals 2

    .prologue
    .line 3884
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressIndication(message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3886
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3887
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3888
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3889
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3890
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3891
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3892
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3893
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3894
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2625
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStatusIndication(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2628
    :cond_0
    sget-object v0, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2710
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStatusIndication: unexpected status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2632
    :pswitch_0
    const-string v0, "SomcInCallScreen"

    const-string v1, "showStatusIndication: nothing to display"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_1
    :goto_0
    return-void

    .line 2644
    :pswitch_1
    const v0, 0x7f0b005e

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2651
    :pswitch_2
    const v0, 0x7f0b005b

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2658
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2659
    const v0, 0x7f0b001d

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2662
    :cond_2
    const v0, 0x7f0b005c

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2671
    :pswitch_4
    const v0, 0x7f0b005d

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2683
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 2684
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b0391

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2694
    :pswitch_6
    const v0, 0x7f0b005a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2700
    :pswitch_7
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 2706
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showExitingECMDialog()V

    goto :goto_0

    .line 2628
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private showSupplementaryServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 8
    .param p1, "notification"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    const/4 v7, 0x1

    .line 642
    iget v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 643
    .local v0, "notificationCode":I
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 644
    .local v2, "notificationType":I
    const-string v1, ""

    .line 648
    .local v1, "notificationText":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 651
    packed-switch v0, :pswitch_data_0

    .line 657
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled supplementary service notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 686
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 688
    .local v3, "r":Landroid/content/res/Resources;
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 689
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v5, 0x30

    const/4 v6, 0x0

    const v7, 0x7f090011

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 690
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 692
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void

    .line 653
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0095

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    goto :goto_0

    .line 663
    :cond_2
    if-ne v2, v7, :cond_0

    .line 666
    packed-switch v0, :pswitch_data_1

    .line 677
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled supplementary service notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0096

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 670
    goto :goto_0

    .line 673
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0097

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 674
    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 666
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4445
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogChoice: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4447
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4448
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4449
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4451
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mWaitPromptDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4452
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 4453
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4454
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4458
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0122

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0205

    new-instance v2, Lcom/android/phone/SomcInCallScreen$22;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$22;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0206

    new-instance v2, Lcom/android/phone/SomcInCallScreen$21;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$21;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4475
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4478
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4479
    return-void
.end method

.method private startAmPlayingAnimation()V
    .locals 1

    .prologue
    .line 4738
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->startAmPlayingAnimation()V

    .line 4739
    return-void
.end method

.method private startAmRecordingAnimation()V
    .locals 1

    .prologue
    .line 4753
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->startAmRecordingAnimation()V

    .line 4754
    return-void
.end method

.method private startDtmfTone(C)V
    .locals 2

    .prologue
    .line 3734
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "start playing dtmf tones..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3735
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3736
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startDtmfTone, NOT okToDialDTMFTones"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3753
    :cond_1
    :goto_0
    return-void

    .line 3740
    :cond_2
    invoke-static {p1}, Lcom/android/phone/SomcTonePlayer;->isValidTone(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3741
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing dtmf tone, NOT validTone, tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3745
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing dtmf tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3747
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    .line 3750
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 3751
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/SomcTonePlayer;->playToneByChar(CI)V

    goto :goto_0
.end method

.method private stopDtmfTone()V
    .locals 1

    .prologue
    .line 3756
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stop playing dtmf tones..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3757
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 3759
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 3760
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->stopTone()V

    .line 3762
    :cond_1
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    .locals 3

    .prologue
    .line 2330
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2331
    const-string v0, "syncWithPhoneState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 2344
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v1

    .line 2346
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_4

    .line 2349
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 2350
    const-string v0, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2351
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2352
    sget-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    .line 2357
    :goto_0
    return-object v0

    .line 2355
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    .line 2356
    const-string v0, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2357
    :cond_5
    sget-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1393
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1394
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1395
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1396
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1397
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1398
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x68

    invoke-interface {v0, v2, v1, v2}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 1401
    return-void
.end method

.method private updateConferenceListInfo(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallView$ConferenceCallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3974
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 3975
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 3977
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_7

    const/4 v0, 0x5

    if-ge v3, v0, :cond_7

    .line 3979
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3980
    invoke-static {}, Lcom/android/phone/CallView$ConferenceCallItem;->createConferenceCallItem()Lcom/android/phone/CallView$ConferenceCallItem;

    move-result-object v6

    .line 3983
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 3985
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 3987
    if-eqz v2, :cond_3

    .line 3988
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v2, v1, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->name:Ljava/lang/String;

    .line 3991
    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3992
    const-string v1, ""

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    .line 4005
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/CityIdInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 4006
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    .line 4007
    iget-object v1, v1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    .line 4011
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/SomcLandOwnerInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 4012
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    .line 4013
    iget-object v1, v1, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    .line 4019
    :cond_2
    iput-object v0, v6, Lcom/android/phone/CallView$ConferenceCallItem;->conferenceCallId:Ljava/lang/Object;

    .line 4022
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v6, Lcom/android/phone/CallView$ConferenceCallItem;->contactNumberIcon:Landroid/graphics/Bitmap;

    .line 4026
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3977
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3994
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v1, v7, :cond_6

    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_2
    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    .line 3996
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    const-string v7, "sip:"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3997
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    .line 3999
    :cond_5
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4000
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    goto :goto_1

    .line 3994
    :cond_6
    const-string v1, ""

    goto :goto_2

    .line 4029
    :cond_7
    return-object v4
.end method

.method private updateExpandedViewState()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4490
    iget-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-eqz v2, :cond_2

    .line 4491
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4493
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 4503
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 4493
    goto :goto_0

    .line 4498
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_1

    .line 4501
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_1
.end method

.method private updateOptionMenu()V
    .locals 3

    .prologue
    .line 1326
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1335
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlayingOrRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1342
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->showOptionMenuButton(Z)V

    .line 1343
    return-void

    .line 1335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateProgressIndication()V
    .locals 4

    .prologue
    const v3, 0x7f0b039b

    .line 3846
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissProgressIndication()V

    .line 3850
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3878
    :goto_0
    return-void

    .line 3854
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    .line 3856
    sget-object v1, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3874
    const-string v1, "SomcInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3858
    :pswitch_0
    const-string v0, "SomcInCallScreen"

    const-string v1, "No progress indication necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3862
    :pswitch_1
    const v0, 0x7f0b039c

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SomcInCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 3868
    :pswitch_2
    const v0, 0x7f0b039d

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SomcInCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 3856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .locals 8

    .prologue
    const/16 v7, 0x79

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4244
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProviderOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :cond_0
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4248
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    if-eqz v1, :cond_1

    .line 4249
    const v1, 0x7f0b03e1

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4250
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4253
    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4254
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4255
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4257
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4261
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4262
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4263
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4267
    :goto_0
    return-void

    .line 4265
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public asyncUpdateContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .param p1, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 4038
    instance-of v1, p1, Lcom/android/phone/SomcCallerInfo;

    if-nez v1, :cond_0

    .line 4041
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 4039
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    .line 4040
    .local v0, "somcCallerInfo":Lcom/android/phone/SomcCallerInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactImage(Lcom/android/phone/SomcCallerInfo;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4765
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlayingOrRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4766
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4775
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 4768
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4770
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->setDeviceRxMuteOff()V

    goto :goto_0

    .line 4766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 4768
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4400
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4401
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4402
    const/4 v0, 0x1

    return v0
.end method

.method public endSomcInCallScreenSession()V
    .locals 2

    .prologue
    .line 4158
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endSomcInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4160
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 4161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    .line 4165
    :goto_0
    return-void

    .line 4163
    :cond_1
    const-string v0, "SomcInCallScreen"

    const-string v1, "endSomcInCallScreenSession(): Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1262
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1263
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->moveTaskToBack(Z)Z

    .line 1266
    :cond_1
    return-void
.end method

.method hangupRingingCall()V
    .locals 1

    .prologue
    .line 4718
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4719
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 4720
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideRejectMsgList()V

    .line 4721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 4724
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 4725
    return-void
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEndOrRejectBtPressed()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    return v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2460
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .locals 1

    .prologue
    .line 4050
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method public isKeyBoardHidden()Z
    .locals 2

    .prologue
    .line 850
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 852
    const/4 v0, 0x1

    .line 854
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public okToDialDTMFTones()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1540
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 1541
    .local v2, "hasRingingCall":Z
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1544
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_0

    .line 1560
    :goto_0
    return v0

    .line 1555
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 1560
    .local v0, "canDial":Z
    :cond_2
    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 4144
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method public onActionPerformed(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3388
    packed-switch p1, :pswitch_data_0

    .line 3717
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3393
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_3

    .line 3397
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->showEndingLastCallLayout(I)V

    .line 3399
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3400
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 3405
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3406
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 3407
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 3409
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3411
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 3417
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3422
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3427
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3433
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 3434
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 3435
    if-eqz v0, :cond_0

    .line 3437
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSwapSecondCallState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3438
    :catch_0
    move-exception v0

    .line 3439
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3447
    :pswitch_6
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3448
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 3453
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 3458
    :pswitch_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 3460
    check-cast v0, Ljava/lang/String;

    const-string v2, "voicemail:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3462
    const-string v0, "voicemail:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3468
    :goto_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "making a privileged call to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3469
    :cond_5
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 3470
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->clearDtmfDialPadDigits()V

    .line 3471
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3472
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3465
    :cond_6
    const-string v0, "tel"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 3475
    :cond_7
    const-string v0, "SomcInCallScreen"

    const-string v1, "CallView wants us to make a privileged call but didn\'t supply a string!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3480
    :pswitch_9
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3481
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_8

    .line 3482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asking contacts to show contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3484
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 3485
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3486
    const-string v1, "phone"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3487
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3488
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3490
    :cond_9
    const-string v0, "SomcInCallScreen"

    const-string v1, "CallView wants us to show a contact but didn\'t supply a string!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3495
    :pswitch_a
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 3496
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startDtmfTone(C)V

    goto/16 :goto_0

    .line 3501
    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 3502
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateOptionMenu()V

    goto/16 :goto_0

    .line 3507
    :pswitch_c
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3508
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3512
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3510
    :cond_a
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_2

    .line 3516
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->toggleSoundPhoneSpeaker()V

    .line 3517
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3521
    :pswitch_e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_b

    .line 3522
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3524
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3528
    :pswitch_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3529
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3533
    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto/16 :goto_0

    .line 3538
    :pswitch_11
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3539
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3540
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3541
    const-string v0, "Answer during 3rd incoming call: ACTION_END_HELD_CALL_AT_3RD_INCOMING_CALL"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3548
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "content://contacts/people/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3549
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3557
    :pswitch_13
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_d

    .line 3558
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_c

    .line 3559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3562
    :cond_c
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3563
    check-cast p2, Lcom/android/internal/telephony/Connection;

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 3566
    :cond_d
    const-string v0, "SomcInCallScreen"

    const-string v1, "The view asked us to hangup a conference call but didn\'t supply correct data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3575
    :pswitch_14
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_f

    .line 3576
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_e

    .line 3577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3579
    :cond_e
    check-cast p2, Lcom/android/internal/telephony/Connection;

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 3582
    :cond_f
    const-string v0, "SomcInCallScreen"

    const-string v1, "The view asked us to extract a conference call but didn\'t supply correct data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3586
    :pswitch_15
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->silenceRinger()V

    goto/16 :goto_0

    .line 3589
    :pswitch_16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 3590
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/phone/SomcInCallScreen;->rejectCallAndSendMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3591
    :cond_10
    if-nez p2, :cond_11

    .line 3592
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->rejectCallAndSendMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3594
    :cond_11
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideRejectMsgList()V

    .line 3595
    const-string v0, "SomcInCallScreen"

    const-string v1, "wrong data type for reject message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3600
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->invalidateOptionsMenu()V

    .line 3601
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateOptionMenu()V

    goto/16 :goto_0

    .line 3604
    :pswitch_18
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 3606
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 3610
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_12

    .line 3611
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3612
    const-string v0, "- onActionPerformed: not the foreground Activity!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3616
    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3617
    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcRejectMsgManager;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3621
    :cond_13
    invoke-direct {p0, v2, v3, v3, v3}, Lcom/android/phone/SomcInCallScreen;->enableNavigationBar(ZZZZ)V

    goto/16 :goto_0

    .line 3626
    :cond_14
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_0

    .line 3629
    :cond_15
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3630
    const-string v0, "update the navigation bar with the wrong parameter!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3635
    :pswitch_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3636
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3640
    :cond_16
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3637
    :cond_17
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_16

    .line 3638
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto :goto_3

    .line 3643
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->startAmPlayingAnimation()V

    .line 3644
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmPlayingAnimation()V

    goto/16 :goto_0

    .line 3647
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->startAmRecordingAnimation()V

    .line 3648
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmRecordingAnimation()V

    goto/16 :goto_0

    .line 3651
    :pswitch_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_0

    .line 3652
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0, v3}, Lcom/android/phone/widget/SomcCallWidgetManager;->setAreaReserved(Z)V

    goto/16 :goto_0

    .line 3656
    :pswitch_1d
    check-cast p2, Lcom/android/phone/widget/ISomcCallWidget;

    .line 3658
    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->hasPhoneStateAccess()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3659
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3660
    if-eqz v0, :cond_18

    .line 3661
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3664
    :goto_4
    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v1

    invoke-interface {v1, p0, p2, v0}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->select(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3667
    :pswitch_1e
    check-cast p2, Lcom/android/phone/widget/ISomcCallWidget;

    .line 3668
    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->destroy(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;)V

    goto/16 :goto_0

    .line 3672
    :pswitch_1f
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3673
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3674
    const-string v0, "tel"

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3675
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3676
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3677
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3678
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    .line 3683
    :pswitch_20
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3684
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3685
    const-string v0, "sms"

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3686
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3687
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3688
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3689
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    .line 3694
    :pswitch_21
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3695
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3697
    const-string v1, "phone"

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3699
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3700
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3701
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3702
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    .line 3707
    :pswitch_22
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3708
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3709
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3711
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3712
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3713
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    :cond_18
    move-object v0, v1

    goto/16 :goto_4

    .line 3388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_c
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 812
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_5

    const/4 v1, 0x1

    .line 814
    .local v1, "dialPadOpen":Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->inManageConference()Z

    move-result v2

    .line 815
    .local v2, "inConference":Z
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "dialPadNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->reDraw()V

    .line 820
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_1

    .line 821
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    .line 822
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 828
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallView;->setInManageConference(Z)V

    .line 830
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 831
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    sget-object v4, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {v3, v4}, Lcom/android/phone/CallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 833
    :cond_2
    if-eqz v0, :cond_3

    .line 834
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, v0}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 836
    :cond_3
    if-eqz v1, :cond_4

    .line 837
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 842
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, p0}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 843
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v4}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 844
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 845
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->requestFocus()Z

    .line 846
    return-void

    .line 812
    .end local v0    # "dialPadNumber":Ljava/lang/String;
    .end local v1    # "dialPadOpen":Z
    .end local v2    # "inConference":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 714
    const-string v5, "SomcInCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 716
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 717
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 720
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v5, :cond_0

    .line 726
    const-string v5, "SomcInCallScreen"

    const-string v6, "onCreate() reached on non-voice-capable device"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    .line 804
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->initCallWidgetManager()V

    .line 732
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 733
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcInCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 735
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5, p0}, Lcom/android/phone/PhoneGlobals;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 736
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/phone/SomcRejectMsgManager;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 739
    const/high16 v2, 0x80000

    .line 740
    .local v2, "flags":I
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_1

    .line 746
    const/high16 v5, 0x400000

    or-int/2addr v2, v5

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 750
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 751
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 754
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x8000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 756
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 758
    iput-object p0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    .line 760
    new-instance v5, Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/phone/SomcSoundHandling;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    .line 762
    new-instance v5, Lcom/android/phone/LargeCallView;

    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/phone/LargeCallView;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    .line 763
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcInCallScreen;->setContentView(Landroid/view/View;)V

    .line 765
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, p0}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 768
    new-instance v5, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v5}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 770
    new-instance v5, Lcom/android/phone/CallTime;

    invoke-direct {v5, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 771
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 773
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->registerForPhoneStates()V

    .line 780
    if-nez p1, :cond_3

    .line 781
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_2

    .line 782
    const-string v5, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 800
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 802
    new-instance v5, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    invoke-direct {v5, p0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    .line 803
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcInCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mPowerManager:Landroid/os/PowerManager;

    goto/16 :goto_0

    .line 787
    :cond_3
    const-string v5, "DialPadNumber"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "dialPadNumber":Ljava/lang/String;
    const-string v5, "DialPadOpen"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 789
    .local v1, "dialPadOpen":Z
    const-string v5, "InConference"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 791
    .local v3, "inConference":Z
    if-eqz v0, :cond_4

    .line 792
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v0}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 794
    :cond_4
    if-eqz v1, :cond_5

    .line 795
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 797
    :cond_5
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v3}, Lcom/android/phone/CallView;->setInManageConference(Z)V

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4840
    new-instance v0, Lcom/android/phone/RejectMsgLoader;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectMsgLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1200
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsDestroyed:Z

    .line 1206
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->unregister()V

    .line 1207
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 1208
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcRejectMsgManager;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 1210
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->unregisterForPhoneStates()V

    .line 1212
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->closeHandsFree()V

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 1217
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 1219
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1226
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1227
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 3297
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3298
    const-string v0, "onImageLoadComplete."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3300
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 3306
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    .line 3313
    :goto_0
    check-cast p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;

    .line 3314
    iget-object v0, p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3315
    iget-object v1, p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 3317
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 3318
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 3319
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 3321
    const/16 v1, 0x70

    if-ne p1, v1, :cond_1

    .line 3322
    new-instance v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;

    invoke-direct {v1}, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;-><init>()V

    .line 3323
    iput-object p2, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    .line 3324
    iput-object v0, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 3325
    iput-object p5, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    .line 3326
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V

    .line 3328
    :cond_1
    return-void

    .line 3310
    :cond_2
    const-string v0, "SomcInCallScreen"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2492
    sparse-switch p1, :sswitch_data_0

    .line 2542
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2495
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->handleBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2501
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2509
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_0

    .line 2521
    const-string v0, "SomcInCallScreen"

    const-string v2, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->silenceRinger()V

    goto :goto_0

    .line 2535
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2537
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 2535
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2492
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/SomcInCallScreen;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4846
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/phone/ItemWithIcon;>;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/ItemWithIcon;>;"
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 4849
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 4857
    :goto_0
    return-void

    .line 4852
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->checkIfRejectMsgNeeded(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4853
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/List;)V

    goto :goto_0

    .line 4856
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, p2}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 4862
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/phone/ItemWithIcon;>;>;"
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1405
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1425
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 1426
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1083
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1085
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 1086
    const-string v0, "SomcInCallScreen"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->onPause()V

    .line 1091
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 1093
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1098
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 1103
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    .line 1104
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    .line 1108
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->setBeginningCall(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2

    .line 1141
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 1146
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1148
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1156
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1158
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1166
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_4

    .line 1167
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->release()V

    .line 1168
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 1175
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1178
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1181
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_6

    .line 1182
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    .line 1183
    const-string v0, "Release UpdateLock on onPause() because there\'s no active phone call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1185
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 1187
    :cond_6
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2

    .prologue
    .line 2364
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2365
    const-string v0, "onQueryComplete."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 2373
    :goto_0
    return-void

    .line 2372
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 887
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 889
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 890
    const-string v0, "SomcInCallScreen"

    const-string v3, "onResume()..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 894
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 896
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 899
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 901
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 902
    new-instance v3, Lcom/android/phone/SomcInCallScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcInCallScreen$3;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 919
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 922
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 926
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 928
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v0, :cond_9

    .line 929
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 952
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 953
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- onResume: need to show status indication!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    move v0, v1

    .line 963
    :goto_1
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v3}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 964
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcInCallScreen;->setVolumeControlStream(I)V

    .line 970
    :goto_2
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v4, v3, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 976
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 978
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->syncWithPhoneState()Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    move-result-object v3

    .line 979
    sget-object v4, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    if-eq v3, v4, :cond_3

    .line 980
    if-eqz v0, :cond_b

    .line 988
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 989
    const-string v0, "SomcInCallScreen"

    const-string v3, "- syncWithPhoneState failed, but staying here anyway."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1019
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getRestoreMuteOnInCallResume()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1020
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1021
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->setRestoreMuteOnInCallResume(Z)V

    .line 1025
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    :goto_3
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    .line 1029
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-nez v0, :cond_5

    .line 1030
    new-instance v0, Lcom/android/phone/SomcTonePlayer;

    const/16 v1, 0x5a

    invoke-direct {v0, v2, v1}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 1033
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1054
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMmiDialogEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1055
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-nez v0, :cond_6

    .line 1056
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1057
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->displayMmiInfo(Lcom/android/internal/telephony/MmiCode;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 1064
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1065
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmPlayingAnimation()V

    .line 1072
    :goto_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_7

    .line 1073
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->triggerReload()V

    .line 1076
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_8

    .line 1077
    const-string v0, "SomcInCallScreen"

    const-string v1, "onResume() done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_8
    :goto_5
    return-void

    .line 931
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    goto/16 :goto_0

    .line 966
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/phone/SomcInCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_2

    .line 1004
    :cond_b
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- syncWithPhoneState failed! status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1008
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    goto :goto_5

    :cond_c
    move v1, v2

    .line 1025
    goto/16 :goto_3

    .line 1066
    :cond_d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1067
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmRecordingAnimation()V

    goto :goto_4

    .line 1069
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->hideAmAnimation()V

    goto :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1192
    const-string v0, "DialPadNumber"

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v1, "DialPadOpen"

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1194
    const-string v0, "InConference"

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->inManageConference()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1195
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->cleanUpWidgetMenu()V

    .line 1196
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1197
    return-void

    .line 1193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1231
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 1232
    const-string v1, "onStop()..."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1233
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1235
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1237
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1238
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1240
    :cond_1
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 3

    .prologue
    .line 2380
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

    .line 2383
    sget-object v0, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2426
    const v0, 0x7f0b0065

    .line 2434
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2435
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2438
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2441
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00a0

    new-instance v2, Lcom/android/phone/SomcInCallScreen$5;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$5;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2452
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2453
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2454
    return-void

    .line 2388
    :pswitch_0
    const v0, 0x7f0b0063

    .line 2389
    goto :goto_0

    .line 2394
    :pswitch_1
    const v0, 0x7f0b0062

    .line 2395
    goto :goto_0

    .line 2401
    :pswitch_2
    const v0, 0x7f0b0064

    .line 2402
    goto :goto_0

    .line 2407
    :pswitch_3
    const v0, 0x7f0b005f

    .line 2408
    goto :goto_0

    .line 2413
    :pswitch_4
    const v0, 0x7f0b0061

    .line 2414
    goto :goto_0

    .line 2419
    :pswitch_5
    const v0, 0x7f0b0060

    .line 2420
    goto :goto_0

    .line 2383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 4
    .param p1, "timeElapsed"    # J

    .prologue
    .line 2481
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->getAmGreetingDuration()J

    move-result-wide v0

    .line 2483
    .local v0, "greetingDuration":J
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 2485
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CallView;->setCallTime(Ljava/lang/String;)V

    .line 2487
    :cond_1
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x6f

    .line 4073
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4074
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4075
    return-void
.end method

.method requestUpdateNavigationBar()V
    .locals 2

    .prologue
    const/16 v1, 0x76

    .line 4083
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateNavigationBar()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4084
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4085
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4086
    return-void
.end method

.method requestUpdateScreen()V
    .locals 1

    .prologue
    .line 4100
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4103
    :cond_0
    return-void
.end method

.method public setEmergencyCallRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 4192
    iput p1, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    .line 4193
    return-void
.end method

.method setEndOrRejectBtPressed()V
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 883
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1357
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1358
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1359
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1360
    return-void
.end method

.method public showOptionsMenu(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1274
    new-instance v0, Lcom/android/phone/SomcInCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$4;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 1293
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1294
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1295
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1296
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1297
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1298
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->hideAllMenuItems(Landroid/view/Menu;)V

    .line 1300
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->enableCallRecorderMenuItems(Landroid/view/Menu;)V

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1306
    return-void
.end method

.method public toggleSpeakerPhone(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 4779
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4796
    :goto_0
    return-void

    .line 4782
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4783
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->toggleSpeakerIcon(Z)V

    .line 4784
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4785
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 4789
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->setDeviceRxMuteOn()V

    .line 4795
    :goto_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v1}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setSpeakerIsOn(Z)V

    goto :goto_0

    .line 4787
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto :goto_1

    .line 4791
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallView;->toggleSpeakerIcon(Z)V

    .line 4792
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 4793
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->setDeviceRxMuteOff()V

    goto :goto_2
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 2978
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcInCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->unregisterForPhoneStates()V

    .line 2984
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->registerForPhoneStates()V

    .line 2985
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .param p1, "dismissKeyguard"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 4056
    if-eqz p1, :cond_0

    .line 4057
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4061
    :goto_0
    return-void

    .line 4059
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method updateMicIsMuted()V
    .locals 2

    .prologue
    .line 4482
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setMicIsMuted(Z)V

    .line 4483
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 4484
    return-void
.end method

.method updateScreen()V
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1904
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1906
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    .line 1907
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 1908
    const-string v7, "  updateScreen..."

    invoke-direct {p0, v7}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1909
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  - phone state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - inCallScreenMode = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1918
    :cond_0
    iget-boolean v5, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v5, :cond_2

    .line 1919
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 1920
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2178
    :cond_1
    :goto_0
    return-void

    .line 1922
    :cond_2
    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v5, :cond_3

    .line 1923
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 1924
    const-string v0, "- updateScreen: call ended state (NOT updating ui)..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1930
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProgressIndication()V

    .line 1944
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_2e

    .line 1945
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 1955
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1956
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1957
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1959
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, v5, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, v5, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_5
    move v5, v4

    .line 1962
    :goto_2
    if-nez v5, :cond_d

    move v5, v4

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->refreshCallViewSoundStates(Z)V

    .line 1964
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1965
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/SomcInCallScreen;->updateConferenceListInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 1970
    :goto_4
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 1971
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v7, :cond_13

    .line 1974
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "- updateScreen: Ringing call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1976
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1981
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1986
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1987
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    .line 1994
    :goto_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_7

    .line 1995
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->setBackgroundCallInfoFor3rdIncoming(Lcom/android/internal/telephony/Call;)V

    .line 2002
    :cond_7
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    :goto_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->allowEndingHeldCallAt3rdIncomingCall()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/CallView;->showWaitingCallLayout(ZZ)V

    .line 2018
    :goto_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isRejectMsgListOpened()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcRejectMsgManager;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2023
    :cond_8
    invoke-direct {p0, v4, v6, v6, v6}, Lcom/android/phone/SomcInCallScreen;->enableNavigationBar(ZZZZ)V

    .line 2030
    :goto_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    .line 2032
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move v4, v6

    .line 2174
    :cond_9
    :goto_9
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateOptionMenu()V

    .line 2175
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0, v4}, Lcom/android/phone/widget/SomcCallWidgetManager;->setAreaReserved(Z)V

    goto/16 :goto_0

    .line 1947
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 1948
    goto/16 :goto_1

    .line 1949
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v3

    .line 1950
    goto/16 :goto_1

    :cond_c
    move v5, v6

    .line 1959
    goto/16 :goto_2

    :cond_d
    move v5, v6

    .line 1962
    goto/16 :goto_3

    .line 1967
    :cond_e
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    goto/16 :goto_4

    .line 1991
    :cond_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->setForegroundCallInfoForWaitingCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_5

    :cond_10
    move v0, v6

    .line 2002
    goto :goto_6

    .line 2008
    :cond_11
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showIncomingCallLayout()V

    goto :goto_7

    .line 2028
    :cond_12
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_8

    .line 2033
    :cond_13
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v7, :cond_26

    .line 2035
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 2039
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2041
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_14

    .line 2042
    const-string v0, "- updateScreen: Making an outgoing call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2043
    :cond_14
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    invoke-virtual {v0, v6, v1, v4}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 2044
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    move v4, v6

    goto :goto_9

    .line 2045
    :cond_15
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2047
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_16

    .line 2048
    const-string v0, "- updateScreen: Two ongoing calls."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2052
    :cond_16
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    move v6, v4

    .line 2060
    :cond_18
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/phone/CallView;->showTwoCallsLayout(ZZZ)V

    .line 2062
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2063
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 2064
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 2066
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    .line 2067
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForBackgroundCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_9

    .line 2072
    :cond_19
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1a

    .line 2073
    const-string v0, "- updateScreen: One call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2075
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2078
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2d

    .line 2080
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "We have a single conference call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2082
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2083
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 2084
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 2088
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v4

    .line 2089
    :goto_a
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1f

    move v1, v4

    .line 2090
    :goto_b
    if-eqz v0, :cond_1c

    if-nez v1, :cond_1d

    :cond_1c
    move v6, v4

    .line 2092
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/phone/CallView;->showConferenceCallLayout(ZZ)V

    .line 2095
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_9

    :cond_1e
    move v0, v6

    .line 2088
    goto :goto_a

    :cond_1f
    move v1, v6

    .line 2089
    goto :goto_b

    .line 2099
    :cond_20
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2101
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_21

    const-string v0, "We have a single call on hold."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2102
    :cond_21
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    invoke-virtual {v0, v4, v1, v6}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 2103
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_9

    .line 2106
    :cond_22
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2108
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_23

    const-string v0, "We have a single active call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2110
    :cond_23
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 2112
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 2113
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    invoke-virtual {v0, v6, v1, v6}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 2114
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2115
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmPlayingAnimation()V

    .line 2123
    :goto_c
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    .line 2124
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_9

    .line 2117
    :cond_24
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2118
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmRecordingAnimation()V

    goto :goto_c

    .line 2121
    :cond_25
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->hideAmAnimation()V

    move v4, v6

    goto :goto_c

    .line 2129
    :cond_26
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_27

    const-string v5, "- updateScreen: Phone is idle."

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2135
    :cond_27
    if-ne v0, v3, :cond_28

    .line 2136
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->isCallEndedInteractionDisplayable(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2137
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showCallEndedInteractionLayout(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_9

    .line 2139
    :cond_28
    if-eq v0, v1, :cond_29

    if-ne v0, v2, :cond_2b

    .line 2142
    :cond_29
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->isCallEndedInteractionDisplayable(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2143
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showCallEndedInteractionLayout(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_9

    .line 2145
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v1, v2}, Lcom/android/phone/SomcPhoneUtils;->getCallFailedString(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/phone/CallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 2165
    :cond_2b
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2c

    const-string v0, "- updateScreen: No disconnected calls."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2167
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->clear()V

    .line 2168
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_9

    .line 2169
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->clearStack()V

    goto/16 :goto_9

    :cond_2d
    move v4, v6

    goto/16 :goto_9

    :cond_2e
    move v0, v4

    goto/16 :goto_1
.end method
