.class public Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;
.super Landroid/widget/FrameLayout;
.source "ClusterWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;-><init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;-><init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    .line 191
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 198
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 204
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 210
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 211
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->dismiss()V

    goto :goto_0

    .line 215
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 217
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 224
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 226
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->dismiss()V

    .line 234
    :goto_0
    return v2

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 231
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->dismiss()V

    goto :goto_0

    .line 234
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method
