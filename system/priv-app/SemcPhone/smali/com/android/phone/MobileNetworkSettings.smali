.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$1;,
        Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;,
        Lcom/android/phone/MobileNetworkSettings$MyHandler;,
        Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;,
        Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    }
.end annotation


# static fields
.field private static final sButtonResArray:[Lcom/android/phone/MobileNetworkSettings$ButtonRes;


# instance fields
.field private mAllPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonExtendedDataRoam:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

.field private mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mDisableChargePopups:Z

.field private mDisableNetworkSearchWhenDataIsOn:Z

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private final mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mWaitingAlertType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f08001b

    const/4 v4, 0x0

    .line 154
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v2, "preferred_network_mode_key"

    const v3, 0x7f080017

    invoke-direct {v1, v2, v3}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "national_data_roaming_key"

    invoke-direct {v2, v3, v5}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_roaming_key"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;IZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_prefer_2g_key"

    const v4, 0x7f080018

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_use_3g_only_key"

    const v4, 0x7f080019

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_carrier_sel_key"

    const v4, 0x7f08001d

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_askatpoweron_key"

    const v4, 0x7f080029

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_apn_key"

    const v4, 0x7f08000f

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MobileNetworkSettings;->sButtonResArray:[Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 115
    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 116
    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 943
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 3
    .param p1, "NetworkMode"    # I

    .prologue
    const v2, 0x7f0b00c4

    .line 827
    packed-switch p1, :pswitch_data_0

    .line 890
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 893
    :goto_0
    return-void

    .line 829
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 833
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 837
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 841
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 845
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 852
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 847
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b02a0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 858
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 862
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 866
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 870
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 874
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b02a7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 878
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b02a8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 882
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 886
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_d
    .end packed-switch

    .line 845
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateNetworkOperatorsPreference()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/MobileNetworkSettings$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    return v0
.end method

.method private addPreference(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 974
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    move-result-object v0

    .line 975
    .local v0, "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-nez v2, :cond_1

    .line 976
    iget-object v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 977
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPreferences()V
    .locals 9

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 564
    .local v5, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 565
    .local v2, "numberOfPrefs":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfPrefs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 566
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 567
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 568
    .local v3, "p":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->getButtonRes(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    move-result-object v0

    .line 569
    .local v0, "buttonRes":Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 570
    :cond_1
    iget-boolean v6, v0, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->shownByTrue:Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v0, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->resId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eq v6, v7, :cond_0

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "visibility customized to false, removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    move-result-object v4

    .line 574
    .local v4, "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    if-eqz v4, :cond_2

    .line 575
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    goto :goto_1

    .line 577
    :cond_2
    const-string v6, "NetworkSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPreferences: prefInfo:null, key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 581
    .end local v0    # "buttonRes":Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    .end local v3    # "p":Landroid/preference/Preference;
    .end local v4    # "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    :cond_3
    return-void
.end method

.method private getButtonRes(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 929
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->sButtonResArray:[Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    .local v0, "arr$":[Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 930
    .local v1, "buttonRes":Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    iget-object v4, v1, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->label:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 932
    .end local v1    # "buttonRes":Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    :goto_1
    return-object v1

    .line 929
    .restart local v1    # "buttonRes":Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    .end local v1    # "buttonRes":Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDefaultNetworkMode()I
    .locals 4

    .prologue
    .line 255
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "mode":I
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultNetworkMode: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v0
.end method

.method private getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    .line 459
    .local v1, "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-object v2, v1, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    .end local v1    # "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVisiblePreferencesNum()I
    .locals 4

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    .line 470
    .local v2, "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-boolean v3, v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    :cond_1
    return v0
.end method

.method private loadAllPreferences()V
    .locals 5

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 447
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 448
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 449
    .local v1, "p":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    invoke-direct {v4, v1}, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;-><init>(Landroid/preference/Preference;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 451
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 936
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 940
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void
.end method

.method private removePreference(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 962
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 963
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    move-result-object v0

    .line 964
    .local v0, "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-eqz v2, :cond_1

    .line 965
    iget-object v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 966
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been removed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restorePreferenceScreenVisiblePreferences()V
    .locals 5

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 480
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getVisiblePreferencesNum()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 481
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 482
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 483
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    .line 484
    .local v1, "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-boolean v3, v1, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-eqz v3, :cond_0

    .line 485
    iget-object v3, v1, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    .end local v1    # "prefInfo":Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    :cond_1
    return-void
.end method

.method private setValueForAskAtPowerOnSettings()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 588
    const-string v6, "true"

    .line 589
    .local v6, "askAtPowerOnString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sonyericsson.requestmonitor.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "setting"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 593
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 597
    :cond_0
    if-eqz v7, :cond_1

    .line 598
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 604
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 605
    .local v9, "numberOfPrefs":I
    move v8, v9

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    .line 606
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .line 607
    .local v10, "p":Landroid/preference/Preference;
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eq v10, v0, :cond_2

    .line 608
    invoke-virtual {v10}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 605
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 597
    .end local v8    # "i":I
    .end local v9    # "numberOfPrefs":I
    .end local v10    # "p":Landroid/preference/Preference;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 598
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_3
    throw v0

    .line 611
    .restart local v8    # "i":I
    .restart local v9    # "numberOfPrefs":I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 612
    return-void
.end method

.method private showRoamingBlockedNotification()V
    .locals 8

    .prologue
    .line 168
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104063c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104063d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080864

    .line 174
    .local v0, "iconId":I
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v2

    .line 183
    .local v2, "notification":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 186
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 187
    return-void
.end method

.method private updateExtendedDataRoamModeSummary()V
    .locals 2

    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 694
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 695
    return-void
.end method

.method private updateNetworkOperatorsPreference()V
    .locals 4

    .prologue
    .line 987
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 988
    .local v1, "disableEfCspPlmnModeBit":Z
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 990
    .local v0, "carrierSelVisibility":Z
    if-nez v0, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1000
    const-string v2, "button_carrier_sel_key"

    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->addPreference(Ljava/lang/String;)V

    goto :goto_0

    .line 1001
    :cond_2
    if-nez v1, :cond_0

    .line 1002
    const-string v2, "button_carrier_sel_key"

    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferredNetworkModeItem()V
    .locals 13

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b019b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "preferredInfo":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 426
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 428
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v8, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v9, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "fields":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 433
    .local v2, "field":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 434
    .local v5, "index":I
    aget-object v11, v1, v5

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    aget-object v11, v10, v5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "field":Ljava/lang/String;
    .end local v5    # "index":I
    :cond_0
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 439
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 193
    iget v1, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 195
    :pswitch_0
    if-ne p2, v2, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 202
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDataRoamingDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Data roaming is disabled by policy"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showRoamingBlockedNotification()V

    .line 212
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 206
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 207
    iput-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    goto :goto_1

    .line 215
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    if-ne p2, v2, :cond_3

    .line 216
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->setNationalDataRoamingSetting(I)V

    .line 219
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 225
    :goto_2
    iput v3, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    goto :goto_0

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getNationalDataRoamingSetting()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :pswitch_2
    if-ne p2, v2, :cond_4

    .line 229
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->setNationalDataRoamingSetting(I)V

    .line 232
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 238
    :goto_3
    iput v3, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    goto/16 :goto_0

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getNationalDataRoamingSetting()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 349
    const v4, 0x7f05000c

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 350
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->loadAllPreferences()V

    .line 352
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 353
    new-instance v4, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 355
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    .line 359
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 361
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v4, "button_data_enabled_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 363
    const-string v4, "button_roaming_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 364
    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 367
    const-string v4, "button_use_3g_only_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    .line 368
    const-string v4, "button_prefer_2g_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    .line 371
    const-string v4, "national_data_roaming_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    .line 374
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 377
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getNationalDataRoamingSetting()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 383
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 389
    .local v3, "settingsNetworkMode":I
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updatePreferredNetworkModeItem()V

    .line 393
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    .line 395
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 397
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v4, :cond_0

    .line 400
    const-string v4, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    :cond_0
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    const v4, 0x7f050014

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 408
    const-string v4, "button_askatpoweron_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    .line 412
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 413
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 415
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 417
    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 899
    const v4, 0x1040014

    .line 901
    .local v4, "titleId":I
    packed-switch p1, :pswitch_data_0

    .line 913
    const/4 v1, 0x0

    .line 925
    :goto_0
    return-object v1

    .line 903
    :pswitch_0
    const v4, 0x7f0b00b6

    .line 904
    const v3, 0x7f0b02b0

    .line 916
    .local v3, "msgId":I
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 917
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 918
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 920
    const v5, 0x7f0b009e

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    const v5, 0x7f0b009f

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 922
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 923
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 907
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msgId":I
    :pswitch_1
    const v3, 0x7f0b00ba

    .line 908
    .restart local v3    # "msgId":I
    goto :goto_1

    .line 910
    .end local v3    # "msgId":I
    :pswitch_2
    const v3, 0x7f0b00bb

    .line 911
    .restart local v3    # "msgId":I
    goto :goto_1

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 500
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 501
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 507
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 246
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1008
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1009
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1022
    const/4 v0, 0x1

    .line 1024
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 494
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->restorePreferenceScreenVisiblePreferences()V

    .line 495
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 623
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 626
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 628
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 629
    .local v0, "buttonNetworkMode":I
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 632
    .local v2, "settingsNetworkMode":I
    if-eq v0, v2, :cond_0

    .line 635
    packed-switch v0, :pswitch_data_0

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network Mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") chosen. Ignore."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->loge(Ljava/lang/String;)V

    .line 687
    .end local v0    # "buttonNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_0
    :goto_0
    return v5

    .line 650
    .restart local v0    # "buttonNetworkMode":I
    .restart local v2    # "settingsNetworkMode":I
    :pswitch_0
    move v1, v0

    .line 657
    .local v1, "modemNetworkMode":I
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 659
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 666
    .end local v0    # "buttonNetworkMode":I
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v3, p2

    .line 667
    check-cast v3, Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    if-nez v3, :cond_2

    .line 668
    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 669
    iput v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 670
    invoke-virtual {p0, v7}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    .line 672
    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    if-nez v3, :cond_3

    .line 675
    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 676
    iput v5, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 677
    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 680
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->setNationalDataRoamingSetting(I)V

    .line 683
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 268
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_0

    .line 270
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 273
    .local v2, "settingsNetworkMode":I
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 341
    .end local v2    # "settingsNetworkMode":I
    :goto_0
    return v4

    .line 276
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 277
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 280
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 282
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    if-eqz v6, :cond_2

    .line 283
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 285
    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 286
    iput v5, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 287
    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 295
    :cond_4
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_5

    .line 296
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getNationalDataRoamingSetting()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_5
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_7

    .line 301
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    .line 303
    .local v1, "networkType":I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 301
    .end local v1    # "networkType":I
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getDefaultNetworkMode()I

    move-result v1

    goto :goto_1

    .line 310
    :cond_7
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_9

    .line 311
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x2

    .line 313
    .restart local v1    # "networkType":I
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 311
    .end local v1    # "networkType":I
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getDefaultNetworkMode()I

    move-result v1

    goto :goto_2

    .line 320
    :cond_9
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_b

    .line 321
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 322
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 326
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_c

    .line 327
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "ask_at_poweron"

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.sonyericsson.requestmonitor.settings"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "setting"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_c
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    move v4, v5

    .line 341
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 515
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 524
    const-string v0, "persist.cust.tel.adapt"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 537
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateNetworkOperatorsPreference()V

    .line 539
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getNationalDataRoamingSetting()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 543
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkPreferences()V

    .line 546
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_data_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v1, "button_data_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 554
    :goto_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setValueForAskAtPowerOnSettings()V

    .line 557
    :cond_1
    return-void

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 550
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_1
.end method
