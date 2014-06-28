.class Lcom/android/mms/ui/SlideshowPresenter$2;
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

.field final synthetic val$model:Lcom/android/mms/model/Model;

.field final synthetic val$view:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$model:Lcom/android/mms/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->val$model:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 283
    return-void
.end method
