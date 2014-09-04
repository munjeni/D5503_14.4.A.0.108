.class Lcom/sonymobile/movablepanes/paneview/PaneView$3;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 501
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 503
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 504
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 505
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 520
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 508
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v3

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v4

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J
    invoke-static {v4}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$600(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/movablepanes/paneview/PaneView;->performItemClick(Landroid/view/View;IJ)Z

    .line 515
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 505
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
