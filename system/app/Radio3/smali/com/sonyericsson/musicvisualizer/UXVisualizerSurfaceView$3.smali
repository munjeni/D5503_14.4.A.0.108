.class Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$3;
.super Ljava/lang/Object;
.source "UXVisualizerSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->setPlaybackPosition(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

.field final synthetic val$newPosition:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;J)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$3;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iput-wide p2, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$3;->val$newPosition:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$3;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v0, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    iget-wide v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$3;->val$newPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->setPlaybackPosition(J)V

    .line 80
    return-void
.end method
