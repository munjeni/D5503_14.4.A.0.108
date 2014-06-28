.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;
    }
.end annotation


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mAddPrintersTitle:Ljava/lang/CharSequence;

.field private mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mLastUnfilteredItemCount:I

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mSearchView:Landroid/widget/SearchView;

.field private mServiceEnabled:Z

.field private final mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    .line 98
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 703
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->announceSearchResult()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method private announceSearchResult()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->post()V

    .line 522
    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 459
    new-instance v1, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 460
    .local v1, "toggleSwitch":Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 462
    .local v0, "padding":I
    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 463
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 465
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 469
    return-object v1
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 295
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    .line 298
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 322
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 323
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 180
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 181
    .local v0, "service":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/print/SettingsUtils;->writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V

    .line 188
    return-void

    .line 185
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 10

    .prologue
    const v9, 0x7f0b0611

    const v8, 0x7f080085

    const v7, 0x7f08001f

    const v5, 0x7f040037

    const/4 v6, 0x0

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 235
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, "emptyView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    const/4 v1, 0x0

    .line 242
    :cond_0
    if-nez v1, :cond_1

    .line 243
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 245
    const v4, 0x7f0b061a

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    .local v3, "textView":Landroid/widget/TextView;
    const v4, 0x7f0b061a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 278
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-gtz v4, :cond_4

    .line 252
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080086

    if-eq v4, v5, :cond_3

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 255
    const/4 v1, 0x0

    .line 257
    :cond_3
    if-nez v1, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040038

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_4
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 264
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v8, :cond_5

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 266
    const/4 v1, 0x0

    .line 268
    :cond_5
    if-nez v1, :cond_1

    .line 269
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 271
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 273
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateUiForArguments()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 327
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 330
    .local v4, "arguments":Landroid/os/Bundle;
    const-string v11, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 333
    const-string v11, "EXTRA_CHECKED"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 334
    .local v5, "enabled":Z
    iget-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v11, v5}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 337
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 338
    .local v0, "activity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 342
    :cond_0
    const-string v11, "EXTRA_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    .end local v10    # "title":Ljava/lang/String;
    :cond_1
    const-string v11, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "settingsTitle":Ljava/lang/String;
    const-string v11, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "settingsComponentName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 351
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 353
    .local v8, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 355
    .local v6, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 357
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v11, :cond_2

    .line 358
    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 359
    iput-object v8, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 365
    .end local v6    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "settingsIntent":Landroid/content/Intent;
    :cond_2
    const-string v11, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "addPrintersTitle":Ljava/lang/String;
    const-string v11, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "addPrintersComponentName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 371
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 373
    .local v3, "addPritnersIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 375
    .restart local v6    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 377
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v11, :cond_3

    .line 378
    iput-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    .line 379
    iput-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 385
    .end local v3    # "addPritnersIntent":Landroid/content/Intent;
    .end local v6    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v11, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 389
    const-string v11, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 393
    const-string v11, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 396
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 397
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 283
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 290
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 291
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    packed-switch p2, :pswitch_data_0

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 217
    :pswitch_0
    const/4 v0, 0x1

    .line 218
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 231
    :goto_0
    return-void

    .line 223
    .end local v0    # "checked":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 224
    .restart local v0    # "checked":Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 194
    .local v0, "message":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 200
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 196
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 197
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 202
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v6, 0x7f080253

    const v5, 0x7f080252

    const v4, 0x7f080251

    .line 401
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 402
    const v3, 0x7f100002

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 404
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 405
    .local v0, "addPrinters":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 412
    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 413
    .local v2, "settings":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 415
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 420
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 421
    .local v1, "searchItem":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 422
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 423
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/settings/print/PrintServiceSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$5;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 435
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/settings/print/PrintServiceSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$6;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 456
    :goto_2
    return-void

    .line 409
    .end local v1    # "searchItem":Landroid/view/MenuItem;
    .end local v2    # "settings":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 417
    .restart local v2    # "settings":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 454
    .restart local v1    # "searchItem":Landroid/view/MenuItem;
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 176
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->remove()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 162
    :cond_1
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 151
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 170
    return-void
.end method
