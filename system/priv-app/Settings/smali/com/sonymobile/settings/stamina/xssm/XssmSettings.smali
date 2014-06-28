.class public Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.super Landroid/app/Fragment;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;
    }
.end annotation


# instance fields
.field private mActivation:Landroid/view/View;

.field private mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

.field private mAddBtn:Landroid/view/View;

.field private mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mHint:Landroid/view/View;

.field private mHintDialog:Landroid/app/AlertDialog;

.field private mIsXSSMEnabled:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 80
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 87
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 139
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHint:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->showHintDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mIsXSSMEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->onAddApplication()V

    return-void
.end method

.method static synthetic access$702(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    return-void
.end method

.method private loadUidList()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 203
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v3, "stamina_uidlist"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .line 205
    .local v2, "uidList":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    if-nez v2, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 207
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .end local v2    # "uidList":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    invoke-direct {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;-><init>()V

    .line 208
    .restart local v2    # "uidList":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    const-string v3, "stamina_uidlist"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 209
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 211
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private onAddApplication()V
    .locals 7

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 309
    const-class v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b002b

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 311
    return-void
.end method

.method private setUiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mIsXSSMEnabled:Z

    .line 316
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 327
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->setEnabled(Z)V

    .line 329
    :cond_0
    return-void

    .line 322
    :cond_1
    const/high16 v1, 0x3f000000

    goto :goto_0
.end method

.method private showHintDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0010

    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$3;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaRuntimeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 123
    :goto_0
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    .line 126
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 137
    return-void

    .line 120
    :cond_1
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 217
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 219
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 221
    .local v1, "padding":I
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 222
    new-instance v2, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    .line 224
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-interface {v3}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateView(I)V

    .line 226
    if-eqz p1, :cond_0

    const-string v2, "key_hintdialog_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->showHintDialog(Landroid/os/Bundle;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    .line 157
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f080025

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    const v2, 0x7f040094

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "rootView":Landroid/view/View;
    const v2, 0x7f080172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    .line 165
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    const v2, 0x7f04008e

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHint:Landroid/view/View;

    .line 169
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHint:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 172
    const v2, 0x7f040093

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;

    .line 174
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 177
    const v2, 0x7f04008b

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 183
    const v2, 0x7f040098

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    .line 184
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200e4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 187
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    const v3, 0x7f0800b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    const v3, 0x7f080175

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 193
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->loadUidList()V

    .line 197
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    .line 291
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 292
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 255
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    .line 256
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "whitelistGroups":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 262
    .local v0, "whitelist":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelistGroups(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 263
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .line 264
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mIsXSSMEnabled:Z

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->setEnabled(Z)V

    .line 265
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 271
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-static {v2, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 272
    return-void

    .line 267
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 303
    const-string v0, "key_hintdialog_state"

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 305
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, -0x2

    .line 233
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 234
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 235
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 237
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 242
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 247
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 248
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 249
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 250
    return-void
.end method
