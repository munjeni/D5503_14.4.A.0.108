.class public Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimSubscriptionStatus.java"


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDataState:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mSigStrength:Landroid/preference/Preference;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSub:I

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 113
    iput v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    .line 114
    iput v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    .line 119
    new-instance v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 267
    new-instance v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)V

    .line 279
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 261
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object p2, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method private updateServiceState()V
    .locals 5

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 311
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 324
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b00ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_1
    const-string v2, "operator_name"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .end local v1    # "state":I
    :cond_0
    return-void

    .line 313
    .restart local v1    # "state":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b00cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const-string v6, "phone_msim"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/MSimTelephonyManager;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 144
    const v6, 0x7f050012

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "subscription"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    .line 148
    const-string v6, "Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnCreate mSub ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 151
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x101

    invoke-virtual {v6, v7, v8}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 155
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    .line 156
    sget-object v6, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 157
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b00b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 160
    :cond_0
    iget v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 162
    const-string v6, "signal_strength"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    .line 164
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    sget-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    .line 166
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1
    const-string v6, "ro.config.multimode_cdma"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 172
    :cond_2
    const-string v6, "prl_version"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 181
    const-string v6, "esn_number"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v6, "meid_number"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v6, "min_number"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 185
    const-string v6, "min_number"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const v7, 0x7f0b03c6

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 188
    :cond_3
    const-string v6, "imei_sv"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 190
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 192
    const-string v6, "icc_id"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v6, "imei"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_2
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "rawNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 215
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 216
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    :cond_4
    const-string v6, "number"

    invoke-direct {p0, v6, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v5    # "rawNumber":Ljava/lang/String;
    :cond_5
    return-void

    .line 175
    :cond_6
    const-string v6, "prl_version"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :cond_7
    const-string v6, "imei"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 198
    const-string v6, "icc_id"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 201
    :cond_8
    const-string v6, "imei"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v6, "imei_sv"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v6, "esn_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 208
    const-string v6, "meid_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 209
    const-string v6, "min_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 210
    const-string v6, "icc_id"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 249
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x101

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 233
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    .line 234
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSub:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 243
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 343
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_4

    .line 344
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 345
    .local v3, "state":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 347
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 349
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 353
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 355
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 356
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 358
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b00d6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b00d7

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    .end local v3    # "state":I
    :cond_4
    return-void
.end method
