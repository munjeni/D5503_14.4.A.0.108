.class Lcom/sonyericsson/conversations/ui/EditorFragment$2;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 435
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 436
    .local v1, "visibleArea":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 438
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 441
    .local v0, "heightDiff":I
    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;->forceRefreshVisibleArea()V

    .line 446
    :cond_0
    return-void
.end method
