.class Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;
.super Ljava/lang/Object;
.source "SomcInCallButtonPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/content/Context;Landroid/view/View;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 698
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v3

    .line 730
    :goto_1
    return v2

    .line 700
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 701
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # setter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z
    invoke-static {v4, v3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$302(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;Z)Z

    .line 702
    # getter for: Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z
    invoke-static {}, Lcom/android/phone/SomcInCallButtonPanel;->access$400()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 703
    # setter for: Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z
    invoke-static {v3}, Lcom/android/phone/SomcInCallButtonPanel;->access$402(Z)Z

    goto :goto_1

    .line 711
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 712
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 713
    .local v1, "y":I
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$500(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 714
    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 715
    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # setter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z
    invoke-static {v2, v3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$302(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;Z)Z

    goto :goto_0

    .line 716
    :cond_1
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z
    invoke-static {v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$300(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 717
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressed()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$600(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 718
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # setter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z
    invoke-static {v4, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$302(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;Z)Z

    goto :goto_0

    .line 723
    .end local v0    # "x":I
    .end local v1    # "y":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # invokes: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressed()V
    invoke-static {v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$600(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 724
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    # setter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z
    invoke-static {v4, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$302(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;Z)Z

    .line 725
    # setter for: Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z
    invoke-static {v3}, Lcom/android/phone/SomcInCallButtonPanel;->access$402(Z)Z

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
