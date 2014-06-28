.class final Lcom/android/mms/model/SlideshowModel$1;
.super Ljava/lang/Object;
.source "SlideshowModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/SlideshowModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/w3c/dom/smil/SMILRegionElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lorg/w3c/dom/smil/SMILRegionElement;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/w3c/dom/smil/SMILRegionElement;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel$1;->compare(Lorg/w3c/dom/smil/SMILRegionElement;Lorg/w3c/dom/smil/SMILRegionElement;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/w3c/dom/smil/SMILRegionElement;Lorg/w3c/dom/smil/SMILRegionElement;)I
    .locals 2
    .param p1, "o1"    # Lorg/w3c/dom/smil/SMILRegionElement;
    .param p2, "o2"    # Lorg/w3c/dom/smil/SMILRegionElement;

    .prologue
    .line 127
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v0

    invoke-interface {p2}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
