.class public Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;
.super Landroid/widget/FrameLayout;
.source "FrequencyScale.java"


# static fields
.field private static final TAP_MIN_DELAY_MS:J = 0x2eeL


# instance fields
.field private mDelegate:Landroid/view/View;

.field private mDelegateOffset:Landroid/graphics/Point;

.field private mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

.field private mLastTapTime:J

.field private mStationView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

.field private mTapX:I

.field private mTapY:I

.field private mTouchSlop:I

.field private mTrackTap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mLastTapTime:J

    .line 72
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 73
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTouchSlop:I

    .line 74
    return-void
.end method

.method private doTap(IILandroid/view/MotionEvent;)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "found":Z
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mStationView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->tryTap(Lcom/sonyericsson/fmradio/ui/widget/StairView;IILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 135
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->tryTap(Lcom/sonyericsson/fmradio/ui/widget/StairView;IILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 136
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 134
    goto :goto_0

    :cond_1
    move v0, v2

    .line 135
    goto :goto_1
.end method

.method private tryTap(Lcom/sonyericsson/fmradio/ui/widget/StairView;IILandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sonyericsson/fmradio/ui/widget/StairView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    .local v0, "offset":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 141
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, v2, p4}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->dispatchTap(IILandroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 148
    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mStationView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .line 149
    const v1, 0x7f0c0017

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .line 151
    const v1, 0x7f0c0013

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mDelegate:Landroid/view/View;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .local v0, "offset":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mDelegate:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 154
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mDelegateOffset:Landroid/graphics/Point;

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, "handleTap":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mDelegate:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 113
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mDelegateOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mDelegateOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 114
    if-eqz v2, :cond_1

    .line 116
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mDelegate:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 123
    .local v3, "handled":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 124
    iget v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTapX:I

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTapY:I

    invoke-direct {p0, v4, v5, p1}, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->doTap(IILandroid/view/MotionEvent;)V

    .line 127
    :cond_2
    return v3

    .line 84
    .end local v3    # "handled":Z
    :pswitch_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTrackTap:Z

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTapX:I

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTapY:I

    goto :goto_0

    .line 89
    :pswitch_1
    iget-boolean v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTrackTap:Z

    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTapX:I

    sub-int v0, v4, v5

    .line 91
    .local v0, "dx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTapY:I

    sub-int v1, v4, v5

    .line 93
    .local v1, "dy":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTouchSlop:I

    if-gt v4, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTouchSlop:I

    if-le v4, v5, :cond_0

    .line 95
    :cond_3
    iput-boolean v8, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTrackTap:Z

    goto :goto_0

    .line 100
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_2
    iget-boolean v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTrackTap:Z

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mLastTapTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2ee

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mLastTapTime:J

    .line 103
    const/4 v2, 0x1

    .line 105
    :cond_4
    iput-boolean v8, p0, Lcom/sonyericsson/fmradio/ui/widget/FrequencyScale;->mTrackTap:Z

    goto :goto_0

    .line 120
    :cond_5
    const/4 v3, 0x1

    .restart local v3    # "handled":Z
    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
