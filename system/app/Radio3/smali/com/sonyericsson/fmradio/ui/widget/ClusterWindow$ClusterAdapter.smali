.class Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ClusterWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClusterAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 147
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 151
    move-object v4, p2

    .line 153
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 154
    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030001

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 157
    :cond_0
    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    .local v2, "name":Landroid/widget/TextView;
    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    .local v0, "indicator":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 161
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    .line 162
    .local v3, "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    iget-object v5, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v5, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mDisplayColor:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 165
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mDisplayColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 172
    :goto_0
    return-object v4

    .line 169
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
