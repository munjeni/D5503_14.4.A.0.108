.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderTouchActionStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    return-void
.end method


# virtual methods
.method public onCaptureAreaCanceled()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 687
    return-void
.end method

.method public onCaptureAreaIsReadyToScale()V
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_PREPARE_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 703
    return-void
.end method

.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 697
    return-void
.end method

.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 670
    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 681
    return-void
.end method

.method public onCaptureAreaScaled(F)V
    .locals 5
    .param p1, "scaleLength"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 708
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_START_TOUCH_ZOOM_IN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 716
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_STOP_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 717
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_START_TOUCH_ZOOM_OUT:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 692
    return-void
.end method

.method public onCaptureAreaStopped()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 665
    return-void
.end method
