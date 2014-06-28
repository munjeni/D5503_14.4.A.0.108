.class Landroid/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 1

    .prologue
    .line 2059
    iput-object p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2063
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2064
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .param p1, "button"    # I

    .prologue
    .line 2084
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2085
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2086
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2087
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2088
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2091
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2092
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2093
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2094
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2095
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2070
    iput v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2071
    iput v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2072
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2073
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->access$1302(Landroid/widget/NumberPicker;Z)Z

    .line 2075
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 2077
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->access$1702(Landroid/widget/NumberPicker;Z)Z

    .line 2078
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1700(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2079
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 2081
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2099
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2133
    :goto_0
    return-void

    .line 2101
    :pswitch_0
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2103
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPicker;->access$1302(Landroid/widget/NumberPicker;Z)Z

    .line 2104
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2000(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2107
    :pswitch_2
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPicker;->access$1702(Landroid/widget/NumberPicker;Z)Z

    .line 2108
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2200(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2113
    :pswitch_3
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2115
    :pswitch_4
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2116
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2119
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # ^= operator for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPicker;->access$1380(Landroid/widget/NumberPicker;I)Z

    .line 2120
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2300(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$2400(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2123
    :pswitch_5
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1700(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2127
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # ^= operator for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPicker;->access$1780(Landroid/widget/NumberPicker;I)Z

    .line 2128
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2500(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2099
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2101
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2113
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
