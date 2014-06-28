.class Lcom/android/phone/SomcIncomingCallSliding$1;
.super Ljava/lang/Object;
.source "SomcIncomingCallSliding.java"

# interfaces
.implements Lcom/android/phone/SomcSlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcIncomingCallSliding;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcIncomingCallSliding;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcIncomingCallSliding;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onTap(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tapState"    # I

    .prologue
    .line 35
    packed-switch p2, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    # getter for: Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;
    invoke-static {v0}, Lcom/android/phone/SomcIncomingCallSliding;->access$000(Lcom/android/phone/SomcIncomingCallSliding;)Lcom/android/phone/SomcSlidingTab;

    move-result-object v0

    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingTab;->setHintText(I)V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    # getter for: Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;
    invoke-static {v0}, Lcom/android/phone/SomcIncomingCallSliding;->access$000(Lcom/android/phone/SomcIncomingCallSliding;)Lcom/android/phone/SomcSlidingTab;

    move-result-object v0

    const v1, 0x7f0b0108

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingTab;->setHintText(I)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    .line 46
    packed-switch p2, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    iget-object v0, v0, Lcom/android/phone/SomcIncomingCallView;->mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    invoke-interface {v0, p1}, Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;->onAnswerIncomingCall(Landroid/view/View;)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding$1;->this$0:Lcom/android/phone/SomcIncomingCallSliding;

    iget-object v0, v0, Lcom/android/phone/SomcIncomingCallView;->mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    invoke-interface {v0, p1}, Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;->onRejectIncomingCall(Landroid/view/View;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
