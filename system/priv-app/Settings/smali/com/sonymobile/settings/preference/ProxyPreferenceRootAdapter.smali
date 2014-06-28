.class public Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProxyPreferenceRootAdapter.java"


# instance fields
.field private mRootAdapter:Landroid/widget/ListAdapter;

.field private mTextColorPrimary:I

.field private mTextColorSecondary:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->getThemeColors(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private changeTextColorIfNecessary(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "themeColor"    # I

    .prologue
    .line 64
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 67
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .end local v0    # "text":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private getThemeColors(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 76
    .local v0, "attrs":[I
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    .local v1, "taArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorPrimary:I

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorSecondary:I

    .line 79
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void

    .line 73
    :array_0
    .array-data 4
        0x1010036
        0x1010038
    .end array-data
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "itemView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 53
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    iget v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorPrimary:I

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->changeTextColorIfNecessary(Landroid/view/View;I)V

    .line 55
    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 56
    iget v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorSecondary:I

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->changeTextColorIfNecessary(Landroid/view/View;I)V

    .line 60
    .end local v0    # "itemView":Landroid/view/View;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 131
    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 138
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 87
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 94
    :cond_0
    return-void
.end method
