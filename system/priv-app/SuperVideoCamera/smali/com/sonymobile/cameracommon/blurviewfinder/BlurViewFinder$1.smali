.class Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$1;
.super Ljava/lang/Object;
.source "BlurViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->setAlphaMaskResId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;I)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$1;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    iput p2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$1;->this$0:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    iget v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$1;->val$resId:I

    # setter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mMaskResId:I
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$102(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;I)I

    .line 287
    return-void
.end method
