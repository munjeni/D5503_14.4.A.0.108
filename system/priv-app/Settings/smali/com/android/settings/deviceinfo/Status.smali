.class public Lcom/android/settings/deviceinfo/Status;
.super Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mPlmnInfoReciever:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ims_reg_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPlmnInfoReciever:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 245
    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 670
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 671
    .local v2, "s":I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 672
    .local v1, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 674
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDeviceIdid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    const-string v2, "ro.boot.idid"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "idid":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getIdidCheckDigit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "checkDigit":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getIdidCheckDigit(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "idid"    # Ljava/lang/String;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_1

    .line 285
    :cond_0
    const-string v0, ""

    .line 298
    .local v0, "checkDigit":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 287
    .end local v0    # "checkDigit":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 288
    .local v3, "sum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 289
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 290
    .local v1, "digit":I
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_2

    .line 291
    mul-int/lit8 v1, v1, 0x2

    .line 293
    :cond_2
    div-int/lit8 v4, v1, 0xa

    rem-int/lit8 v5, v1, 0xa

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    .end local v1    # "digit":I
    :cond_3
    rem-int/lit8 v3, v3, 0xa

    .line 296
    if-nez v3, :cond_4

    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "checkDigit":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "checkDigit":Ljava/lang/String;
    :cond_4
    rsub-int/lit8 v4, v3, 0xa

    goto :goto_2
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_0

    .line 495
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 488
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 493
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 662
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 663
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 456
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 637
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 638
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 640
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 648
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 644
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 645
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b03d4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setImsRegistrationState()V
    .locals 6

    .prologue
    .line 678
    const-string v3, "ims_reg_state"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 679
    .local v1, "ps":Landroid/preference/Preference;
    const/4 v2, 0x1

    .line 681
    .local v2, "regstate":I
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getImsRegistrationState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 686
    :goto_0
    if-nez v2, :cond_0

    const v3, 0x7f0b009c

    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 688
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Status"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException when getImsRegistrationState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const v3, 0x7f0b009d

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 627
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 628
    .local v1, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_0
    const v2, 0x7f0b03d4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 480
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 616
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 617
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 619
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 621
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 622
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 624
    return-void

    .line 621
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0b03d4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 601
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 602
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 604
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 605
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 606
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 607
    .local v3, "ps":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 614
    .end local v3    # "ps":Landroid/preference/Preference;
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 610
    .local v5, "wimaxMacAddressPref":Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0b03d4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 521
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 522
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 539
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void

    .line 526
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    goto :goto_0

    .line 529
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    goto :goto_0

    .line 532
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    goto :goto_0

    .line 535
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "networktype":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gsm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "edge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gprs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    :cond_1
    const-string v0, "\u200f2G"

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "lte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    const-string v0, "\u200f4G"

    .line 517
    :cond_3
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 544
    .local v3, "voiceState":I
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "voiceDisplay":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 547
    .local v1, "dataState":I
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 558
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b00ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b00cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 303
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    new-instance v8, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v8, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 307
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 309
    const v8, 0x7f050011

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 310
    const-string v8, "battery_level"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 311
    const-string v8, "battery_status"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 313
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 314
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b00b3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 315
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_0

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 319
    :cond_0
    const-string v8, "signal_strength"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 320
    const-string v8, "up_time"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 322
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 323
    :cond_1
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 324
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->getDeviceIdid()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "deviceIdid":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xf

    if-ne v8, v9, :cond_3

    .line 329
    const-string v8, "idid"

    invoke-direct {p0, v8, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "deviceIdid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 395
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 397
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 399
    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 400
    .local v7, "serial":Ljava/lang/String;
    if-eqz v7, :cond_b

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 401
    const-string v8, "serial_number"

    invoke-direct {p0, v8, v7}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_2
    return-void

    .line 333
    .end local v7    # "serial":Ljava/lang/String;
    :cond_4
    const-string v8, "idid"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 336
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDMA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 337
    const-string v8, "meid_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v8, "min_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 340
    const-string v8, "min_number"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const v9, 0x7f0b03c6

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 342
    :cond_5
    const-string v8, "prl_version"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v8, "imei_sv"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 345
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    if-ne v8, v10, :cond_9

    .line 347
    const-string v8, "icc_id"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v8, "imei"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "rawNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 377
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 378
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    :cond_7
    const-string v8, "number"

    invoke-direct {p0, v8, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v8, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 384
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 385
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v9, 0x12c

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 387
    iget-boolean v8, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-nez v8, :cond_8

    .line 388
    const-string v8, "latest_area_info"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 391
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setImsRegistrationState()V

    goto/16 :goto_1

    .line 352
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v6    # "rawNumber":Ljava/lang/String;
    :cond_9
    const-string v8, "imei"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 353
    const-string v8, "icc_id"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3

    .line 356
    :cond_a
    const-string v8, "imei"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v9, "imei_sv"

    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v9, v8}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v8, "prl_version"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 365
    const-string v8, "meid_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 366
    const-string v8, "min_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 367
    const-string v8, "icc_id"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 370
    const-string v8, "br"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 371
    iput-boolean v10, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    goto/16 :goto_3

    .line 403
    .restart local v7    # "serial":Ljava/lang/String;
    :cond_b
    const-string v8, "serial_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->onPause()V

    .line 438
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 440
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPlmnInfoReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 409
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->onResume()V

    .line 411
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 413
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPlmnInfoReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    .line 417
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 419
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 421
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 430
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 201
    const v4, 0x7f0b0078

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "networkNameSeparator":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v3, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 205
    .local v2, "something":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 206
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/4 v2, 0x1

    .line 209
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 210
    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/4 v2, 0x1

    .line 216
    :cond_2
    if-eqz v2, :cond_3

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "networkName":Ljava/lang/String;
    :goto_0
    const-string v4, "operator_name"

    invoke-direct {p0, v4, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 219
    .end local v0    # "networkName":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104031a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "networkName":Ljava/lang/String;
    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 575
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 576
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 578
    .local v3, "state":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 580
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 582
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 587
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 589
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 591
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 593
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

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

    .line 598
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    .end local v3    # "state":I
    :cond_4
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 652
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 654
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 655
    const-wide/16 v2, 0x1

    .line 658
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 659
    return-void
.end method
