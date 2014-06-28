.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 66
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 139
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 247
    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 252
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "layoutRoot":Landroid/view/View;
    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 170
    .end local v1    # "layoutRoot":Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 173
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 177
    :cond_2
    const v2, 0x7f080201

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 178
    const v2, 0x7f080202

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 179
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 180
    const v2, 0x7f080203

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 181
    const v2, 0x7f08020d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 183
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 185
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const v2, 0x7f08020f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 188
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v2, 0x7f080213

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 190
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v2, 0x7f080212

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 192
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v2, 0x7f080211

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 194
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v2, 0x7f080210

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 196
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v2, 0x7f080200

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 199
    const v2, 0x7f080206

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 201
    const v2, 0x7f080207

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 202
    const v2, 0x7f08020a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 203
    const v2, 0x7f08020b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 204
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 416
    return-void
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 577
    iget v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 578
    :cond_0
    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iput v8, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 583
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 585
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 586
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 590
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 594
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 595
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 597
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "SetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v6, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 609
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 610
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 625
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 626
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 627
    const v4, 0x7f080209

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 628
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 629
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 630
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    .line 631
    return-void

    .line 612
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iput v8, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 613
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings;->resumeWifiScan()V

    .line 615
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 617
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 618
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 619
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 620
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 621
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0b0713

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 536
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .param p1, "disconnectNetwork"    # Z

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 672
    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->refreshAccessPoints()V

    .line 677
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 214
    return-void
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 750
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 752
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 316
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 317
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 319
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 320
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b070b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    return-void

    .line 375
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b0709

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 725
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 733
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 742
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 743
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 412
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 637
    if-eqz p1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0b0712

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0b0711

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accessPointSecurity"    # I

    .prologue
    const v5, 0x7f0801ca

    const v4, 0x7f0801c9

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 487
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 489
    const v2, 0x7f0801cc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 490
    const v2, 0x7f0801cd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 493
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 494
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 499
    const v1, 0x7f0801cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 505
    :goto_0
    const v1, 0x7f0801ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    const v1, 0x7f0801cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    const v1, 0x7f0801cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 508
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 530
    :goto_1
    return v0

    .line 503
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 514
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 515
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 521
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0801b2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 530
    goto :goto_1

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0801c4

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 218
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 220
    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 244
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 222
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 223
    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 226
    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const v0, 0x7f0b0711

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 232
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 236
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 234
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 237
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 238
    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 241
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 547
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 549
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 557
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 560
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0b0713

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 563
    const v1, 0x7f080209

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 564
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f0b0723

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 570
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 573
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 145
    const v0, 0x7f0400b7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 147
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 154
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 161
    return-void
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    return-void
.end method
