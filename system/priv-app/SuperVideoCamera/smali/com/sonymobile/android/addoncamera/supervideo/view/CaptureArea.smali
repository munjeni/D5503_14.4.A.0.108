.class public Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;
.super Landroid/widget/ImageView;
.source "CaptureArea.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaTouchEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureArea"


# instance fields
.field private mIsLongPressed:Z

.field private mIsTouched:Z

.field private mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

.field private mTouchListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaTouchEventListener;

.field private mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    .line 35
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsLongPressed:Z

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 41
    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaTouchEventListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mTouchListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaTouchEventListener;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, "toucharea_margin":I
    new-instance v1, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v1, p1, p0, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 56
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 58
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mTouchListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;)Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    return-object v0
.end method

.method private convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .param p1, "viewPoint"    # Landroid/graphics/Point;

    .prologue
    .line 97
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 98
    .local v0, "locationOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 100
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 122
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 123
    .local v0, "locationOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    return v0
.end method

.method public onDoubleCanceled()V
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    .line 263
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0
.end method

.method public onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 228
    return-void
.end method

.method public onDoubleRotated(FF)V
    .locals 0
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 244
    return-void
.end method

.method public onDoubleScaled(FFF)V
    .locals 2
    .param p1, "currentLength"    # F
    .param p2, "previousLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    sub-float v0, p1, p2

    .line 238
    .local v0, "scaleLength":F
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaScaled(F)V

    goto :goto_0
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    .line 221
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaIsReadyToScale()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocX"    # F
    .param p4, "velocY"    # F

    .prologue
    .line 289
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsLongPressed:Z

    .line 296
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 299
    .local v0, "curPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaLongPressed(Landroid/graphics/Point;)V

    .line 302
    .end local v0    # "curPoint":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public onOverTripleCanceled()V
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    .line 280
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    return-void
.end method

.method public onSingleCanceled()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    .line 206
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->isTouched()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaMoved(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsLongPressed:Z

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    .line 188
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsLongPressed:Z

    .line 190
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "release"    # Landroid/graphics/Point;
    .param p2, "remain"    # Landroid/graphics/Point;

    .prologue
    .line 249
    return-void
.end method

.method public onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaStopped()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 314
    .local v0, "curPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V

    .line 317
    .end local v0    # "curPoint":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mIsTouched:Z

    .line 139
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched(Landroid/graphics/Point;)V

    .line 143
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->release()V

    .line 64
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 66
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    return-void
.end method

.method public setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;

    .line 118
    return-void
.end method
