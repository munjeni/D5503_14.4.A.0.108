.class Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$5;
.super Ljava/lang/Object;
.source "UXVisualizerSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->destroyRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$5;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$5;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v0, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    invoke-virtual {v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->destroy()V

    .line 107
    return-void
.end method
