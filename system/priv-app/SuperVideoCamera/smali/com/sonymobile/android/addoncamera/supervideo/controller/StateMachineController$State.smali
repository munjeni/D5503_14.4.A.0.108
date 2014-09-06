.class public Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
.super Ljava/lang/Object;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field protected mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 167
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public getCaptureState()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    return-object v0
.end method

.method public varargs handleCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 297
    return-void
.end method

.method public varargs handleCamcordButtonTouch([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 294
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 303
    return-void
.end method

.method public varargs handleCaptureButtonTouch([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 300
    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 211
    return-void
.end method

.method public varargs handleFinishTouchZoom([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 284
    return-void
.end method

.method public varargs handleInitialize([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 199
    return-void
.end method

.method public varargs handleKeyBack([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 268
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 253
    return-void
.end method

.method public varargs handleKeyCaptureUp([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 256
    return-void
.end method

.method public varargs handleKeyFocusDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 247
    return-void
.end method

.method public varargs handleKeyFocusUp([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 250
    return-void
.end method

.method public varargs handleKeyZoomInDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 259
    return-void
.end method

.method public varargs handleKeyZoomOutDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 262
    return-void
.end method

.method public varargs handleKeyZoomUp([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 265
    return-void
.end method

.method public varargs handleOnEvfPreparationFailed([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 216
    return-void
.end method

.method public varargs handleOnEvfPreparationSucceeded([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 219
    return-void
.end method

.method public varargs handleOnHeadUpDisplayInitialized([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 309
    return-void
.end method

.method public varargs handleOnPhotoStackInitialized([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 306
    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 325
    return-void
.end method

.method public varargs handleOnRecordingProgressCheckPoint([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 328
    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 332
    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 232
    return-void
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 229
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 335
    return-void
.end method

.method public handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 322
    return-void
.end method

.method public varargs handleParameterChanged([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 339
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 208
    return-void
.end method

.method public varargs handlePrepareTouchZoom([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 272
    return-void
.end method

.method public varargs handleReachHighTemperature([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 224
    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 202
    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 205
    return-void
.end method

.method public handleStartRecording([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 319
    return-void
.end method

.method public varargs handleStartTouchZoomIn([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 275
    return-void
.end method

.method public varargs handleStartTouchZoomOut([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 278
    return-void
.end method

.method public varargs handleStopTouchZoom([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 281
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 238
    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 235
    return-void
.end method

.method public varargs handleStorageShouldChange([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHORAGE_DIALOG_OPEN:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public varargs handleTouchAreaRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 291
    return-void
.end method

.method public varargs handleTouchAreaTouch([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 288
    return-void
.end method

.method public varargs handleUIComponentDisplayed([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 312
    return-void
.end method

.method public varargs handleUIComponentHidden([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 315
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
