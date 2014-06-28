.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
.super Ljava/lang/Object;
.source "PackageDisplayListSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabInfo"
.end annotation


# instance fields
.field private mAdapter:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field private mDoneClickListener:Landroid/view/View$OnClickListener;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mLabel:Ljava/lang/CharSequence;

.field private mListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "adapter"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
    .param p3, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p4, "doneClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 84
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 85
    iput-object p3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 86
    iput-object p4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 87
    return-void
.end method


# virtual methods
.method public build(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/Button;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "buttonDone"    # Landroid/widget/Button;

    .prologue
    .line 90
    const v0, 0x7f040097

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mListView:Landroid/widget/ListView;

    .line 92
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
