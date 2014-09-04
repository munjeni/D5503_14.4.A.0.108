.class public Lcom/sonymobile/china/collage/ImageElement;
.super Ljava/lang/Object;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/ImageElement$1;,
        Lcom/sonymobile/china/collage/ImageElement$Circle;,
        Lcom/sonymobile/china/collage/ImageElement$ElementType;
    }
.end annotation


# static fields
.field public static final STORK_WIDTH:I = 0x6


# instance fields
.field private mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

.field private mDeleteRect:Landroid/graphics/RectF;

.field private mHasStroke:Z

.field private mId:I

.field private mOrignalRect:Landroid/graphics/RectF;

.field mParentHeight:I

.field mParentWidth:I

.field private mPath:Landroid/graphics/Path;

.field private mPathRegion:Landroid/graphics/Region;

.field private mPlusRect:Landroid/graphics/RectF;

.field private mPositionRect:Landroid/graphics/RectF;

.field private mRectf:Landroid/graphics/RectF;

.field private mRotate:F

.field private mType:Lcom/sonymobile/china/collage/ImageElement$ElementType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sonymobile/china/collage/ImageElement$ElementType;IIIZ)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/sonymobile/china/collage/ImageElement$ElementType;
    .param p3, "parentW"    # I
    .param p4, "parentH"    # I
    .param p5, "id"    # I
    .param p6, "hasStroke"    # Z

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    .line 27
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mRotate:F

    .line 29
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mId:I

    .line 34
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mHasStroke:Z

    .line 37
    iput-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mPlusRect:Landroid/graphics/RectF;

    .line 40
    iput-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mDeleteRect:Landroid/graphics/RectF;

    .line 42
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    .line 44
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mOrignalRect:Landroid/graphics/RectF;

    .line 47
    iput-object p2, p0, Lcom/sonymobile/china/collage/ImageElement;->mType:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    .line 48
    iput p5, p0, Lcom/sonymobile/china/collage/ImageElement;->mId:I

    .line 49
    iput p3, p0, Lcom/sonymobile/china/collage/ImageElement;->mParentWidth:I

    .line 50
    iput p4, p0, Lcom/sonymobile/china/collage/ImageElement;->mParentHeight:I

    .line 51
    iput-boolean p6, p0, Lcom/sonymobile/china/collage/ImageElement;->mHasStroke:Z

    .line 52
    sget-object v2, Lcom/sonymobile/china/collage/ImageElement$1;->$SwitchMap$com$sonymobile$china$collage$ImageElement$ElementType:[I

    invoke-virtual {p2}, Lcom/sonymobile/china/collage/ImageElement$ElementType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 91
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 54
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_0
    check-cast p1, Landroid/graphics/RectF;

    .end local p1    # "object":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    .line 55
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    .line 56
    new-instance v2, Landroid/graphics/Region;

    iget-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    goto :goto_0

    .line 60
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Landroid/graphics/RectF;

    .end local p1    # "object":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    .line 61
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    .line 62
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 63
    .local v1, "ovalPath":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 64
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    iget-object v4, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    goto :goto_0

    .line 69
    .end local v1    # "ovalPath":Landroid/graphics/Path;
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Lcom/sonymobile/china/collage/ImageElement$Circle;

    .end local p1    # "object":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    .line 70
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v3, v3, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterX:F

    iget-object v4, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v4, v4, Lcom/sonymobile/china/collage/ImageElement$Circle;->mRadius:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v4, v4, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterY:F

    iget-object v5, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v5, v5, Lcom/sonymobile/china/collage/ImageElement$Circle;->mRadius:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v5, v5, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterX:F

    iget-object v6, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v6, v6, Lcom/sonymobile/china/collage/ImageElement$Circle;->mRadius:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v6, v6, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterY:F

    iget-object v7, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v7, v7, Lcom/sonymobile/china/collage/ImageElement$Circle;->mRadius:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 74
    .local v0, "circlePath":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v2, v2, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterX:F

    iget-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v3, v3, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterY:F

    iget-object v4, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    iget v4, v4, Lcom/sonymobile/china/collage/ImageElement$Circle;->mRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 76
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    iget-object v4, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    goto/16 :goto_0

    .line 82
    .end local v0    # "circlePath":Landroid/graphics/Path;
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p1, Landroid/graphics/Path;

    .end local p1    # "object":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mPath:Landroid/graphics/Path;

    .line 83
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 84
    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Region;

    iget-object v5, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    goto/16 :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public contains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40400000

    .line 178
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public containsWithNoOffset(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    add-int/lit8 v1, p1, -0x3

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public getCircle()Lcom/sonymobile/china/collage/ImageElement$Circle;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mCircle:Lcom/sonymobile/china/collage/ImageElement$Circle;

    return-object v0
.end method

.method public getContainRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPathRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public getDeleteRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mDeleteRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getHeigth()F
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mId:I

    return v0
.end method

.method public getOrignalRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mOrignalRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getParentHeight()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mParentHeight:I

    return v0
.end method

.method public getParentWidth()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mParentWidth:I

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPlusRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPlusRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPositionRectF()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/high16 v5, 0x40c00000

    .line 154
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPositionRectFForDraw()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mRectf:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mRotate:F

    return v0
.end method

.method public getType()Lcom/sonymobile/china/collage/ImageElement$ElementType;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mType:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mPositionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public hasStroke()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/ImageElement;->mHasStroke:Z

    return v0
.end method

.method public setDeleteRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "delete"    # Landroid/graphics/RectF;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mDeleteRect:Landroid/graphics/RectF;

    .line 103
    return-void
.end method

.method public setOrignalRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mOrignalRect:Landroid/graphics/RectF;

    .line 164
    return-void
.end method

.method public setPlusRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "plus"    # Landroid/graphics/RectF;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mPlusRect:Landroid/graphics/RectF;

    .line 95
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotate"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/sonymobile/china/collage/ImageElement;->mRotate:F

    .line 131
    return-void
.end method
