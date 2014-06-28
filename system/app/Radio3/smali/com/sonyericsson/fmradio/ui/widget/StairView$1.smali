.class Lcom/sonyericsson/fmradio/ui/widget/StairView$1;
.super Ljava/lang/Object;
.source "StairView.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/widget/StairView;->createClusterWindow(Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/widget/StairView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/widget/StairView;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewSelected(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    # getter for: Lcom/sonyericsson/fmradio/ui/widget/StairView;->mOnTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->access$000(Lcom/sonyericsson/fmradio/ui/widget/StairView;)Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    # getter for: Lcom/sonyericsson/fmradio/ui/widget/StairView;->mOnTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->access$000(Lcom/sonyericsson/fmradio/ui/widget/StairView;)Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;->onTapped(Landroid/view/View;)V

    .line 552
    :cond_0
    return-void
.end method
