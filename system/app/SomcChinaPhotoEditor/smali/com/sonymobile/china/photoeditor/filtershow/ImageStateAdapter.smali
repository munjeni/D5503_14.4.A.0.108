.class public Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImageStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    move-object v4, p2

    .line 37
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 40
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 42
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 43
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    if-eqz v0, :cond_1

    .line 44
    const v5, 0x7f0c0087

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "itemLabel":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v5, 0x7f0c0088

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    .local v3, "itemParameter":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getParameter()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .end local v2    # "itemLabel":Landroid/widget/TextView;
    .end local v3    # "itemParameter":Landroid/widget/TextView;
    :cond_1
    return-object v4
.end method
