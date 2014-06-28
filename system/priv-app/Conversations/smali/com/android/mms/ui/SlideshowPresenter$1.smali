.class Lcom/android/mms/ui/SlideshowPresenter$1;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    .line 81
    .local v0, "layout":Lcom/android/mms/model/LayoutModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v3

    # invokes: Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F
    invoke-static {v2, p1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v2

    iput v2, v1, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 82
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v3

    # invokes: Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F
    invoke-static {v2, p2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v2

    iput v2, v1, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 87
    return-void
.end method
