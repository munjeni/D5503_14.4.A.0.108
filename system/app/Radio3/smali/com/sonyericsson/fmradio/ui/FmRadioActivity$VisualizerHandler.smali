.class final Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;
.super Landroid/os/Handler;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VisualizerHandler"
.end annotation


# static fields
.field static final MSG_CHANGE_PLAY_STATE:I = 0x0

.field static final MSG_CHANGE_THEME:I = 0x3

.field static final MSG_START_VISUALIZER:I = 0x1

.field static final MSG_UPDATE_PROGRESS:I = 0x2

.field static final UPDATE_PROGRESS_INTERVAL:I = 0x3e8

.field static final VISUALIZER_CALL_DELAY:I = 0x1f4


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 1487
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 1488
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 1489
    .local v0, "state":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->setPlayState(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;)V

    .line 1518
    .end local v0    # "state":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2

    .line 1494
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->changeTheme(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 1498
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1502
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1503
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPositionTimer:Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1900(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->reset()V

    .line 1504
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPositionTimer:Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1900(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->start()V

    .line 1505
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1507
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_4

    .line 1508
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v1, :cond_3

    .line 1509
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPositionTimer:Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1900(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->setPlaybackPosition(J)V

    .line 1511
    :cond_3
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1513
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1514
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->changeTheme(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    goto :goto_0
.end method

.method public removeMessages()V
    .locals 1

    .prologue
    .line 1525
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1526
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1527
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1528
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1529
    return-void
.end method
