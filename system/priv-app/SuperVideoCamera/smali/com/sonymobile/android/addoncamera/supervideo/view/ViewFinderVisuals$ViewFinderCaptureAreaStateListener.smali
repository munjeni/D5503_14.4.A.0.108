.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;
.super Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;
.source "ViewFinderVisuals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderCaptureAreaStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    .line 725
    return-void
.end method


# virtual methods
.method public onCaptureAreaCanceled()V
    .locals 3

    .prologue
    .line 745
    invoke-super {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->onCaptureAreaCanceled()V

    .line 746
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_CANCEL:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 748
    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_RELEASE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 739
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 741
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_TOUCH:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 732
    return-void
.end method
