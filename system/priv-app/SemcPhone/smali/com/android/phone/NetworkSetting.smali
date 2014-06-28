.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mNetworkSelectionDone:Z


# instance fields
.field private currentNetwork:Landroid/preference/Preference;

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonNetworkSearch:Landroid/preference/Preference;

.field private mButtonNetworkSearchMode:Landroid/preference/ListPreference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mDataTrafficNeedRestore:Z

.field private mDisableNetworkSearchWhenDataIsOn:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSearchModeAutomatic:Z

.field private mNWQuerySponsor:Landroid/preference/Preference;

.field private mNetworkList:Lcom/android/phone/SomcProgressCategory;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mOKClickedToSearchNetwork:Z

.field private mOnPause:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSingleNoRatRow:Z

.field private mSkipNextAutoReselect:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWaitingForServiceState:Z

.field private selectedCarrier:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSkipNextAutoReselect:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    .line 127
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    .line 128
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    .line 129
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;

    .line 131
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSingleNoRatRow:Z

    .line 142
    new-instance v0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;-><init>(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 239
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 242
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 265
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 1129
    new-instance v0, Lcom/android/phone/NetworkSetting$9;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$9;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Lcom/android/phone/INetworkQueryService;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkSetting;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->updateNetworkFromServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateNetworkSearchModeButton()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkSearchNwPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->selectNetworkCarrier(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkSetting;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/NetworkSetting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->disableNetworkSettingsMenu()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->enableNetworkSettingsMenu()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSetting;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSetting;Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NetworkSetting;
    .param p1, "x1"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v0

    return v0
.end method

.method private checkSearchNwPossible()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1178
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-nez v2, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return v0

    .line 1180
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_3

    .line 1184
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "checkSearchPossible() phoen status not IDLE."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1185
    :cond_2
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    move v0, v1

    .line 1186
    goto :goto_0

    .line 1189
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 1190
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    .line 1193
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "checkSearchPossible() DATA_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1194
    :cond_5
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    move v0, v1

    .line 1195
    goto :goto_0
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 860
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 861
    .local v1, "p":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 863
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 864
    return-void
.end method

.method private createAlertDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "msgRes"    # I

    .prologue
    .line 615
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 616
    .local v0, "alertbuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 618
    const v1, 0x7f0b00a0

    new-instance v2, Lcom/android/phone/NetworkSetting$8;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$8;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 623
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 624
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createDisableDataAccessAlertDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "msgRes"    # I

    .prologue
    .line 581
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "dataDisableAlertbuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/NetworkSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$6;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/phone/NetworkSetting$7;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$7;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 605
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 606
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 607
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private disableNetworkSettingsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1082
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "disableNetworkSettingsMenu()"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1083
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1084
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1085
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1086
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v0, :cond_1

    .line 1090
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 1099
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcProgressCategory;->setTitle(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1102
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1104
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    .line 1093
    const-string v0, "phone"

    const-string v1, "Failed to stop network query in NetworkSettings disableNetworkSettingsMenu."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 3
    .param p1, "isEmpty"    # Z

    .prologue
    .line 628
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b028c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/SomcProgressCategory;->setTitle(Ljava/lang/String;)V

    .line 630
    return-void

    .line 628
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b028a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b028e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 643
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 645
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 648
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0290

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 654
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayNetworkSelectionOngoing()V
    .locals 4

    .prologue
    .line 676
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0291

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 684
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 4

    .prologue
    .line 659
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0293

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 665
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .param p1, "networkStr"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b028f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 636
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 637
    return-void
.end method

.method private enableNetworkSettingsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1110
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "enableNetworkSettingsMenu()"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1112
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1113
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1115
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v0, :cond_1

    .line 1116
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    .line 1117
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1119
    :cond_1
    return-void
.end method

.method private findCarrier(Ljava/lang/String;)Lcom/android/phone/SomcNetworkPreference;
    .locals 4
    .param p1, "carrierName"    # Ljava/lang/String;

    .prologue
    .line 846
    const/4 v1, 0x0

    .line 847
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 849
    .local v2, "nbrOfCarrieres":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 850
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcNetworkPreference;

    .line 851
    .local v0, "carrier":Lcom/android/phone/SomcNetworkPreference;
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    .end local v0    # "carrier":Lcom/android/phone/SomcNetworkPreference;
    :goto_1
    return-object v0

    .line 854
    .restart local v0    # "carrier":Lcom/android/phone/SomcNetworkPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 855
    goto :goto_0

    .line 856
    .end local v0    # "carrier":Lcom/android/phone/SomcNetworkPreference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initNetworkQuery()V
    .locals 3

    .prologue
    .line 1162
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initNetworkQuery()"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1170
    return-void
.end method

.method private isHomeNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 6
    .param p1, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    const/4 v5, 0x0

    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, "isHomePlmn":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 877
    .local v2, "operator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 881
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v5, v2, v5, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    .line 884
    :cond_0
    return v1
.end method

.method private isNetworkCurrent(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 2
    .param p1, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 867
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNetworkForbidden(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 2
    .param p1, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 871
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadNetworksList()V
    .locals 3

    .prologue
    .line 689
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "load networks list..."

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 692
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    .line 695
    const/16 v1, 0xc8

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 701
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_2

    .line 703
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 715
    :cond_2
    :goto_1
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, " DIALOG_NETWORK_LIST_LOAD dismissed already"

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    .line 706
    const-string v1, "phone"

    const-string v2, "Failed to start network query in NetworkSettings loadNetworksList."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 713
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1033
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 11
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 725
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "networks list loaded"

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 727
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 728
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 825
    :goto_0
    return-void

    .line 731
    :cond_1
    if-eqz p2, :cond_4

    .line 732
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error while querying available networks, status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 733
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 734
    invoke-direct {p0, v10}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 823
    :cond_3
    :goto_1
    const/16 v7, 0xc8

    invoke-virtual {p0, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 824
    iput-boolean v9, p0, Lcom/android/phone/NetworkSetting;->mSkipNextAutoReselect:Z

    goto :goto_0

    .line 736
    :cond_4
    if-eqz p1, :cond_11

    .line 737
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number of networks found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 739
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 740
    invoke-direct {p0, v10}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 817
    :cond_6
    :goto_2
    iget-boolean v7, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/phone/NetworkSetting;->mSkipNextAutoReselect:Z

    if-nez v7, :cond_3

    .line 818
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    goto :goto_1

    .line 742
    :cond_7
    invoke-direct {p0, v9}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 745
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateOperatorNameFromIntent()Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "currentNetworkName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 752
    .local v3, "isPlmnPreferred":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    .line 753
    .local v4, "ni":Lcom/android/internal/telephony/OperatorInfo;
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 756
    :cond_9
    new-instance v0, Lcom/android/phone/SomcNetworkPreference;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/android/phone/SomcNetworkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 757
    .local v0, "carrier":Lcom/android/phone/SomcNetworkPreference;
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    .line 758
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 759
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    .line 761
    :cond_a
    if-nez v3, :cond_c

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isNetworkCurrent(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v1, :cond_c

    .line 762
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 767
    :goto_4
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 770
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isNetworkForbidden(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 771
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setNetworkNotAvailable()V

    .line 782
    :cond_b
    :goto_5
    iget-boolean v7, p0, Lcom/android/phone/NetworkSetting;->mSingleNoRatRow:Z

    if-eqz v7, :cond_10

    .line 784
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->findCarrier(Ljava/lang/String;)Lcom/android/phone/SomcNetworkPreference;

    move-result-object v5

    .line 785
    .local v5, "prev":Lcom/android/phone/SomcNetworkPreference;
    if-nez v5, :cond_f

    .line 789
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 790
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 764
    .end local v5    # "prev":Lcom/android/phone/SomcNetworkPreference;
    :cond_c
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 773
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isHomeNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 774
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setHomeNetwork()V

    .line 776
    :cond_e
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isNetworkCurrent(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 777
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setCurrentNetwork()V

    .line 778
    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    goto :goto_5

    .line 793
    .restart local v5    # "prev":Lcom/android/phone/SomcNetworkPreference;
    :cond_f
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isNetworkCurrent(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 794
    invoke-virtual {v5}, Lcom/android/phone/SomcNetworkPreference;->setCurrentNetwork()V

    .line 795
    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    goto/16 :goto_3

    .line 803
    .end local v5    # "prev":Lcom/android/phone/SomcNetworkPreference;
    :cond_10
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/phone/SomcNetworkPreference;->setNetworkRAT(Lcom/android/internal/telephony/OperatorInfo$RAT;)V

    .line 806
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 807
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 813
    .end local v0    # "carrier":Lcom/android/phone/SomcNetworkPreference;
    .end local v1    # "currentNetworkName":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isPlmnPreferred":Z
    .end local v4    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    .end local v6    # "title":Ljava/lang/String;
    :cond_11
    invoke-direct {p0, v10}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto/16 :goto_2
.end method

.method private restoreDataTrafficSetting()V
    .locals 2

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    if-nez v0, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    .line 1204
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private selectNetworkAutomatic()V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 1019
    sget-boolean v0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    if-nez v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1021
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "select network automatically..."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1023
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    if-nez v0, :cond_2

    .line 1024
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1027
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    .line 1028
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1029
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private selectNetworkCarrier(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "carrier"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 355
    sget-boolean v5, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    if-nez v5, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionOngoing()V

    .line 388
    :cond_0
    :goto_0
    return v7

    .line 360
    :cond_1
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 362
    .local v1, "info":Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v1, :cond_0

    .line 366
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v5, :cond_3

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->AUTOMATIC:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    .line 370
    .local v2, "mode":Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v5, :cond_4

    const/16 v0, 0x12c

    .line 373
    .local v0, "event":I
    :goto_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "networkStr":Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v5, :cond_2

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selected network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 379
    :cond_2
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    .line 380
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 381
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setNetworkSelection(Lcom/android/internal/telephony/OperatorInfo$SelectionMode;Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 384
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .end local v0    # "event":I
    .end local v2    # "mode":Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "networkStr":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->MANUAL:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    goto :goto_1

    .line 370
    .restart local v2    # "mode":Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    :cond_4
    const/16 v0, 0xc8

    goto :goto_2
.end method

.method private setIsSearchModeAutomatic(Z)V
    .locals 4
    .param p1, "isSearchModeAutomatic"    # Z

    .prologue
    .line 992
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    .line 993
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_selection_mode_automatic"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 996
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 998
    return-void

    .line 993
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 947
    .line 950
    if-eqz p1, :cond_5

    .line 952
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 954
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update current network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    :cond_0
    move v3, v2

    .line 957
    :goto_0
    if-le v4, v3, :cond_5

    .line 958
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcNetworkPreference;

    .line 959
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 964
    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$RAT;->UNDEFINED_OR_NO_CHANGE:Lcom/android/internal/telephony/OperatorInfo$RAT;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 969
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    check-cast v1, Lcom/android/phone/SomcNetworkPreference;

    invoke-virtual {v1}, Lcom/android/phone/SomcNetworkPreference;->unsetCurrentNetwork()V

    .line 971
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network as current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 972
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setCurrentNetwork()V

    .line 973
    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    .line 974
    const/4 v0, 0x1

    .line 982
    :goto_1
    return v0

    .line 978
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 979
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private updateNetworkFromServiceState(Landroid/telephony/ServiceState;)V
    .locals 6

    .prologue
    .line 891
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 893
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 897
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 898
    packed-switch v0, :pswitch_data_0

    .line 923
    :pswitch_0
    const-string v5, "undefined"

    .line 927
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 932
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, "Fake"

    const-string v2, "Fake"

    const-string v4, "unknown"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    .line 941
    :cond_1
    :goto_1
    return-void

    .line 902
    :pswitch_1
    const-string v5, "gsm"

    goto :goto_0

    .line 909
    :pswitch_2
    const-string v5, "wcdma"

    goto :goto_0

    .line 918
    :pswitch_3
    const-string v5, "lte"

    goto :goto_0

    .line 939
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "No network id"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateNetworkSearchModeButton()V
    .locals 3

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1015
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateOperatorNameFromIntent()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 828
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 829
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 831
    .local v1, "spnUpdateIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "currentOpName":Ljava/lang/String;
    const-string v2, "showPlmn"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 834
    const-string v2, "plmn"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current operator name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 842
    .end local v0    # "currentOpName":Ljava/lang/String;
    .end local v1    # "spnUpdateIntent":Landroid/content/Intent;
    :cond_1
    return-object v0

    .line 835
    .restart local v0    # "currentOpName":Ljava/lang/String;
    .restart local v1    # "spnUpdateIntent":Landroid/content/Intent;
    :cond_2
    const-string v2, "showSpn"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    const-string v2, "spn"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 404
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 415
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 417
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f080027

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 420
    const v5, 0x7f050015

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 421
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 422
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 424
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "connectivity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    .line 428
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 430
    .local v4, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v5, "button_network_search_mode_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    .line 431
    const-string v5, "button_network_search_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    .line 432
    const-string v5, "network_list"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/SomcProgressCategory;

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    .line 435
    const-string v5, "ro.network.auto_selection_only"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 437
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 457
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "network_selection_mode_automatic"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 461
    .local v3, "isSelectionModeAutomatic":Z
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 464
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 466
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v5, :cond_0

    .line 467
    const-string v5, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    :cond_0
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x190

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 475
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_1

    .line 476
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 477
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->initNetworkQuery()V

    .line 482
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mSingleNoRatRow:Z

    .line 483
    return-void

    .line 443
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "isSelectionModeAutomatic":Z
    :cond_2
    new-array v0, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0296

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b009a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 446
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 448
    new-array v1, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b019f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b01a0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 451
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 452
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "entryValues":[Ljava/lang/CharSequence;
    :cond_3
    move v3, v6

    .line 457
    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 518
    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x12c

    if-ne p1, v2, :cond_1

    .line 520
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 521
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 522
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 523
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 524
    sparse-switch p1, :sswitch_data_0

    .line 541
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 576
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 531
    .restart local v1    # "dialog":Landroid/app/ProgressDialog;
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 535
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0298

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 546
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    const/4 v1, 0x0

    .line 547
    .local v1, "dialog":Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 549
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b009e

    new-instance v3, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    const v2, 0x7f0b009f

    new-instance v3, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    const v2, 0x7f0b0098

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 563
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 564
    goto :goto_0

    .line 566
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    const v2, 0x7f0b010a

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->createDisableDataAccessAlertDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 569
    goto :goto_0

    .line 571
    :sswitch_4
    const v2, 0x7f0b0109

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->createAlertDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 572
    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch

    .line 547
    :sswitch_data_1
    .sparse-switch
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 495
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V

    .line 506
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 510
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 513
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 514
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "phone"

    const-string v2, "Failed to stop network query in NetworkSettings on onDestroy."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 315
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 318
    .local v0, "isSelectedSearchModeAutomatic":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eq v0, v3, :cond_1

    .line 321
    if-nez v0, :cond_4

    .line 322
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 323
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 324
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Manual search"

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->selectNetworkCarrier(Landroid/preference/Preference;)Z

    .line 350
    .end local v0    # "isSelectedSearchModeAutomatic":Z
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 315
    goto :goto_0

    .line 333
    .restart local v0    # "isSelectedSearchModeAutomatic":Z
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    goto :goto_1

    .line 336
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 337
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Automatic search"

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 340
    :cond_5
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkSearchNwPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v3, :cond_2

    .line 282
    iput-object p2, p0, Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;

    .line 284
    :cond_2
    const/4 v0, 0x0

    .line 286
    .local v0, "handled":Z
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    iget-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    :goto_2
    move v2, v0

    .line 306
    goto :goto_0

    .line 287
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    if-ne p2, v3, :cond_5

    .line 290
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkSearchNwPossible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    .line 292
    const/4 v0, 0x1

    goto :goto_2

    .line 294
    :cond_5
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected carrier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 295
    :cond_6
    iput-object p2, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    .line 296
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 297
    .local v1, "ni":Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v1, :cond_0

    .line 300
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->isNetworkForbidden(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 301
    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_2

    .line 303
    :cond_7
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->selectNetworkCarrier(Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    return-void
.end method
