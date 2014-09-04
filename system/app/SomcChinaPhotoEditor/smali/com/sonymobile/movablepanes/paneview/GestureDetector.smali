.class public Lcom/sonymobile/movablepanes/paneview/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;,
        Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;
    }
.end annotation


# instance fields
.field private mEnableHorizontalDrag:Z

.field private mEnableVerticalDrag:Z

.field private mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

.field private mHandler:Landroid/os/Handler;

.field private mLastX:I

.field private mLastY:I

.field private mLongPressDelay:J

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mNotClickOrLongPressCalled:Z

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

.field private mTouchSlop2:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;IJ)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;
    .param p2, "touchSlop"    # I
    .param p3, "longPressDelay"    # J

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;-><init>(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 182
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    .line 183
    mul-int v0, p2, p2

    iput v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mTouchSlop2:I

    .line 184
    iput-wide p3, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLongPressDelay:J

    .line 185
    sget-object v0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/movablepanes/paneview/GestureDetector;Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;)Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/GestureDetector;
    .param p1, "x1"    # Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartX:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartY:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    return-object v0
.end method

.method private handleDefaultTouch()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 374
    :cond_0
    sget-object v0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mNotClickOrLongPressCalled:Z

    .line 376
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 298
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 299
    .local v1, "y":I
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v2, v0, v1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onTouchStart(II)V

    .line 300
    iput v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastX:I

    .line 301
    iput v1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastY:I

    .line 302
    iput v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartX:I

    .line 303
    iput v1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartY:I

    .line 304
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 305
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 306
    sget-object v2, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    .line 307
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLongPressDelay:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void
.end method

.method private handleTouchEnd()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleDefaultTouch()V

    .line 365
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onTouchEnd()V

    .line 366
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 317
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 319
    .local v3, "y":I
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v5, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v5, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v4, v5, :cond_1

    .line 320
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->startDragIfNeeded(II)V

    .line 322
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v5, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v4, v5, :cond_3

    .line 323
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastX:I

    sub-int v0, v2, v4

    .line 324
    .local v0, "dx":I
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->onNotClickOrLongPress()V

    .line 325
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v4, v0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onHorizontalDrag(I)V

    .line 326
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 334
    .end local v0    # "dx":I
    :cond_2
    :goto_0
    iput v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastX:I

    .line 335
    iput v3, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastY:I

    .line 336
    return-void

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v5, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v4, v5, :cond_2

    .line 328
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastY:I

    sub-int v1, v3, v4

    .line 329
    .local v1, "dy":I
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->onNotClickOrLongPress()V

    .line 330
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v4, v1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onVerticalDrag(I)V

    .line 331
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 344
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v2, v3, :cond_0

    .line 345
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartX:I

    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartY:I

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onClick(II)V

    .line 346
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    .line 358
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v2, v3, :cond_2

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 350
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 351
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 352
    .local v0, "velocityX":F
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 353
    .local v1, "velocityY":F
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v2, v0, v1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onFling(FF)V

    .line 354
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    goto :goto_0

    .line 356
    .end local v0    # "velocityX":F
    .end local v1    # "velocityY":F
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    goto :goto_0
.end method

.method private onNotClickOrLongPress()V
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mNotClickOrLongPressCalled:Z

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onNotClickOrLongPress()V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mNotClickOrLongPressCalled:Z

    .line 414
    :cond_0
    return-void
.end method

.method private startDragIfNeeded(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 386
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartX:I

    sub-int v0, p1, v4

    .line 387
    .local v0, "dx":I
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartY:I

    sub-int v2, p2, v4

    .line 388
    .local v2, "dy":I
    mul-int v1, v0, v0

    .line 389
    .local v1, "dx2":I
    mul-int v3, v2, v2

    .line 390
    .local v3, "dy2":I
    add-int v4, v1, v3

    iget v5, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mTouchSlop2:I

    if-le v4, v5, :cond_1

    .line 391
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 392
    if-le v1, v3, :cond_2

    .line 393
    iget-boolean v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mEnableHorizontalDrag:Z

    if-eqz v4, :cond_0

    .line 394
    sget-object v4, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    .line 401
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->isDragging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    sget-object v4, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    .line 404
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->onNotClickOrLongPress()V

    .line 407
    :cond_1
    return-void

    .line 397
    :cond_2
    iget-boolean v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mEnableVerticalDrag:Z

    if-eqz v4, :cond_0

    .line 398
    sget-object v4, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    iput-object v4, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public cancelTouch()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v1, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v0, v1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleTouchEnd()V

    .line 224
    :cond_0
    return-void
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mLastY:I

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v1, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v1, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mEnableHorizontalDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mEnableVerticalDrag:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleDefaultTouch()V

    .line 288
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 273
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnableHorizontalDrag(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mEnableHorizontalDrag:Z

    .line 196
    return-void
.end method

.method public setEnableVerticalDrag(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mEnableVerticalDrag:Z

    .line 205
    return-void
.end method
