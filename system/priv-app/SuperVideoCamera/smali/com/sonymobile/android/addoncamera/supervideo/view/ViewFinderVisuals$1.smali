.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;>;"
    const/4 v2, 0x0

    .line 1240
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 1241
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->updateMenuItems(Z)V

    .line 1242
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->updateShortcutItems()V

    .line 1243
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_PARAMETER_CHANGED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1244
    return-void
.end method
