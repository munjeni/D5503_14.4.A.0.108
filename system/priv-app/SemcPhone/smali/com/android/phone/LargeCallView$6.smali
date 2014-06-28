.class Lcom/android/phone/LargeCallView$6;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswerIncomingCall(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlayingOrRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x22

    invoke-interface {v0, v1, v4}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->hideAmAnimation()V

    .line 456
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/phone/LargeCallView;->showSingleCallLayout(ZZZ)V

    .line 457
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/LargeCallView;->showOptionMenuButton(Z)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->pickUpCallByUser()V

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, v3, v4}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    # invokes: Lcom/android/phone/LargeCallView;->animateHideIncomingCallView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/phone/LargeCallView;->access$700(Lcom/android/phone/LargeCallView;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onRejectIncomingCall(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlayingOrRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->hideAmAnimation()V

    .line 478
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView;->showEndingLastCallLayout(I)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 482
    return-void
.end method
