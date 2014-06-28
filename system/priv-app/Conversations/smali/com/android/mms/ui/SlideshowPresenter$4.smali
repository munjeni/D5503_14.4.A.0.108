.class Lcom/android/mms/ui/SlideshowPresenter$4;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowPresenter;->onModelChanged(Lcom/android/mms/model/Model;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;

.field final synthetic val$dataChanged:Z

.field final synthetic val$model:Lcom/android/mms/model/Model;

.field final synthetic val$view:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$model:Lcom/android/mms/model/Model;

    iput-boolean p4, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$dataChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$model:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$dataChanged:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    .line 297
    return-void
.end method
