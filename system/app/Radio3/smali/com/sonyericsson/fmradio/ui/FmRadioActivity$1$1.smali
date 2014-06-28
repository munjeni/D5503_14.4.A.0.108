.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

.field final synthetic val$theme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->val$theme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->val$theme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    # setter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$002(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOnPaused:Z
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$100(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Off:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-eq v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addVisualizer()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addRadioUI(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$300(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Z)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v1

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addBackgroundDim(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$400(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;->this$1:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addRadioUI(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$300(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Z)V

    goto :goto_0
.end method
