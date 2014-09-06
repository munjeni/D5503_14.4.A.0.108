.class Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;
.super Ljava/lang/Object;
.source "BlurViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->setBlurTargetAreas(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

.field final synthetic val$requestedBlurAreas:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    iput-object p2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->val$requestedBlurAreas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 507
    iget-object v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;

    .line 508
    .local v3, "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    iget-object v4, v3, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->release()V

    .line 509
    iget-object v4, v3, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    iget-object v4, v3, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 513
    .end local v3    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 516
    iget-object v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->val$requestedBlurAreas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 517
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    invoke-direct {v0, v4, v5}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 520
    .local v0, "frame":Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$600(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->setShaderProgram(I)V

    .line 522
    new-instance v3, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # invokes: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->createMaskBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v4, v2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$700(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v0, v2, v4}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;-><init>(Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 527
    .restart local v3    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 529
    .end local v0    # "frame":Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    :cond_2
    return-void
.end method
