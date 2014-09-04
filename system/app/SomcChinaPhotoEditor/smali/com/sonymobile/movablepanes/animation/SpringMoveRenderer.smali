.class public Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;
.super Ljava/lang/Object;
.source "SpringMoveRenderer.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/animation/Renderer;
.implements Lcom/sonymobile/movablepanes/util/Recyclable;


# static fields
.field private static final mRecycleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

.field private final mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

.field private mStartRect:Landroid/graphics/Rect;

.field private mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000

    const/high16 v2, 0x40000000

    const v1, 0x3f666666

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    .line 46
    new-instance v0, Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    .line 48
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setFriction(F)V

    .line 49
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v0, v3, v1}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 50
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setFriction(F)V

    .line 51
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v0, v3, v1}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 52
    return-void
.end method

.method private drawView(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "top"    # I
    .param p4, "left"    # I

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    int-to-float v0, p4

    int-to-float v1, p3

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static obtain()Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "targetRect"    # Landroid/graphics/Rect;
    .param p4, "now"    # J

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    .line 68
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 69
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 71
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 72
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 74
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mStopped:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 76
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v2

    float-to-int v0, v2

    .line 83
    .local v0, "left":I
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v2

    float-to-int v1, v2

    .line 85
    .local v1, "top":I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->drawView(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 87
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2, v4, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->isAtRest(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2, v4, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->isAtRest(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const/4 v2, 0x0

    .line 90
    :goto_1
    return v2

    .line 78
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->update(J)V

    .line 79
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->update(J)V

    goto :goto_0

    .line 90
    .restart local v0    # "left":I
    .restart local v1    # "top":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "targetRect"    # Landroid/graphics/Rect;
    .param p4, "now"    # J

    .prologue
    .line 96
    invoke-static {p1}, Lcom/sonymobile/movablepanes/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v0

    return v0
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 118
    return-void
.end method

.method public offset(IIJ)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "now"    # J

    .prologue
    .line 121
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v0

    .line 122
    .local v0, "left":F
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v1

    .line 123
    .local v1, "top":F
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    int-to-float v3, p1

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v4

    invoke-virtual {v2, v3, v4, p3, p4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 124
    iget-object v2, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    int-to-float v3, p2

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v4

    invoke-virtual {v2, v3, v4, p3, p4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 125
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 129
    return-void
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 3
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "xOffset"    # I
    .param p3, "yOffst"    # I
    .param p4, "now"    # J

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->mStopped:Z

    .line 112
    return-void
.end method
