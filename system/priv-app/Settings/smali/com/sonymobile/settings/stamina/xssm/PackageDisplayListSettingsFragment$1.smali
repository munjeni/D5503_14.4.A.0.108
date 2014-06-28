.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;
.super Ljava/lang/Object;
.source "PackageDisplayListSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 220
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$400(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    invoke-static {v5}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$500(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->getApps()Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget-object v6, v6, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-direct {v3, v4, v5, v6}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;-><init>(Landroid/content/Context;Ljava/util/Vector;Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V

    iput-object v3, v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 222
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$400(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    invoke-static {v5}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$500(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->getOthers()Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget-object v6, v6, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-direct {v3, v4, v5, v6}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;-><init>(Landroid/content/Context;Ljava/util/Vector;Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V

    iput-object v3, v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 225
    new-instance v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$400(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget-object v3, v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;)V

    new-instance v5, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$2;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;-><init>(Ljava/lang/CharSequence;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)V

    .line 241
    .local v1, "tab":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    .end local v1    # "tab":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$400(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget-object v3, v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$3;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$3;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;)V

    new-instance v5, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$4;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$4;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;-><init>(Ljava/lang/CharSequence;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)V

    .line 258
    .restart local v1    # "tab":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-direct {v0, v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)V

    .line 261
    .local v0, "adapter":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$600(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$600(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 263
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$600(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 265
    :cond_0
    return-void
.end method
