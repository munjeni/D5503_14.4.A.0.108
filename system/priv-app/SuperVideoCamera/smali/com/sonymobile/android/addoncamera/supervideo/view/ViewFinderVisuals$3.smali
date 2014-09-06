.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$3;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->startHideThumbnail()V
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
    .line 1390
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$1000(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hideThumbnail()V

    .line 1396
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1401
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1406
    return-void
.end method
