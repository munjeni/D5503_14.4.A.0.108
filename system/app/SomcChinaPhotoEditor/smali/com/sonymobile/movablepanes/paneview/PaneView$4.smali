.class Lcom/sonymobile/movablepanes/paneview/PaneView$4;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$4;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 526
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$4;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$4;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$4;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$402(Lcom/sonymobile/movablepanes/paneview/PaneView;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 529
    :cond_0
    return-void
.end method
