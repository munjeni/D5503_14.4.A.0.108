.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3485
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 3486
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3487
    return-void
.end method

.method static synthetic access$200(Landroid/widget/Editor$InsertionHandleView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$InsertionHandleView;
    .param p1, "x1"    # Z

    .prologue
    .line 3477
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->showAndHideAfterDelay(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$InsertionHandleView;

    .prologue
    .line 3477
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindowIfRecent()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$InsertionHandleView;

    .prologue
    .line 3477
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .prologue
    .line 3527
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3528
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 3536
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3537
    return-void

    .line 3534
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 3540
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3543
    :cond_0
    return-void
.end method

.method private showActionPopupWindowIfRecent()V
    .locals 6

    .prologue
    .line 3514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    sub-long v0, v2, v4

    .line 3516
    .local v0, "durationSinceCutOrCopy":J
    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 3517
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->showActionPopupWindow(I)V

    .line 3519
    :cond_0
    return-void
.end method

.method private showAndHideAfterDelay(Z)V
    .locals 0
    .param p1, "hideAfterDelay"    # Z

    .prologue
    .line 3500
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 3502
    if-eqz p1, :cond_0

    .line 3503
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindowIfRecent()V

    .line 3504
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 3508
    :goto_0
    return-void

    .line 3506
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 3595
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 3547
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 3622
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 3623
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 3624
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 3616
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 3617
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 3618
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3552
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 3554
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 3590
    :goto_0
    :pswitch_0
    return v3

    .line 3556
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    .line 3557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    goto :goto_0

    .line 3561
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->offsetHasBeenChanged()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3562
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    .line 3563
    .local v0, "deltaX":F
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    .line 3564
    .local v1, "deltaY":F
    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v2, v6, v7

    .line 3566
    .local v2, "distanceSquared":F
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 3568
    .local v5, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 3570
    .local v4, "touchSlop":I
    mul-int v6, v4, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    .line 3571
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v6}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3573
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v6}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3579
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 3575
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "touchSlop":I
    .restart local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->showWithActionPopup()V

    goto :goto_1

    .line 3583
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 3554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 1

    .prologue
    .line 3491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Editor$InsertionHandleView;->showAndHideAfterDelay(Z)V

    .line 3492
    return-void
.end method

.method public showWithActionPopup()V
    .locals 1

    .prologue
    .line 3522
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->show()V

    .line 3523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->showActionPopupWindow(I)V

    .line 3524
    return-void
.end method

.method public updatePosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 3605
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3607
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3608
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->ensureMagnifierView()V
    invoke-static {v0}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)V

    .line 3609
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v0}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/widget/MagnifierView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/MagnifierView;->setShape(I)V

    .line 3610
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v0}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/widget/MagnifierView;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/MagnifierView;->showAt(II)V

    .line 3612
    :cond_0
    return-void
.end method

.method public updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 3600
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3601
    return-void
.end method
