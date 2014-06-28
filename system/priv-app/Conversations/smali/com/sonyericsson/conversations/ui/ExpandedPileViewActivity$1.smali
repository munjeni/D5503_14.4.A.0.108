.class Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$1;
.super Ljava/lang/Object;
.source "ExpandedPileViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/sonyericsson/conversations/ui/PileViewItem;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/PileViewItem;->removeButtonIsBeingPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->access$000(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    move-result-object v1

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->deleteItem(Lcom/android/mms/model/MediaModel;)V

    .line 88
    :cond_0
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->access$000(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    # invokes: Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->abortFlowAndExit()V
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->access$100(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)V

    .line 94
    :cond_1
    return-void
.end method
