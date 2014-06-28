.class public Lcom/android/settings/MultiSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final MAX_SUBSCRIPTIONS:I

.field private entries:[Ljava/lang/CharSequence;

.field private entriesPrompt:[Ljava/lang/CharSequence;

.field private entryValues:[Ljava/lang/CharSequence;

.field private entryValuesPrompt:[Ljava/lang/CharSequence;

.field private mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

.field private mConfigSub:Landroid/preference/PreferenceScreen;

.field private mData:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIccCardCount:I

.field mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsForeground:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrioritySub:Landroid/preference/ListPreference;

.field private mPrioritySubValue:I

.field private mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

.field private mSms:Landroid/preference/ListPreference;

.field mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

.field private mTuneAway:Landroid/preference/CheckBoxPreference;

.field private mTuneAwayValue:Z

.field private mVoice:Landroid/preference/ListPreference;

.field private mVoiceSub:I

.field private summaries:[Ljava/lang/CharSequence;

.field private summariesPrompt:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    iput-boolean v2, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 96
    sget v0, Lcom/codeaurora/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    iput v0, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    .line 110
    iput-boolean v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z

    .line 112
    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I

    .line 114
    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    .line 115
    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 123
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 124
    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    .line 125
    invoke-static {}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    .line 541
    new-instance v0, Lcom/android/settings/MultiSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MultiSimSettings$1;-><init>(Lcom/android/settings/MultiSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/MultiSimSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/MultiSimSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/MultiSimSettings;->updatePrioritySub(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updatePrioritySubState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/MultiSimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MultiSimSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/MultiSimSettings;->updateVoiceSub(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MultiSimSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/MultiSimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/MultiSimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateTuneAwayStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateTuneAwayState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/MultiSimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiSimSettings;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z

    return v0
.end method

.method private disableMsimMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 654
    const-string v0, "MultiSimSettings"

    const-string v1, "disableMsimMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 658
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 663
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 667
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 668
    return-void
.end method

.method private registerForAirplaneMode()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 672
    return-void
.end method

.method private unregisterForAirplaneMode()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 676
    return-void
.end method

.method private updateDataSummary()V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    .line 351
    .local v0, "dataSub":I
    const-string v1, "MultiSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataSummary: Data Subscription : = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    return-void
.end method

.method private updatePrioritySub(I)V
    .locals 4
    .param p1, "priorityIndex"    # I

    .prologue
    .line 528
    const-string v1, "MultiSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePrioritySub change priority sub to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, "setPrioritySubMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->setPrioritySub(ILandroid/os/Message;)V

    .line 532
    return-void
.end method

.method private updatePrioritySubState()V
    .locals 4

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 302
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_priority"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "priorityValue":I
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iput v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "priorityValue":I
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MultiSimSettings"

    const-string v3, "Settings Exception Reading Dual Sim Priority Subscription Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSmsSummary()V
    .locals 7

    .prologue
    .line 357
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getSMSSubscription()I

    move-result v2

    .line 358
    .local v2, "smsSub":I
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->isSMSPromptEnabled()Z

    move-result v1

    .line 359
    .local v1, "promptEnabled":Z
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 361
    .local v0, "count":I
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSmsSummary: SmsSub =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " promptEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number of active SUBs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v1, :cond_0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 366
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prompt is enabled: setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "sub":Ljava/lang/String;
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateVoiceSummary()V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V

    .line 324
    return-void
.end method

.method private updateTuneAwayState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tune_away"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 291
    .local v1, "tuneAwayStatus":Z
    :goto_0
    if-eqz v1, :cond_1

    const v0, 0x7f0b0822

    .line 293
    .local v0, "resId":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    return-void

    .end local v0    # "resId":I
    .end local v1    # "tuneAwayStatus":Z
    :cond_0
    move v1, v2

    .line 289
    goto :goto_0

    .line 291
    .restart local v1    # "tuneAwayStatus":Z
    :cond_1
    const v0, 0x7f0b0823

    goto :goto_1
.end method

.method private updateTuneAwayStatus()V
    .locals 5

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 521
    .local v1, "tuneAwayValue":Z
    iput-boolean v1, p0, Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z

    .line 522
    const-string v2, "MultiSimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateTuneAwayStatus change tuneAwayValue to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, "setTuneAwayMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/Phone;->setTuneAway(ZLandroid/os/Message;)V

    .line 525
    return-void
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, "isCardAbsentOrError":Z
    iput v5, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v2, v0}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v1

    .line 211
    if-nez v1, :cond_0

    .line 212
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const-string v2, "MultiSimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIccCardCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-nez v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 220
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0803

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->disableMsimMenu()V

    .line 235
    :goto_1
    return-void

    .line 222
    :cond_2
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-ne v2, v6, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->disableMsimMenu()V

    goto :goto_1

    .line 225
    :cond_3
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-le v2, v6, :cond_4

    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-gt v2, v3, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForVoice()V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForData()V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForSms()V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateState()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateTuneAwayState()V

    .line 231
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updatePrioritySubState()V

    goto :goto_1

    .line 233
    :cond_4
    const-string v2, "MultiSimSettings"

    const-string v3, "Invalid card count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateVoiceSub(I)V
    .locals 4
    .param p1, "subIndex"    # I

    .prologue
    .line 535
    const-string v1, "MultiSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceSub change voice sub to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, "setVoiceSubMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->setDefaultVoiceSub(ILandroid/os/Message;)V

    .line 539
    return-void
.end method

.method private updateVoiceSummary()V
    .locals 7

    .prologue
    .line 327
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v3

    .line 328
    .local v3, "voiceSub":I
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->isPromptEnabled()Z

    move-result v1

    .line 329
    .local v1, "promptEnabled":Z
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 331
    .local v0, "count":I
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVoiceSummary: voiceSub =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " promptEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number of active SUBs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v1, :cond_0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 337
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prompt is enabled: setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "sub":Ljava/lang/String;
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method displayAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-nez v0, :cond_0

    .line 507
    const-string v0, "MultiSimSettings"

    const-string v1, "The activitiy is not in foreground. Do not display dialog!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void

    .line 510
    :cond_0
    const-string v0, "MultiSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayErrorDialog!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 494
    const-string v0, "MultiSimSettings"

    const-string v1, "onClick!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget v0, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 503
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v3, 0x7f05001c

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 134
    const-string v3, "voice"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    .line 135
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const-string v3, "data"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    .line 137
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    const-string v3, "sms"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    .line 139
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v3, "config_sub"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    .line 141
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CONFIG_SUB"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const-string v3, "tune_away"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    .line 143
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const-string v3, "priority_subscription"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    .line 145
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 148
    const/4 v1, 0x0

    .local v1, "subId":I
    :goto_0
    sget v3, Lcom/codeaurora/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    .line 161
    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    .line 162
    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    .line 163
    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    .line 164
    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    .line 165
    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 167
    .local v2, "subString":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 168
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ge v0, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v2, v0

    aput-object v4, v3, v0

    .line 170
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v4, v2, v0

    aput-object v4, v3, v0

    .line 171
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    aget-object v4, v2, v0

    aput-object v4, v3, v0

    .line 172
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    aget-object v4, v2, v0

    aput-object v4, v3, v0

    .line 173
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 174
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 177
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0814

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 178
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0815

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 180
    new-instance v3, Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/settings/MultiSimSettings;Lcom/android/settings/MultiSimSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    .line 181
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 466
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 467
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 469
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b080d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 470
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 471
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 475
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 489
    const-string v0, "MultiSimSettings"

    const-string v1, "onDismiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 317
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->unregisterForAirplaneMode()V

    .line 318
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 378
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "key":Ljava/lang/String;
    const-string v7, "MultiSimSettings"

    const-string v10, "onPreferenceChange:::: "

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v7, "voice"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 384
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    .line 385
    iget v7, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    iget v10, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ne v7, v10, :cond_6

    .line 388
    invoke-static {v9}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 389
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prompt is enabled "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    :goto_0
    const-string v7, "data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p2

    .line 407
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 408
    .local v0, "dataSub":I
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDataSubscription "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-boolean v7, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-eqz v7, :cond_1

    .line 410
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Landroid/app/Activity;->showDialog(I)V

    .line 412
    :cond_1
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v2

    .line 413
    .local v2, "mSubscriptionManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 414
    .local v4, "setDdsMsg":Landroid/os/Message;
    invoke-virtual {v2, v0, v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 417
    .end local v0    # "dataSub":I
    .end local v2    # "mSubscriptionManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    .end local v4    # "setDdsMsg":Landroid/os/Message;
    :cond_2
    const-string v7, "sms"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 418
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 419
    .local v5, "smsSub":I
    iget v7, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ne v5, v7, :cond_8

    .line 422
    invoke-static {v9}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSPromptEnabled(Z)V

    .line 423
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prompt is enabled "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_1
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    .end local v5    # "smsSub":I
    :cond_3
    const-string v7, "tune_away"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 441
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    :cond_4
    const-string v7, "priority_subscription"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 445
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 446
    .local v3, "prioritySubIndex":I
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v7, v3}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v7

    iget-object v7, v7, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_a

    .line 448
    iput v3, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I

    .line 449
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3    # "prioritySubIndex":I
    :cond_5
    move v7, v9

    .line 460
    :goto_2
    return v7

    .line 391
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v10, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v7, v10}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v7

    iget-object v7, v7, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_7

    .line 393
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setVoiceSubscription "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {v8}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 395
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    iget v12, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 398
    :cond_7
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0812

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, "status":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 400
    const-string v7, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVoiceSubscription: sub="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed due to sub not activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 402
    goto :goto_2

    .line 425
    .end local v6    # "status":Ljava/lang/String;
    .restart local v5    # "smsSub":I
    :cond_8
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v7, v5}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v7

    iget-object v7, v7, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_9

    .line 427
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSMSSubscription "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {v8}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSPromptEnabled(Z)V

    .line 429
    invoke-static {v5}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 430
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 432
    :cond_9
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0811

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 433
    .restart local v6    # "status":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 434
    const-string v7, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSMSSub: sub="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed due to sub not activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 435
    goto/16 :goto_2

    .line 452
    .end local v5    # "smsSub":I
    .end local v6    # "status":Ljava/lang/String;
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v3    # "prioritySubIndex":I
    :cond_a
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0813

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 453
    .restart local v6    # "status":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 454
    const-string v7, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPrioritySub: sub="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed due to sub not activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 456
    goto/16 :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 480
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 483
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 187
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->registerForAirplaneMode()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateUi()V

    .line 189
    return-void
.end method

.method protected updateMultiSimEntriesForData()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method protected updateMultiSimEntriesForSms()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 268
    .local v0, "count":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateMultiSimEntriesForVoice()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 279
    .local v0, "count":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
