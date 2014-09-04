.class public Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;
.super Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;
.source "AbsoluteConstraint.java"


# instance fields
.field public K:F

.field public dx:F

.field public dy:F

.field public mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

.field public mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;-><init>()V

    return-void
.end method


# virtual methods
.method public applyConstraint()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000

    .line 27
    iget v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->K:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v4, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->dx:F

    sub-float/2addr v3, v4

    mul-float v0, v2, v3

    .line 28
    .local v0, "ax":F
    iget v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->K:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    iget-object v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v4, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->dy:F

    sub-float/2addr v3, v4

    mul-float v1, v2, v3

    .line 30
    .local v1, "ay":F
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget-boolean v2, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->movable:Z

    if-nez v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    add-float/2addr v3, v0

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    .line 32
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    add-float/2addr v3, v1

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    .line 42
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget-boolean v2, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->movable:Z

    if-nez v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    sub-float/2addr v3, v0

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    .line 35
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    sub-float/2addr v3, v1

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    div-float v4, v0, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    .line 38
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexA:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    .line 39
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    div-float v4, v0, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    .line 40
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/AbsoluteConstraint;->mVertexB:Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    div-float v4, v1, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    goto :goto_0
.end method
