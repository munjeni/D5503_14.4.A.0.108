.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;,
        Lcom/android/phone/CallFeaturesSetting$VolteHandler;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final EVENT_GET_VOLTE_STATE:I

.field private final EVENT_SET_VOLTE_STATE:I

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mAmAlertCheckBox:Landroid/widget/CheckBox;

.field private mAnsweringMachineSettings:Landroid/preference/PreferenceScreen;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mCurrentDialogId:I

.field mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field mHeaderSize:I

.field private mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mShowDualMicNoiseSuppression:Z

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

.field private mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

.field private mVMCallLogIntegrationEditable:Z

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;

.field private mVolte:Landroid/preference/CheckBoxPreference;

.field private mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 390
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 246
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->EVENT_GET_VOLTE_STATE:I

    .line 247
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->EVENT_SET_VOLTE_STATE:I

    .line 308
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mHeaderSize:I

    .line 327
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 361
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMCallLogIntegrationEditable:Z

    .line 376
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;-><init>(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 483
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 490
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 495
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 500
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 505
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 511
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 517
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 523
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 529
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 535
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    .line 571
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1148
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1317
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1383
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 2854
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/CallFeaturesSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/CallFeaturesSetting;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallFeaturesSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updateEqualizerSummary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/CallFeaturesSetting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updateNetworkRelatedSettings(Z)V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1421
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1422
    const/4 v2, 0x1

    .line 1434
    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .line 1426
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .line 1427
    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1428
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1429
    const/4 v2, 0x0

    .line 1430
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1440
    const/4 v3, 0x0

    .line 1441
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1443
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1444
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1445
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1446
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1447
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1448
    if-nez v3, :cond_1

    .line 1449
    const-string v3, ""

    .line 1454
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1463
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1464
    const-string v0, ""

    .line 1468
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDualMicNoiseSuppressionSettings()V
    .locals 2

    .prologue
    .line 2159
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2160
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2161
    const-string v1, "dual_mic_noise_suppression_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    .line 2162
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isDualMicNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2163
    return-void
.end method

.method private createEqualizerSettings()V
    .locals 3

    .prologue
    .line 2166
    const-string v0, "voice_personal_eq"

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2168
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEqualizerSettings: Got audio equalizer value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2171
    :cond_0
    if-nez v0, :cond_1

    .line 2192
    :goto_0
    return-void

    .line 2173
    :cond_1
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2174
    const-string v0, "button_equalizer_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2175
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$6;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 2277
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2278
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 2279
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 2280
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2281
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 2282
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2283
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2286
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2288
    :cond_0
    return-void
.end method

.method private createSlowTalkSettings()V
    .locals 3

    .prologue
    .line 2217
    const-string v0, "st_enable"

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSlowTalkSettings: Got Audio slow talk value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2222
    :cond_0
    if-nez v0, :cond_1

    .line 2234
    :goto_0
    return-void

    .line 2224
    :cond_1
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2225
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "slow_talk_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2227
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$8;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallFeaturesSetting$8;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private createSpeakerVoiceEnhancementSettings()V
    .locals 3

    .prologue
    .line 2195
    const-string v0, "wide_voice_enable"

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSpeakerVoiceEnhancementSettings: Got Audio speaker voice enhancement value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2201
    :cond_0
    if-nez v0, :cond_1

    .line 2214
    :goto_0
    return-void

    .line 2203
    :cond_1
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2204
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "speaker_voice_enhancement_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2206
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$7;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallFeaturesSetting$7;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2830
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting settings for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2831
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 2838
    :goto_0
    return-void

    .line 2834
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1094
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    return-void

    .line 1095
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2841
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2842
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getIncreasingRingtone(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 2410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "increasing_ringtone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 2293
    const-string v0, "sip_call_options_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2295
    const-string v1, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 2297
    const-string v2, "sip_settings_category_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 2299
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2300
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2304
    :goto_0
    return-object v1

    .line 2303
    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v1, v0

    .line 2304
    goto :goto_0
.end method

.method public static getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2398
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2399
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 2402
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 2904
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2905
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2906
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2907
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2908
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2909
    return-void
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 7

    .prologue
    const/16 v6, 0x25a

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1161
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleForwardingSettingsReadResult: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 1164
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FwdRead: ar.exception="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1168
    :goto_0
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1169
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v2, "CallFeaturesSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FwdRead: userObj="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 1175
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v2, :cond_5

    .line 1176
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring fwd reading result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_4
    :goto_1
    return-void

    .line 1181
    :cond_5
    if-eqz v0, :cond_7

    .line 1182
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_6

    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error discovered for fwd read : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_6
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1184
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1185
    const/16 v0, 0x192

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_1

    .line 1190
    :cond_7
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move v2, v3

    .line 1192
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_13

    .line 1193
    aget-object v5, v0, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    .line 1194
    aget-object v0, v0, v2

    .line 1198
    :goto_3
    if-nez v0, :cond_d

    .line 1202
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_8

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating default info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1204
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1205
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v1, v1, p2

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1206
    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1215
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v1, p2

    move v0, v3

    .line 1219
    :goto_5
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1220
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_10

    move v0, v3

    .line 1225
    :goto_6
    if-eqz v0, :cond_11

    .line 1226
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "CallFeaturesSetting"

    const-string v1, "Done receiving fwd info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_a
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1228
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v0, :cond_b

    .line 1229
    const-string v0, ""

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1232
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1234
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_1

    .line 1192
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1209
    :cond_d
    iget-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 1210
    :cond_e
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1213
    :cond_f
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_9

    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1219
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1236
    :cond_11
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "CallFeaturesSetting"

    const-string v1, "Not done receiving fwd info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    move v0, v4

    goto :goto_6

    :cond_13
    move-object v0, v1

    goto/16 :goto_3

    :cond_14
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1472
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1473
    const-string v0, "handleSetVMMessage: set VM request complete"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1477
    :cond_0
    const-string v0, ""

    .line 1478
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 1479
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_5

    move v3, v2

    move v2, v1

    .line 1485
    :goto_0
    if-eqz v2, :cond_4

    .line 1486
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_4

    .line 1491
    :goto_1
    if-eqz v1, :cond_2

    .line 1492
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "change VM success!"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1493
    :cond_1
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1503
    :goto_2
    return-void

    .line 1495
    :cond_2
    if-eqz v3, :cond_3

    .line 1496
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change fowarding setting. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_2

    .line 1499
    :cond_3
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change voicemail. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 2532
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2533
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 2534
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2536
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2537
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2503
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2504
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2507
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2510
    :cond_0
    if-eq v0, v2, :cond_1

    .line 2511
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 2523
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2524
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2525
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2526
    const-string v2, "ttyPreferredMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2527
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2529
    :cond_1
    return-void

    .line 2516
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 2

    .prologue
    .line 1529
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVMAndFwdSetSuccess(). current voicemail provider key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1533
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1536
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1537
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1060
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1513
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1514
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1515
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1516
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1522
    :goto_0
    return-void

    .line 1519
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1520
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1521
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    .line 1241
    const/4 v4, 0x0

    .line 1242
    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 1243
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1244
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 1245
    move-object v4, v2

    .line 1250
    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .line 1243
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initEqualizerValue()V
    .locals 2

    .prologue
    .line 2237
    const-string v0, "button_equalizer_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2238
    if-nez v0, :cond_0

    .line 2243
    :goto_0
    return-void

    .line 2239
    :cond_0
    const-string v1, "voice_personal_eq"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2241
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2242
    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateEqualizerSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSlowTalkValue()V
    .locals 2

    .prologue
    .line 2259
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "slow_talk_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2261
    if-nez v0, :cond_0

    .line 2266
    :goto_0
    return-void

    .line 2263
    :cond_0
    const-string v1, "st_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2265
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private initSpeakerVoiceEnhancementValue()V
    .locals 2

    .prologue
    .line 2246
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "speaker_voice_enhancement_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2248
    if-nez v0, :cond_0

    .line 2256
    :goto_0
    return-void

    .line 2250
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2253
    const-string v1, "wide_voice_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2255
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 2250
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initVoiceMailProviders()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2626
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initVoiceMailProviders()"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2627
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vm_numbers"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 2632
    const-string v0, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2633
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ACTION_ADD_VOICEMAIL"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2634
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2635
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2637
    :goto_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    .line 2638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ACTION_ADD_VOICEMAIL. providerToIgnore="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2640
    :cond_2
    if-eqz v0, :cond_3

    .line 2642
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_3
    move-object v2, v0

    .line 2646
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2649
    const v0, 0x7f0b0288

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2650
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v4, ""

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v6, p0, v5, v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2654
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2655
    const-string v1, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2656
    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 2657
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move v4, v0

    .line 2661
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 2662
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2663
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2664
    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2665
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2666
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring key: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2667
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 2661
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2670
    :cond_5
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2671
    :cond_6
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2672
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2673
    const-string v11, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2674
    iget-object v11, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2676
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v8, :cond_7

    .line 2677
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Store loaded VoiceMailProvider. key: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " -> name: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", intent: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2680
    :cond_7
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v11, p0, v0, v10}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2688
    :cond_8
    new-array v2, v4, [Ljava/lang/String;

    .line 2689
    new-array v4, v4, [Ljava/lang/String;

    .line 2690
    aput-object v5, v2, v3

    .line 2691
    const-string v0, ""

    aput-object v0, v4, v3

    .line 2692
    const/4 v0, 0x1

    move v1, v0

    .line 2693
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 2694
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2695
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 2693
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_4

    .line 2698
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 2699
    aput-object v5, v4, v1

    .line 2700
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 2704
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2705
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2710
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 2711
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_b

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set up the first mPreviousVMProviderKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2716
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 2717
    return-void

    :cond_c
    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2497
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 1255
    const/4 v0, 0x1

    .line 1256
    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1259
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1260
    const/4 v0, 0x0

    .line 1263
    :cond_0
    return v0
.end method

.method private launchAmSettings()V
    .locals 3

    .prologue
    .line 707
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "launchAmSettings"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 708
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.am.SomcAmSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 711
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 712
    return-void
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2791
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2793
    if-nez v3, :cond_0

    .line 2794
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceMailProvider settings for the key \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found. Returning null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    :goto_0
    return-object v0

    .line 2799
    :cond_0
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2801
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2802
    if-lez v2, :cond_2

    .line 2803
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 2804
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 2805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2806
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 2807
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2809
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Reason"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2812
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2813
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2814
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Number"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2816
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#Time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x14

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2804
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    move-object v0, v2

    .line 2821
    :cond_2
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2822
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded settings for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    .line 2823
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2555
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 2493
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2494
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2720
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2750
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_1

    .line 2780
    :cond_0
    :goto_0
    return-void

    .line 2753
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 2754
    invoke-virtual {p2, v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2755
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeSaveSettingsForVoicemailProvider: Not saving setting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " since they have not changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2761
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving settings for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2762
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2765
    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2766
    sget-object v4, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_4

    .line 2767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2768
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 2769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2770
    aget-object v5, v3, v0

    .line 2771
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2772
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2773
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2768
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2777
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2779
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z
    .locals 3

    .prologue
    .line 2376
    const-string v0, "button_voicemail_notification_vibrate_key"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2377
    const-string v0, "button_voicemail_notification_vibrate_when_key"

    const-string v1, "never"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2382
    const-string v1, "always"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2383
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2384
    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2385
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2386
    const/4 v0, 0x1

    .line 2388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRevertDone()V
    .locals 2

    .prologue
    .line 929
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flipping provider key back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 932
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 933
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_1

    .line 934
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 937
    :cond_1
    return-void
.end method

.method private queryVoLTEState()V
    .locals 4

    .prologue
    .line 2415
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "queryVoLTEState "

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2416
    :cond_0
    const/4 v0, -0x1

    .line 2418
    const v1, 0x9001e

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/phone/CallFeaturesSetting;->sendOemRilRequestRaw(IBLandroid/os/Message;)V

    .line 2420
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 1267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1268
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1269
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1104
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1105
    :cond_0
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1108
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1111
    :cond_1
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1112
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFwdNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " settings"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1118
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1119
    :cond_3
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1123
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v0, v2, :cond_6

    .line 1124
    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1146
    :goto_1
    return-void

    :cond_5
    move v0, v1

    .line 1112
    goto :goto_0

    .line 1128
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1129
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 1130
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1131
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1132
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1133
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1135
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_7

    const-string v0, "Reading current forwarding settings"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1136
    :cond_7
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 1137
    :goto_2
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 1138
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1139
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1142
    :cond_8
    const/16 v0, 0x25a

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_1

    .line 1144
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1274
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1275
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1276
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_4

    .line 1277
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    move v6, v7

    .line 1278
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 1279
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v0, v6

    .line 1281
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v0

    .line 1284
    if-eqz v0, :cond_1

    .line 1285
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1288
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    :goto_1
    iget v2, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v9, 0x1f5

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v8, v9, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1278
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move v1, v7

    .line 1288
    goto :goto_1

    .line 1299
    :cond_3
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1304
    :goto_2
    return-void

    .line 1301
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "Not touching fwd #"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1302
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private sendOemRilRequestRaw(IBLandroid/os/Message;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2473
    iget v2, p0, Lcom/android/phone/CallFeaturesSetting;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 2475
    .local v1, "request":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2476
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2479
    const-string v2, "QOEMHOOK"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2481
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2483
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2484
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2486
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1, p3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2487
    return-void
.end method

.method private setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 1307
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1312
    return-void
.end method

.method private setVolteState(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2423
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolteState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2426
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 2434
    :goto_0
    const v3, 0x9001d

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->sendOemRilRequestRaw(IBLandroid/os/Message;)V

    .line 2436
    return-void

    :cond_1
    move v0, v2

    .line 2431
    goto :goto_0
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 1090
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    .line 1791
    sparse-switch p1, :sswitch_data_0

    .line 1813
    :goto_0
    return-void

    .line 1795
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1798
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1801
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1804
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1807
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1791
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 2732
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2733
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 2734
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2735
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2740
    :cond_0
    return-void

    .line 2733
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 858
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 860
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_8

    .line 862
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Needs to rollback. mVMChangeCompletedSuccessfully="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFwdChangesRequireRollback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 868
    :cond_2
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 869
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 871
    .local v9, "prevSettings":Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v9, :cond_3

    .line 873
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" becomes null, which is unexpected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 876
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMChangeCompletedSuccessfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFwdChangesRequireRollback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    .line 882
    iget-object v0, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 883
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 890
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_a

    if-eqz v9, :cond_a

    .line 891
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Requested to rollback Fwd changes."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v8, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 894
    .local v8, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_a

    .line 895
    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 897
    .local v11, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 898
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_a

    .line 899
    aget-object v6, v8, v7

    .line 900
    .local v6, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_5

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 905
    :cond_5
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 906
    .local v10, "result":Landroid/os/AsyncResult;
    if-eqz v10, :cond_6

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    .line 907
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 898
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    move v1, v12

    .line 908
    goto :goto_1

    .line 922
    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "prevSettings":Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_8
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "No need to revert"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 923
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    .line 926
    :cond_a
    return-void
.end method

.method private turnDualMicNoiseSuppressionOff()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 692
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "turnDualMicNoiseSuppressionOff"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 693
    :cond_0
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 695
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 702
    invoke-static {p0, v4}, Lcom/android/phone/SomcPhoneUtils;->setDualMicNoiseSuppression(Landroid/content/Context;Z)V

    .line 703
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 704
    return-void
.end method

.method private turnDualMicNoiseSuppressionOn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 676
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "turnDualMicNoiseSuppressionOn"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 677
    :cond_0
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 687
    invoke-static {p0, v4}, Lcom/android/phone/SomcPhoneUtils;->setDualMicNoiseSuppression(Landroid/content/Context;Z)V

    .line 688
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 689
    return-void
.end method

.method private updateEqualizerSummary(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2269
    const-string v0, "button_equalizer_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2270
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2271
    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 2272
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2273
    return-void
.end method

.method private updateNetworkRelatedSettings(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2868
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 2869
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 2870
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    move v2, v1

    .line 2871
    :goto_0
    if-ge v2, v5, :cond_2

    .line 2872
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 2873
    if-eq v6, v3, :cond_0

    .line 2874
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2871
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2874
    goto :goto_1

    .line 2877
    :cond_2
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2540
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2541
    packed-switch p1, :pswitch_data_0

    .line 2549
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2550
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2552
    :goto_0
    return-void

    .line 2546
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 2104
    if-nez p2, :cond_0

    .line 2155
    :goto_0
    return-void

    .line 2107
    :cond_0
    if-ne p1, v8, :cond_2

    .line 2110
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    move v6, v7

    .line 2131
    :goto_1
    const v0, 0x1040443

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2133
    if-nez v1, :cond_5

    .line 2134
    const v0, 0x1040441

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2150
    :goto_2
    if-eqz v6, :cond_1

    .line 2151
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b045a

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2112
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2115
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v6, v7

    .line 2118
    goto :goto_1

    .line 2120
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2125
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    move v6, v8

    goto :goto_1

    .line 2127
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move v6, v7

    goto :goto_1

    .line 2138
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2140
    if-eqz v1, :cond_7

    .line 2141
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2142
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2144
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2146
    :catch_0
    move-exception v1

    move-object v9, v0

    :goto_4
    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v0, v9

    goto :goto_3

    :cond_7
    move-object v0, v9

    goto :goto_2
.end method

.method private updateVMName()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1597
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVMName(). mSubMenuVoicemailNameInCallLog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1602
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    if-nez v2, :cond_1

    .line 1622
    :goto_0
    return-void

    .line 1605
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.voicemail_call_log_integration_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1608
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1609
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1616
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.voicemail_call_log_integration_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1618
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1620
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    iget-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMCallLogIntegrationEditable:Z

    if-eqz v5, :cond_3

    if-ne v2, v0, :cond_3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1612
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1620
    goto :goto_2
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2564
    .line 2565
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    .line 2571
    if-nez v0, :cond_4

    .line 2572
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v1, 0x7f0b0287

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2576
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2577
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2578
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 2580
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2603
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2605
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 2606
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2608
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_2

    .line 2609
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2611
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_3

    .line 2612
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2614
    :cond_3
    return-void

    .line 2582
    :cond_4
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_5

    .line 2583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2587
    :cond_5
    iget-object v1, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2588
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2589
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b03de

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2591
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2592
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2594
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2596
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 2598
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private updateVMReceivedNumberField()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1564
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVMReceivedNumberField(). mSubMenuVoicemailReceivedNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1568
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v2, :cond_1

    .line 1591
    :goto_0
    return-void

    .line 1572
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.voicemail_call_log_integration_number"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1575
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1576
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1577
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1585
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.voicemail_call_log_integration_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1587
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1589
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    iget-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMCallLogIntegrationEditable:Z

    if-eqz v5, :cond_3

    if-ne v2, v0, :cond_3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1579
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 1581
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1589
    goto :goto_2
.end method

.method private updateVoiceNumberField()V
    .locals 2

    .prologue
    .line 1543
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoiceNumberField(). mSubMenuVoicemailSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v0, :cond_1

    .line 1558
    :goto_0
    return-void

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1551
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1552
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1554
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1555
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1557
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1555
    :cond_3
    const v0, 0x7f0b03dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 941
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: requestCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", resultCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 948
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_11

    .line 952
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVMProviderSettingsForced: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 953
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 954
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 957
    if-eq p2, v5, :cond_5

    .line 958
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 995
    :cond_2
    :goto_0
    if-eqz v0, :cond_e

    .line 996
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Failure in return from voicemail provider"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 997
    :cond_3
    if-eqz v2, :cond_d

    .line 998
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1047
    :cond_4
    :goto_1
    return-void

    .line 961
    :cond_5
    if-nez p3, :cond_6

    .line 962
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    .line 963
    const-string v1, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :cond_6
    const-string v3, "com.android.phone.Signout"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 968
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_7

    const-string v0, "Provider requested signout"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 969
    :cond_7
    if-eqz v2, :cond_9

    .line 970
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_8

    .line 971
    const-string v0, "Going back to previous provider on signout"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 973
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 975
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .line 976
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_a

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relaunching activity and ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 979
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 982
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 986
    :cond_b
    const-string v3, "com.android.phone.VoicemailNumber"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 987
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_19

    .line 988
    :cond_c
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    .line 989
    const-string v1, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1000
    :cond_d
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    .line 1001
    const-string v0, "Not switching back the provider since this is not forced config"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1006
    :cond_e
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1007
    const-string v0, "com.android.phone.ForwardingNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    const-string v0, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1013
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: vm provider cfg result "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_10

    const-string v0, "has"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " forwarding number"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1015
    :cond_f
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    .line 1013
    :cond_10
    const-string v0, " does not have"

    goto :goto_2

    .line 1020
    :cond_11
    if-ne p1, v0, :cond_18

    .line 1021
    if-eq p2, v5, :cond_12

    .line 1022
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1025
    :cond_12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1030
    if-eqz v1, :cond_13

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1031
    :cond_13
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_14

    .line 1032
    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    :cond_14
    if-eqz v1, :cond_4

    .line 1039
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1036
    :cond_15
    :try_start_1
    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1038
    if-eqz v1, :cond_16

    .line 1039
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1042
    :cond_16
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1038
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_17

    .line 1039
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1038
    :cond_17
    throw v0

    .line 1046
    :cond_18
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    :cond_19
    move v0, v1

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/16 v1, 0x1f6

    .line 1744
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1745
    packed-switch p2, :pswitch_data_0

    .line 1784
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1787
    :cond_1
    :goto_1
    return-void

    .line 1747
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Neutral button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1750
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Negative button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1751
    :cond_2
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1754
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1758
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Positive button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1759
    :cond_3
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_4

    .line 1762
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1763
    :cond_4
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_1

    .line 1765
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_6

    .line 1766
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1767
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1769
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1770
    const-string v1, "am_launch_dialog_disabled_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1771
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1773
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->launchAmSettings()V

    goto :goto_1

    .line 1775
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1745
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1821
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1822
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(). Intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1824
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1827
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->doesDualMicNoiseSuppressionExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1828
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mShowDualMicNoiseSuppression:Z

    .line 1831
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1833
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 1835
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1838
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1839
    const-string v0, "button_voicemail_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1840
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_2

    .line 1841
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1842
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1843
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f0b0370

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1846
    :cond_2
    const-string v0, "button_ringtone_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;

    .line 1847
    const-string v0, "button_vibrate_on_ring"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 1848
    const-string v0, "button_increasing_ringtone"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    .line 1849
    const-string v0, "button_play_dtmf_tone"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 1850
    const-string v0, "button_dtmf_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1851
    const-string v0, "button_auto_retry_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1852
    const-string v0, "button_hac_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1853
    const-string v0, "button_tty_mode_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1855
    const-string v0, "button_voicemail_provider_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1857
    const-string v0, "button_enhanced_call_features_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1859
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1860
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sonymobile.imscp.settings"

    const-string v7, "com.sonymobile.imscp.settings.SettingsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1861
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1862
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1865
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 1866
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1867
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1868
    const-string v0, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    .line 1870
    const-string v0, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    .line 1872
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    .line 1875
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f08003a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1878
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f08003b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMCallLogIntegrationEditable:Z

    .line 1882
    const-string v0, "button_vm_received_number"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1884
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    .line 1885
    if-eqz v4, :cond_19

    .line 1886
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1887
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1888
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 1889
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVMReceivedNumberField()V

    .line 1897
    :cond_5
    :goto_0
    const-string v0, "button_vm_show_in_call_log"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    .line 1899
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    .line 1900
    if-eqz v4, :cond_1b

    .line 1901
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1902
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "somc.voicemail_call_log_integration_enabled"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1904
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_1a

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1905
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 1906
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1908
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1915
    :cond_6
    :goto_2
    const-string v0, "button_vm_name_in_call_log"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    .line 1917
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_7

    .line 1918
    if-eqz v4, :cond_1c

    .line 1919
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1920
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 1921
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVMName()V

    .line 1928
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080034

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1929
    const-string v0, "button_answering_machine"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAnsweringMachineSettings:Landroid/preference/PreferenceScreen;

    .line 1936
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 1937
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1938
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1939
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1946
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 1947
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "increasing_ringtone"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1951
    :cond_9
    const-string v0, "button_volte"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    .line 1952
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 1953
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080039

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1954
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    invoke-direct {v0, p0, v8}, Lcom/android/phone/CallFeaturesSetting$VolteHandler;-><init>(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    .line 1955
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1956
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->queryVoLTEState()V

    .line 1963
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 1964
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dtmf_tone"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1968
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_c

    .line 1969
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1970
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1977
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    .line 1978
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080007

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1979
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1986
    :cond_d
    :goto_a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_e

    .line 1987
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1989
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1996
    :cond_e
    :goto_b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_f

    .line 1997
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1998
    if-eqz v0, :cond_25

    .line 1999
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2006
    :cond_f
    :goto_c
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2007
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2008
    if-eqz v0, :cond_10

    .line 2009
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2010
    :cond_10
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2011
    if-eqz v0, :cond_11

    .line 2012
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2014
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2015
    const/4 v4, 0x2

    if-ne v0, v4, :cond_26

    .line 2016
    const-string v0, "button_fdn_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2017
    if-eqz v0, :cond_12

    .line 2018
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2019
    :cond_12
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2020
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2035
    :cond_13
    :goto_d
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 2036
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2043
    if-nez p1, :cond_15

    .line 2044
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_15

    .line 2046
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_14

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ADD_VOICEMAIL Intent is thrown. current VM data size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2050
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_28

    .line 2051
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 2058
    :cond_15
    :goto_e
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 2059
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 2061
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mShowDualMicNoiseSuppression:Z

    if-eqz v0, :cond_16

    .line 2062
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createDualMicNoiseSuppressionSettings()V

    .line 2065
    :cond_16
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2066
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createEqualizerSettings()V

    .line 2067
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSpeakerVoiceEnhancementSettings()V

    .line 2068
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSlowTalkSettings()V

    .line 2071
    :cond_17
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSipCallSettings()V

    .line 2073
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 2088
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2089
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2091
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2092
    if-eqz v0, :cond_18

    .line 2094
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2096
    :cond_18
    return-void

    .line 1892
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_1a
    move v0, v2

    .line 1904
    goto/16 :goto_1

    .line 1911
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 1924
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 1932
    :cond_1d
    const-string v0, "button_answering_machine"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1933
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 1941
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1942
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_5

    :cond_1f
    move v0, v2

    .line 1947
    goto/16 :goto_6

    .line 1958
    :cond_20
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1959
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_7

    :cond_21
    move v0, v2

    .line 1964
    goto/16 :goto_8

    .line 1972
    :cond_22
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1973
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_9

    .line 1981
    :cond_23
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1982
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_a

    .line 1991
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1992
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_b

    .line 2001
    :cond_25
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2002
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_c

    .line 2022
    :cond_26
    if-ne v0, v1, :cond_27

    .line 2023
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2024
    const-string v0, "button_cb_expand_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2025
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2027
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 2030
    :cond_27
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

    .line 2053
    :cond_28
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2054
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v0, 0x7f0b024d

    const/16 v5, 0x25b

    const/16 v2, 0x259

    const/4 v4, 0x0

    const v3, 0x7f0b027d

    .line 1642
    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x190

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    .line 1646
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1649
    const v1, 0x7f0b0275

    .line 1650
    sparse-switch p1, :sswitch_data_0

    .line 1681
    const v0, 0x7f0b027a

    .line 1684
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1688
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1689
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1690
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1691
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1692
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1695
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1736
    :goto_1
    return-object v0

    .line 1652
    :sswitch_0
    const v1, 0x7f0b0282

    .line 1655
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1660
    :sswitch_1
    const v1, 0x7f0b0286

    .line 1663
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1666
    :sswitch_2
    const v0, 0x7f0b0283

    .line 1668
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1669
    goto :goto_0

    .line 1671
    :sswitch_3
    const v0, 0x7f0b0284

    .line 1673
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1674
    goto :goto_0

    .line 1676
    :sswitch_4
    const v0, 0x7f0b0285

    .line 1677
    const v3, 0x7f0b03d7

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1678
    const v3, 0x7f0b03d8

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1679
    goto :goto_0

    .line 1698
    :cond_1
    if-eq p1, v2, :cond_2

    const/16 v0, 0x25a

    if-eq p1, v0, :cond_2

    if-ne p1, v5, :cond_5

    .line 1700
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1701
    const v0, 0x7f0b0274

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1702
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1703
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1704
    if-ne p1, v2, :cond_3

    const v0, 0x7f0b0277

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1708
    goto :goto_1

    .line 1704
    :cond_3
    if-ne p1, v5, :cond_4

    const v0, 0x7f0b0278

    goto :goto_2

    :cond_4
    const v0, 0x7f0b0276

    goto :goto_2

    .line 1709
    :cond_5
    const/16 v0, 0x384

    if-ne p1, v0, :cond_7

    .line 1711
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    .line 1713
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->hasGreeting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1714
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1720
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1721
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1722
    const v0, 0x7f0b00a0

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1723
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1724
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x1090028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1726
    const v0, 0x1020285

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    .line 1728
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    const v3, 0x7f0b0090

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1729
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1730
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    move-object v0, v1

    .line 1732
    goto/16 :goto_1

    .line 1717
    :cond_6
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1736
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1650
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2882
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 2883
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 793
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 795
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    .line 810
    :cond_1
    :goto_0
    return-void

    .line 799
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_3

    .line 800
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_0

    .line 801
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "phoneNumber":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 804
    const-string v0, ""

    .line 806
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.voicemail_call_log_integration_number"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 808
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVMReceivedNumberField()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 819
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_2

    .line 822
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "updating default for voicemail dialog"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 840
    :cond_1
    :goto_0
    return-object v0

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailReceivedNumber:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_3

    .line 827
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVMReceivedNumberField()V

    goto :goto_0

    .line 831
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 839
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "updating default for call forwarding dialogs"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 840
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b024e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 2887
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2888
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2889
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2890
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2891
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2892
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2893
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2894
    const/4 v0, 0x1

    .line 2896
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 561
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 563
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 724
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    .line 729
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 730
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 788
    :cond_2
    :goto_0
    return v1

    .line 732
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_5

    .line 733
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 734
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "increasing_ringtone"

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 736
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 737
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 738
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 740
    :cond_6
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 741
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 742
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_c

    .line 743
    check-cast p2, Ljava/lang/String;

    .line 744
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_8

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voicemail Provider changes from \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 749
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 750
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "No change is made toward VM provider setting."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 755
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 764
    if-nez v0, :cond_a

    .line 766
    const-string v0, "CallFeaturesSetting"

    const-string v2, "Saved preferences not found - invoking config"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 768
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 770
    :cond_a
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_b

    const-string v2, "Saved preferences found - switching to them"

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 772
    :cond_b
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 773
    invoke-direct {p0, p2, v0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_0

    .line 775
    :cond_c
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_d

    .line 776
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 777
    :cond_d
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailShowInCallLog:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_f

    .line 778
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.voicemail_call_log_integration_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 780
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVMName()V

    .line 781
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVMReceivedNumberField()V

    goto/16 :goto_0

    .line 782
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailNameInCallLog:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_2

    .line 783
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "somc.voicemail_call_log_integration_name"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 785
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVMName()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v7, 0x384

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 580
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 581
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "increasing_ringtone"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v5

    :cond_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    :cond_1
    :goto_0
    return v5

    .line 584
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v6, :cond_1

    .line 586
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 587
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->setVolteState(Z)V

    :cond_3
    :goto_1
    move v5, v4

    .line 672
    goto :goto_0

    .line 588
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 589
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dtmf_tone"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_2

    .line 591
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eq p2, v6, :cond_1

    .line 593
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v6, :cond_1

    .line 595
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_8

    .line 596
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_auto_retry"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 600
    :cond_8
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_c

    .line 601
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    move v1, v5

    .line 603
    .local v1, "hac":I
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_aid"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HACSetting="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_a

    const-string v6, "ON"

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 609
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sonyericsson.telephony.intent.action.HAC_ENABLED_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v2, "hacModeChanged":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 611
    const-string v4, "hacEnabled"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    :goto_5
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1    # "hac":I
    .end local v2    # "hacModeChanged":Landroid/content/Intent;
    :cond_9
    move v1, v4

    .line 601
    goto :goto_3

    .line 607
    .restart local v1    # "hac":I
    :cond_a
    const-string v6, "OFF"

    goto :goto_4

    .line 613
    .restart local v2    # "hacModeChanged":Landroid/content/Intent;
    :cond_b
    const-string v6, "hacEnabled"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 618
    .end local v1    # "hac":I
    .end local v2    # "hacModeChanged":Landroid/content/Intent;
    :cond_c
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_11

    .line 619
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_d

    .line 620
    const-string v6, "onPreferenceTreeClick: Voicemail Settings Preference is clicked."

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 622
    :cond_d
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 623
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_e

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick: Invoking cfg intent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 629
    :cond_e
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 632
    :cond_f
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_10

    .line 633
    const-string v5, "onPreferenceTreeClick: No Intent is available. Use default behavior defined in xml."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 639
    :cond_10
    const-string v5, ""

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 640
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    move v5, v4

    .line 643
    goto/16 :goto_0

    .line 645
    :cond_11
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_14

    .line 646
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_12

    .line 647
    const-string v4, "onPreferenceTreeClick: preference == mDualMicNoiseSuppressionCheckbox"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 649
    :cond_12
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 650
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->turnDualMicNoiseSuppressionOn()V

    goto/16 :goto_0

    .line 653
    :cond_13
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->turnDualMicNoiseSuppressionOff()V

    goto/16 :goto_0

    .line 656
    :cond_14
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mAnsweringMachineSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_3

    .line 657
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_15

    .line 658
    const-string v6, "onPreferenceTreeClick: preference == mAnsweringMachineSettings"

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 660
    :cond_15
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 662
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "am_launch_dialog_disabled_key"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 663
    .local v0, "dialogDisabled":Z
    if-eqz v0, :cond_16

    .line 664
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->launchAmSettings()V

    goto/16 :goto_0

    .line 666
    :cond_16
    invoke-virtual {p0, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 667
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1635
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1636
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 1637
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2310
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2311
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 2313
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateNetworkRelatedSettings(Z)V

    .line 2370
    :goto_0
    return-void

    .line 2318
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 2319
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2322
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 2323
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->getIncreasingRingtone(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2326
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 2327
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2329
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2332
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 2333
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_auto_retry"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2335
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2338
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 2339
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2340
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    :goto_2
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2343
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_6

    .line 2344
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2347
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2348
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2351
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2353
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2354
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2359
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 2360
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isDualMicNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2363
    :cond_8
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2364
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initEqualizerValue()V

    .line 2365
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initSpeakerVoiceEnhancementValue()V

    .line 2366
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initSlowTalkValue()V

    .line 2369
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->lookupRingtoneName()V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 2335
    goto :goto_1

    :cond_b
    move v1, v2

    .line 2340
    goto :goto_2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 847
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 849
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 854
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
