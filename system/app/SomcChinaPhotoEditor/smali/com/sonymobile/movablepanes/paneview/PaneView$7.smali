.class Lcom/sonymobile/movablepanes/paneview/PaneView$7;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;->onDataChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I
    .locals 2
    .param p1, "item1"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "item2"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 1804
    iget-object v0, p2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->zOrder:I

    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->zOrder:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1802
    check-cast p1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView$7;->compare(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v0

    return v0
.end method
