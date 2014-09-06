.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V
    .locals 5
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p2, "allClosed"    # Z

    .prologue
    .line 1251
    if-eqz p2, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->clearShortcutSelected()V

    .line 1254
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isAllDialogClosed()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$700(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_HIDDEN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToDimSystemUi()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$800(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    .line 1261
    return-void
.end method

.method public onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V
    .locals 5
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p2, "isAlreadyOpened"    # Z
    .param p3, "isAnimation"    # Z

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 1268
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToRecoverSystemUi()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$900(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    .line 1269
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_DISPLAYED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1271
    return-void
.end method
