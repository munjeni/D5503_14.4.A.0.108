.class public Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private final mState:Lcom/android/settings/applications/AppOpsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/settings/applications/AppOpsState;

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    .line 255
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 256
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mState:Lcom/android/settings/applications/AppOpsState;

    .line 257
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 285
    if-nez p2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040008

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 292
    .local v0, "item":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSummaryText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-object v1

    .line 288
    .end local v0    # "item":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->notifyDataSetChanged()V

    .line 262
    return-void
.end method
