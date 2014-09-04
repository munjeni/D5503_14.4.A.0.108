.class public Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;
.super Ljava/lang/Object;
.source "PhysicsBox.java"


# static fields
.field private static final MAX_DT:F = 0.1f

.field private static final TIME_STEP:F = 0.02f


# instance fields
.field private final mConstraintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private mDamping:F

.field private final mVertexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;F)V
    .locals 0
    .param p3, "damping"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "vertexList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;>;"
    .local p2, "constraintList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mConstraintList:Ljava/util/List;

    .line 52
    iput p3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mDamping:F

    .line 53
    return-void
.end method

.method private updateAcceleration()V
    .locals 7

    .prologue
    .line 124
    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 125
    .local v4, "vertexListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 126
    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 127
    .local v3, "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mDamping:F

    neg-float v5, v5

    iget v6, v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vx:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    .line 128
    iget v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mDamping:F

    neg-float v5, v5

    iget v6, v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vy:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mConstraintList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 132
    .local v1, "constraintListSize":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 133
    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mConstraintList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;

    .line 134
    .local v0, "c":Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;
    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;->applyConstraint()V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "c":Lcom/sonymobile/movablepanes/graphics/mesh/Constraint;
    :cond_1
    return-void
.end method

.method private updatePositions(F)V
    .locals 7
    .param p1, "dt"    # F

    .prologue
    const/high16 v6, 0x3f000000

    .line 158
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 159
    .local v2, "vertexListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 161
    .local v1, "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    iget v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vx:F

    mul-float/2addr v4, p1

    iget v5, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    .line 162
    iget v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    iget v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vy:F

    mul-float/2addr v4, p1

    iget v5, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_0
    return-void
.end method

.method private updateVelocities(F)V
    .locals 5
    .param p1, "dt"    # F

    .prologue
    .line 144
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 145
    .local v2, "vertexListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 146
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 147
    .local v1, "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vx:F

    iget v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vx:F

    .line 148
    iget v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vy:F

    iget v4, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vy:F

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDamping()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mDamping:F

    return v0
.end method

.method public setDamping(F)V
    .locals 0
    .param p1, "damping"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mDamping:F

    .line 62
    return-void
.end method

.method public update(F)Z
    .locals 7
    .param p1, "dt"    # F

    .prologue
    const/high16 v6, 0x3f000000

    .line 80
    const v5, 0x3dcccccd

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    .line 81
    const p1, 0x3dcccccd

    .line 86
    :cond_0
    const v5, 0x3ca3d70a

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 87
    .local v0, "d_dt":F
    sub-float/2addr p1, v0

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->updateAcceleration()V

    .line 89
    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->updatePositions(F)V

    .line 90
    mul-float v5, v0, v6

    invoke-direct {p0, v5}, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->updateVelocities(F)V

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->updateAcceleration()V

    .line 92
    mul-float v5, v0, v6

    invoke-direct {p0, v5}, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->updateVelocities(F)V

    .line 94
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "maxAbsAcceleration":F
    const/4 v3, 0x0

    .line 98
    .local v3, "maxAbsVelocity":F
    iget-object v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/PhysicsBox;->mVertexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 99
    .local v4, "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2

    .line 100
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ax:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 102
    :cond_2
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_3

    .line 103
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->ay:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 105
    :cond_3
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_4

    .line 106
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 108
    :cond_4
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vy:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_1

    .line 109
    iget v5, v4, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->vy:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto :goto_0

    .line 113
    .end local v4    # "v":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_5
    const/high16 v5, 0x42c80000

    cmpg-float v5, v2, v5

    if-gez v5, :cond_6

    const/high16 v5, 0x41200000

    cmpg-float v5, v3, v5

    if-gez v5, :cond_6

    .line 114
    const/4 v5, 0x0

    .line 117
    :goto_1
    return v5

    :cond_6
    const/4 v5, 0x1

    goto :goto_1
.end method
