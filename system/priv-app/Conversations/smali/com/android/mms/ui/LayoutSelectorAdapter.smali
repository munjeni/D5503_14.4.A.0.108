.class public Lcom/android/mms/ui/LayoutSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "LayoutSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/mms/ui/LayoutSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 41
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v0, "temp":Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v1, 0x7f070120

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LayoutSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 47
    const v1, 0x7f07011f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/LayoutSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 50
    return-object v0
.end method
