.class public Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PackageDisplayListSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;,
        Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
    }
.end annotation


# instance fields
.field protected mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field protected mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonDone:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurTab:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

.field private mRootView:Landroid/view/View;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field protected mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mCurTab:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 180
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 184
    .local v1, "manager":Landroid/app/FragmentManager;
    const-string v3, "stamina_uidlist"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .line 185
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 187
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    invoke-direct {v3}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .line 188
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    const-string v4, "stamina_uidlist"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 189
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 192
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    const-string v3, "stamina_whitelist"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 193
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    if-nez v3, :cond_1

    .line 194
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 195
    .restart local v2    # "transaction":Landroid/app/FragmentTransaction;
    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-direct {v3}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 196
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    const-string v4, "stamina_whitelist"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 197
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 199
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    const v2, 0x7f040095

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    .line 207
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 208
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    .line 209
    .local v0, "tabs":Landroid/support/v4/view/PagerTabStrip;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, -0xd5541c

    invoke-static {v2, v3}, Lcom/sonymobile/settings/util/ColorReplacer;->getThemeColor(Landroid/content/Context;I)I

    move-result v1

    .line 211
    .local v1, "themeColor":I
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 213
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f080173

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonCancel:Landroid/widget/Button;

    .line 214
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f080174

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonDone:Landroid/widget/Button;

    .line 216
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->executeWhenLoaded(Ljava/lang/Runnable;)V

    .line 268
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonCancel:Landroid/widget/Button;

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$2;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    .line 290
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 291
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 292
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 293
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonCancel:Landroid/widget/Button;

    .line 294
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonDone:Landroid/widget/Button;

    .line 296
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->clear()V

    .line 298
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 299
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->detachView()V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 309
    return-void
.end method

.method public updateCurrentTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    .line 172
    .local v0, "tab":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mCurTab:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    .line 173
    return-void
.end method
