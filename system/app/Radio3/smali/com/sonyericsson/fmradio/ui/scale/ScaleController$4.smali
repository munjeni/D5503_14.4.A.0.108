.class Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;
.super Ljava/lang/Object;
.source "ScaleController.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/scale/ScaleController;-><init>(Landroid/view/ViewGroup;Lcom/stericsson/hardware/fm/FmBand;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChanged()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v1

    sget-object v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->NONE:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;-><init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method
