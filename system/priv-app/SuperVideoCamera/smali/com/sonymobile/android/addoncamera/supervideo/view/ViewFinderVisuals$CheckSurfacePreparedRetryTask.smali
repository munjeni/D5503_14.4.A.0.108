.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSurfacePreparedRetryTask"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mSurface:Landroid/view/SurfaceHolder;

.field private final mWidth:I

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p2, "surface"    # Landroid/view/SurfaceHolder;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    .line 356
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->mWidth:I

    .line 357
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->mHeight:I

    .line 358
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mEnabledSurfaceCallback:Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->mWidth:I

    iget v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;->mHeight:I

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V

    .line 366
    :cond_0
    return-void
.end method
