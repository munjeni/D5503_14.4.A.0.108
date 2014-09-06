.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;
.super Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePhotoUIComponentDisplaying"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 2

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 1018
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_UI_COMPONENT_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 1021
    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    .line 1022
    .local v0, "paramApplyer":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;)V

    .line 1023
    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->commit()V

    .line 1024
    return-void
.end method

.method private restorePhotoLight()V
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->apply(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;Z)V

    .line 1014
    return-void
.end method


# virtual methods
.method public varargs handleKeyBack([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1049
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_CLOSE_DIALOGS:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1051
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->restorePhotoLight()V

    .line 1052
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1053
    return-void
.end method

.method public varargs handleParameterChanged([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    .line 1072
    .local v0, "paramApplyer":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->apply(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;Z)V

    .line 1073
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;)V

    .line 1074
    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->commit()V

    .line 1075
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1066
    return-void
.end method

.method public varargs handleReachHighTemperature([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1058
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_CLOSE_DIALOGS:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1060
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1061
    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1082
    return-void
.end method

.method public varargs handleUIComponentDisplayed([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1035
    return-void
.end method

.method public varargs handleUIComponentHidden([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1040
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_CLOSE_DIALOGS:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1042
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->restorePhotoLight()V

    .line 1043
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1044
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x1

    return v0
.end method
