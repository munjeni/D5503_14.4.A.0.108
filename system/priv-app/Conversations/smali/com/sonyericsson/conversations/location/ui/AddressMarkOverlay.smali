.class public Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "AddressMarkOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOverlayItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayListener:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayListener:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 0
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public addOverlay(Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;)V
    .locals 1
    .param p1, "overlayItem"    # Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setLastFocusedIndex(I)V

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->populate()V

    .line 59
    return-void
.end method

.method protected bridge synthetic createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->createItem(I)Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;

    move-result-object v0

    return-object v0
.end method

.method protected createItem(I)Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;

    return-object v0
.end method

.method public notifyOverlayTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayListener:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayListener:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;->onAddressSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onTap(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setSelectedItem(IZ)V

    .line 121
    return v0
.end method

.method public removeAllOverlayItem()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setLastFocusedIndex(I)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->populate()V

    .line 97
    return-void
.end method

.method public removeAllUnSelectedOverlayItem()V
    .locals 5

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "selectedItem":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 103
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 104
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;

    .line 106
    .local v1, "item":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    move-object v2, v1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "item":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    :cond_1
    if-eqz v2, :cond_2

    .line 112
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 113
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->addOverlay(Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;)V

    .line 115
    :cond_2
    return-void
.end method

.method public setOverlayListener(Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayListener:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;

    .line 63
    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "notifyOverlayTapListener"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;

    .line 75
    .local v1, "overlayItem":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    if-ne v0, p1, :cond_1

    .line 76
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->setSelected(Z)V

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setFocus(Lcom/google/android/maps/OverlayItem;)V

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->getLocationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->getLocationUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->notifyOverlayTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->setSelected(Z)V

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 91
    .end local v1    # "overlayItem":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->mOverlayItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
