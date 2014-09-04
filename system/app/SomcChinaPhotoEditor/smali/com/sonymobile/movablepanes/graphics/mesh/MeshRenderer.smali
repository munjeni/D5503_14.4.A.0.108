.class public Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;
.super Ljava/lang/Object;
.source "MeshRenderer.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/animation/Renderer;
.implements Lcom/sonymobile/movablepanes/util/Recyclable;


# instance fields
.field private final mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

.field private mAnimTime:J

.field private mBadgeIcon:Landroid/graphics/Bitmap;

.field private mBadgeOffsetX:I

.field private mBadgeOffsetY:I

.field private mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

.field private mClosestVertexIndex:I

.field private final mConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRect:Landroid/graphics/Rect;

.field private final mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

.field private final mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

.field private final mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

.field private final mMeshVertexArray:[F

.field private final mPaintBitmapMesh:Landroid/graphics/Paint;

.field private final mPhysicsBox:Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;

.field private mScaleFactor:F

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x43c80000

    const v4, 0x3f666666

    const/4 v1, 0x2

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-direct {v0, v1, v1}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    .line 88
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMeshVertexArray:[F

    .line 91
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    const v1, 0x443b8000

    invoke-static {v0, v1}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshUtils;->createConstraintListForMesh(Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;F)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    const/high16 v3, 0x41700000

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;-><init>(Ljava/util/List;Ljava/util/List;F)V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPhysicsBox:Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    .line 99
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    const/high16 v1, 0x42c80000

    const/high16 v2, 0x3f400000

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 101
    new-instance v0, Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    .line 102
    new-instance v0, Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    .line 104
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 106
    return-void
.end method

.method private moveTo(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 274
    iget v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v5}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshUtils;->findClosestVertex(FFLjava/util/List;)Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    move-result-object v0

    .line 279
    .local v0, "closestVertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    .line 280
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->movable:Z

    .line 283
    .end local v0    # "closestVertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 286
    .restart local v0    # "closestVertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    packed-switch v3, :pswitch_data_0

    .line 308
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v3, v4

    .line 310
    .local v1, "diffX":I
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v3, v4

    .line 311
    .local v2, "diffY":I
    iget v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 312
    iget v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    .line 314
    :cond_2
    iget v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 315
    iget v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    .line 319
    .end local v1    # "diffX":I
    .end local v2    # "diffY":I
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v5}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mScaleFactor:F

    mul-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mScaleFactor:F

    mul-float/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshUtils;->setupAbsoluteConstraintsForMeshRect(Ljava/util/List;IIFF)V

    .line 322
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 323
    return-void

    .line 288
    :pswitch_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    .line 289
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    goto :goto_0

    .line 293
    :pswitch_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    .line 294
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 298
    :pswitch_2
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    .line 299
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 303
    :pswitch_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    .line 304
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "now"    # J

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->update(J)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->update(J)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->update(J)V

    .line 192
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v12, v3, v4

    .line 193
    .local v12, "dx":I
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v13, v3, v4

    .line 196
    .local v13, "dy":I
    const/16 v3, 0x64

    if-gt v12, v3, :cond_0

    const/16 v3, -0x64

    if-lt v12, v3, :cond_0

    const/16 v3, 0x64

    if-gt v13, v3, :cond_0

    const/16 v3, -0x64

    if-ge v13, v3, :cond_6

    .line 198
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    rsub-int v4, v12, 0x3e8

    const/16 v5, 0x32

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    rsub-int v4, v13, 0x3e8

    const/16 v5, 0x32

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 200
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v16

    .line 201
    .local v16, "tempRect":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->moveTo(Landroid/graphics/Rect;)V

    .line 204
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 209
    .end local v16    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPhysicsBox:Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAnimTime:J

    sub-long v4, p4, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->update(F)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    const/high16 v4, 0x3f800000

    const/high16 v5, 0x3f000000

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->isAtRest(FF)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_1
    const/4 v14, 0x1

    .line 211
    .local v14, "isAnimating":Z
    :goto_1
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAnimTime:J

    .line 213
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Lcom/sonymobile/movablepanes/util/MathUtil;->clamp(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getWidth()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getHeight()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMeshVertexArray:[F

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexArray([F)[F

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 225
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    .line 230
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    .line 232
    new-instance v15, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v15, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v15, "offscreenCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOffsetX:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOffsetY:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v15, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 238
    .end local v15    # "offscreenCanvas":Landroid/graphics/Canvas;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getWidth()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getHeight()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMeshVertexArray:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 245
    :cond_5
    return v14

    .line 206
    .end local v14    # "isAnimating":Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->moveTo(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 209
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "now"    # J

    .prologue
    .line 250
    invoke-static {p1}, Lcom/sonymobile/movablepanes/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 251
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v0

    return v0
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    return-void
.end method

.method public offset(IIJ)V
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "now"    # J

    .prologue
    .line 255
    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v2

    .line 256
    .local v2, "vertexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 257
    .local v3, "vertexListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 258
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 259
    .local v1, "vertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    int-to-float v5, p1

    add-float/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    .line 260
    iget v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    int-to-float v5, p2

    add-float/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "vertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 264
    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v5

    int-to-float v6, p1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v6}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v6

    invoke-virtual {v4, v5, v6, p3, p4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 265
    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v5

    int-to-float v6, p2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v6}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v6

    invoke-virtual {v4, v5, v6, p3, p4}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 266
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOverlayBitmap:Landroid/graphics/Bitmap;

    .line 330
    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x437f0000

    const/high16 v2, 0x43400000

    .line 144
    const-string v1, "COMMAND_PICKUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const v1, 0x3f4ccccd

    iput v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 146
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 147
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v1, v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 148
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v1, "COMMAND_DROP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 151
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v1, v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 152
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v1, v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 153
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0

    .line 154
    :cond_2
    const-string v1, "delete_action_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/high16 v3, -0x10000

    const v4, -0xbbbbbc

    invoke-direct {v2, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 156
    :cond_3
    const-string v1, "delete_action_off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mPaintBitmapMesh:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 158
    :cond_4
    const-string v1, "set_alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 160
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 161
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    goto :goto_0

    .line 162
    :cond_5
    const-string v1, "set_scale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mScaleFactor:F

    goto/16 :goto_0

    .line 164
    :cond_6
    const-string v1, "reset_closest_vertex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 165
    iget v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    if-eq v1, v4, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 167
    .local v0, "closestVertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->movable:Z

    .line 168
    iput v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    goto/16 :goto_0

    .line 170
    .end local v0    # "closestVertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_7
    const-string v1, "badge"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 171
    const-string v1, "badge"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeIcon:Landroid/graphics/Bitmap;

    .line 172
    iput p2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOffsetX:I

    .line 173
    iput p3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mBadgeOffsetY:I

    goto/16 :goto_0
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I
    .param p4, "now"    # J

    .prologue
    const/high16 v5, 0x437f0000

    const/4 v4, 0x0

    .line 110
    iget-boolean v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mStarted:Z

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-wide p4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAnimTime:J

    .line 116
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mScaleFactor:F

    .line 119
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-virtual {v1, v5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 121
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mAlpha:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 123
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsLeft:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 124
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mDynamicsTop:Lcom/sonymobile/movablepanes/util/SpringDynamics;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, p4, p5}, Lcom/sonymobile/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 127
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshUtils;->setupMeshAsRect(Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;FFFF)V

    .line 128
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mConstraints:Ljava/util/List;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshUtils;->setupAbsoluteConstraintsForMeshRect(Ljava/util/List;IIFF)V

    .line 131
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshUtils;->findClosestVertex(FFLjava/util/List;)Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    move-result-object v0

    .line 133
    .local v0, "closestVertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mMesh:Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->movable:Z

    .line 140
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mStarted:Z

    goto/16 :goto_0

    .line 137
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;->mClosestVertexIndex:I

    goto :goto_1
.end method
