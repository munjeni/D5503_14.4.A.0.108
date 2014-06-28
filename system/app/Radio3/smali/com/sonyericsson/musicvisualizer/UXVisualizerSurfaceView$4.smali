.class Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;
.super Ljava/lang/Object;
.source "UXVisualizerSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->handleTouchEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

.field final synthetic val$newX:I

.field final synthetic val$newY:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;II)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iput p2, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;->val$newX:I

    iput p3, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;->val$newY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v0, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    iget v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;->val$newX:I

    iget v2, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$4;->val$newY:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->handleTouchEvent(II)V

    .line 91
    return-void
.end method
