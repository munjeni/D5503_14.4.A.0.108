.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;
.super Ljava/lang/Object;
.source "TextEditViewContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 434
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->retrieveConstitutor(FF)I
    invoke-static {v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;FF)I

    move-result v2

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I
    invoke-static {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$002(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I

    .line 436
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeChildTextFocus()V
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V

    .line 437
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 438
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 440
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v1, v7}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    .line 441
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getProperty()Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    move-result-object v2

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    invoke-static {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I
    invoke-static {v1, v7}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$502(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I

    .line 444
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V
    invoke-static {v1, v6}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)V

    .line 445
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I
    invoke-static {v1, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsLongTouch:Z
    invoke-static {v1, v7}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$902(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Z)Z

    .line 453
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I
    invoke-static {v1, v6}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$502(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I

    .line 448
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V
    invoke-static {v1, v6}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)V

    .line 449
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I
    invoke-static {v1, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I

    .line 450
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    move-result-object v2

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    invoke-static {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    goto :goto_0
.end method
