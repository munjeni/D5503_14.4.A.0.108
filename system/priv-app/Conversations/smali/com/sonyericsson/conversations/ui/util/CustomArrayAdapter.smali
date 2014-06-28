.class public abstract Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CustomArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mItemLayoutResource:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;, "Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 56
    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;->mItemLayoutResource:I

    .line 57
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;, "Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter<TT;>;"
    if-eqz p2, :cond_0

    .line 64
    move-object v0, p2

    .line 69
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    .line 71
    return-object v0

    .line 66
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/CustomArrayAdapter;->mItemLayoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method
