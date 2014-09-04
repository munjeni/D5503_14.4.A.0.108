.class public Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/graphics/mesh/VertexObject;


# instance fields
.field private final mHeight:I

.field private final mVertexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mWidth:I

    .line 42
    iput p2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mHeight:I

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mWidth:I

    iget v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mHeight:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mVertexList:Ljava/util/ArrayList;

    .line 46
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 47
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mVertexList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    invoke-direct {v3}, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "x":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const v4, 0x7f7fffff

    const v3, -0x800001

    .line 100
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 102
    .local v1, "rect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 103
    .local v2, "vertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 104
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 106
    :cond_1
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 107
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 109
    :cond_2
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 110
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 112
    :cond_3
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 113
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 117
    .end local v2    # "vertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_4
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mHeight:I

    return v0
.end method

.method public getVertexArray([F)[F
    .locals 6
    .param p1, "outArray"    # [F

    .prologue
    .line 61
    array-length v3, p1

    iget v4, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mWidth:I

    iget v5, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    .line 62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output array too small."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    .local v1, "index":I
    iget-object v3, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;

    .line 67
    .local v2, "vertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->x:F

    aput v3, p1, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    iget v3, v2, Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;->y:F

    aput v3, p1, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "vertex":Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;
    :cond_1
    return-object p1
.end method

.method public getVertexList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/movablepanes/graphics/mesh/Vertex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mVertexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getVertexList()Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->getVertexList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sonymobile/movablepanes/graphics/mesh/Mesh;->mWidth:I

    return v0
.end method
