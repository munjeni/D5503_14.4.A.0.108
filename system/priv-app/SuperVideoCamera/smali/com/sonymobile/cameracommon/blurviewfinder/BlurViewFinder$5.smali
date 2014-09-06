.class Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$5;
.super Ljava/lang/Object;
.source "BlurViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$5;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$5;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$800(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$5;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 679
    :cond_0
    return-void
.end method
