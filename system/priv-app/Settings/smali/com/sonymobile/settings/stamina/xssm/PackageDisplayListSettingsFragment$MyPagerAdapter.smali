.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PackageDisplayListSettingsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mCurPos:I

.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->mCurPos:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 132
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    .line 133
    .local v1, "tab":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$100(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$200(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mButtonDone:Landroid/widget/Button;
    invoke-static {v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->access$300(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/Button;)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 145
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->mCurPos:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->updateCurrentTab(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 155
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;->mCurPos:I

    .line 160
    return-void
.end method
