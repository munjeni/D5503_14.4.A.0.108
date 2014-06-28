.class Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$1;
.super Ljava/lang/Object;
.source "UXVisualizerSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->changeTheme(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

.field final synthetic val$newTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;


# direct methods
.method constructor <init>(Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$1;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iput-object p2, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$1;->val$newTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$1;->this$0:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v0, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->mRenderer:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;

    iget-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView$1;->val$newTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->changeTheme(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 60
    return-void
.end method
