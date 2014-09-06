.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CamcordButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_CANCEL:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1188
    return-void
.end method

.method public onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1193
    return-void
.end method

.method public onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->closeDialogs(Z)V

    .line 1159
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_TOUCH:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1162
    return-void
.end method

.method public onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1178
    return-void
.end method

.method public onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_RELEASE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1173
    return-void
.end method
