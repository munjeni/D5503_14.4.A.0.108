.class Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;
.super Ljava/lang/Object;
.source "BlurViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->clear()V
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
    .line 577
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 580
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;

    .line 581
    .local v1, "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->release()V

    .line 582
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 586
    .end local v1    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 588
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$400(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 589
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$500(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 590
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$500(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->updateTarget(F)V

    .line 591
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$500(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->resetActual()V

    .line 593
    :cond_2
    monitor-exit v3

    .line 594
    return-void

    .line 593
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
