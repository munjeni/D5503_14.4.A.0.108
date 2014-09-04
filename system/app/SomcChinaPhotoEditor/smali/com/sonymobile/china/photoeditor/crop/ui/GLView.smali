.class public Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# static fields
.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field public static final VISIBLE:I


# instance fields
.field private mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

.field private mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 68
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    .line 70
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMeasuredWidth:I

    .line 72
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMeasuredHeight:I

    .line 74
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastWidthSpec:I

    .line 76
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastHeightSpec:I

    .line 78
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mScrollY:I

    .line 80
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mScrollX:I

    .line 82
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mScrollHeight:I

    .line 84
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private removeOneComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V
    .locals 9
    .param p1, "component"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-ne v2, p1, :cond_0

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 183
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 185
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 188
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onDetachFromRoot()V

    .line 189
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .line 190
    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 343
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 345
    .local v0, "sizeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    return v0

    .line 343
    .end local v0    # "sizeChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .prologue
    .line 145
    iget-object v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iput-object p0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .line 156
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onAttachToRoot(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    .line 159
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V
    .locals 1
    .param p1, "root"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onAttachToRoot(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    .line 121
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onDetachFromRoot()V

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 288
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 289
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 290
    .local v10, "action":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v0, :cond_0

    .line 291
    if-nez v10, :cond_2

    .line 292
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 293
    .local v1, "cancel":Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 294
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sonymobile/china/photoeditor/crop/ui/GLView;Z)Z

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .line 304
    .end local v1    # "cancel":Landroid/view/MotionEvent;
    :cond_0
    if-nez v10, :cond_6

    .line 306
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_6

    .line 307
    invoke-virtual {p0, v11}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponent(I)Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    move-result-object v8

    .line 308
    .local v8, "component":Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 297
    .end local v8    # "component":Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    .end local v11    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sonymobile/china/photoeditor/crop/ui/GLView;Z)Z

    .line 298
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 299
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .line 301
    :cond_4
    const/4 v0, 0x1

    .line 316
    :goto_1
    return v0

    .line 310
    .restart local v8    # "component":Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    .restart local v11    # "i":I
    :cond_5
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sonymobile/china/photoeditor/crop/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMotionTarget:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .line 312
    const/4 v0, 0x1

    goto :goto_1

    .line 316
    .end local v8    # "component":Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    .end local v11    # "i":I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sonymobile/china/photoeditor/crop/ui/GLView;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "component"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    .param p5, "checkBounds"    # Z

    .prologue
    .line 272
    iget-object v1, p4, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 273
    .local v1, "rect":Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 274
    .local v0, "left":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 275
    .local v2, "top":I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 277
    invoke-virtual {p4, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 279
    const/4 v3, 0x1

    .line 283
    :goto_0
    return v3

    .line 281
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 283
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBoundsOf(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "descendant"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 390
    const/4 v2, 0x0

    .line 391
    .local v2, "xoffset":I
    const/4 v3, 0x0

    .line 392
    .local v3, "yoffset":I
    move-object v1, p1

    .line 393
    .local v1, "view":Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 394
    if-nez v1, :cond_0

    .line 395
    const/4 v4, 0x0

    .line 402
    :goto_1
    return v4

    .line 396
    :cond_0
    iget-object v0, v1, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 397
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 398
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 399
    iget-object v1, v1, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .line 400
    goto :goto_0

    .line 401
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 402
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v0

    .line 212
    .local v0, "root":Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->requestRender()V

    .line 214
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->setBounds(IIII)Z

    move-result v6

    .line 333
    .local v6, "sizeChanged":Z
    if-eqz v6, :cond_1

    .line 334
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    .line 335
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onLayout(ZIIII)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 337
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    .line 338
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->lockRenderThread()V

    .line 432
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 350
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 364
    :cond_0
    return-void

    .line 355
    :cond_1
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastWidthSpec:I

    .line 356
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastHeightSpec:I

    .line 358
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onMeasure(II)V

    .line 360
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 417
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponent(I)Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onAttachToRoot(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 423
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponent(I)Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onDetachFromRoot()V

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .line 426
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 384
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 367
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 407
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponent(I)Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    move-result-object v0

    .line 408
    .local v0, "child":Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 409
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onVisibilityChanged(I)V

    .line 406
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "child":Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
    :cond_1
    return-void
.end method

.method public removeAllComponents()V
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->removeOneComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 178
    return-void
.end method

.method public removeComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)Z
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->removeOneComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected render(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->renderBackground(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getComponent(I)Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->renderChild(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method protected renderBackground(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 0
    .param p1, "view"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 239
    return-void
.end method

.method protected renderChild(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V
    .locals 6
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "component"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    .prologue
    const/4 v5, 0x0

    .line 242
    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    if-nez v3, :cond_0

    .line 264
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v3, p2, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    .line 246
    .local v1, "xoffset":I
    iget-object v3, p2, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    .line 248
    .local v2, "yoffset":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->translate(FFF)V

    .line 250
    iget-object v0, p2, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    .line 251
    .local v0, "anim":Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;
    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->save(I)I

    .line 253
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->invalidate()V

    .line 258
    :goto_1
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;->apply(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 260
    :cond_1
    invoke-virtual {p2, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->render(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 261
    if-eqz v0, :cond_2

    .line 262
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->restore()V

    .line 263
    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->translate(FFF)V

    goto :goto_0

    .line 256
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 218
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    .line 219
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastHeightSpec:I

    .line 220
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mLastWidthSpec:I

    .line 221
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mParent:Lcom/sonymobile/china/photoeditor/crop/ui/GLView;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->requestLayout()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v0

    .line 226
    .local v0, "root":Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 370
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    .line 371
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMeasuredWidth:I

    .line 372
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mMeasuredHeight:I

    .line 373
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    if-nez p1, :cond_1

    .line 104
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    .line 108
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onVisibilityChanged(I)V

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->invalidate()V

    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public startAnimation(Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v0

    .line 88
    .local v0, "root":Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    .line 91
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;->start()V

    .line 93
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->registerLaunchedAnimation(Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->invalidate()V

    .line 96
    return-void
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->mRoot:Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->unlockRenderThread()V

    .line 438
    :cond_0
    return-void
.end method
