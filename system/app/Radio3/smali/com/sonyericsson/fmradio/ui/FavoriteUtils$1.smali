.class final Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;
.super Landroid/widget/ArrayAdapter;
.source "FavoriteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->createFavoritesAdapter(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mFavoritesSize:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;I)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 62
    .local p4, "x3":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;>;"
    iput p5, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$mFavoritesSize:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    if-eqz p2, :cond_1

    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 69
    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "view":Landroid/widget/TextView;
    :goto_0
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$mFavoritesSize:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101004d

    # invokes: Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->getAttrDimensionInPx(Landroid/content/Context;I)I
    invoke-static {v3, v4}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->access$000(Landroid/content/Context;I)I

    move-result v1

    .line 77
    .local v1, "preferredSize":I
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 80
    .end local v1    # "preferredSize":I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    .line 82
    .local v0, "item":Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    return-object v2

    .line 71
    .end local v0    # "item":Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    .end local v2    # "view":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "view":Landroid/widget/TextView;
    goto :goto_0
.end method
