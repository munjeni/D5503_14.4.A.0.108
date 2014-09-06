.class Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;
.super Ljava/lang/Object;
.source "BlurViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->release()V
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
    .line 335
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$200(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$200(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 340
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # setter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$202(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Lcom/sonymobile/cameracommon/opengl/YuvFrame;)Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;

    .line 344
    .local v1, "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->release()V

    .line 345
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 346
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 349
    .end local v1    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 351
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$400(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$500(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 353
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$500(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->setTargetElement(Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;)V

    .line 354
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    invoke-static {v2, v4}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$502(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    .line 356
    :cond_3
    monitor-exit v3

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
