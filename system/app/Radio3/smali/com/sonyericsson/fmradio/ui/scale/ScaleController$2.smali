.class Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;
.super Ljava/lang/Object;
.source "ScaleController.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
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
    .line 189
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTapped(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    .local v0, "frequency":I
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->tapMove(I)V

    .line 194
    return-void
.end method
