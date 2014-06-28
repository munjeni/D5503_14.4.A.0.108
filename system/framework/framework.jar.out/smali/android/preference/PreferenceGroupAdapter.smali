.class Landroid/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final MAX_EXTRA_VIEW_TYPES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private volatile mIsSyncing:Z

.field private mMaxViewTypes:I

.field private mPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$1;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 85
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/preference/PreferenceGroupAdapter;->mMaxViewTypes:I

    .line 89
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter$1;-><init>(Landroid/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 137
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    .line 142
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 143
    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceGroupAdapter;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 206
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 208
    .local v0, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "in"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 198
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 199
    .local v0, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v1

    # setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 201
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    # setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$402(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 202
    return-object v0

    .line 198
    .end local v0    # "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 6
    .param p2, "group"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->sortPreferences()V

    .line 170
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 171
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 172
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 174
    .local v2, "preference":Landroid/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget v4, p0, Landroid/preference/PreferenceGroupAdapter;->mMaxViewTypes:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    iget v5, p0, Landroid/preference/PreferenceGroupAdapter;->mMaxViewTypes:I

    if-ge v4, v5, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/preference/Preference;->canRecycleLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/preference/Preference;)V

    .line 181
    :cond_1
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    move-object v3, v2

    .line 182
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 183
    .local v3, "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    invoke-direct {p0, p1, v3}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 188
    .end local v3    # "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    :cond_2
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 148
    monitor-exit p0

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v0, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 156
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 158
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 160
    monitor-enter p0

    .line 161
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 152
    .end local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 218
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 223
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 224
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 270
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 271
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/Preference;->canRecycleLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 277
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 230
    .local v0, "preference":Landroid/preference/Preference;
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 234
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const/4 p2, 0x0

    .line 238
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Landroid/preference/PreferenceGroupAdapter;->mMaxViewTypes:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 290
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/preference/PreferenceGroupAdapter;->mMaxViewTypes:I

    .line 292
    :cond_0
    iget v0, p0, Landroid/preference/PreferenceGroupAdapter;->mMaxViewTypes:I

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 243
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 256
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 259
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method
