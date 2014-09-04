.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
.super Ljava/lang/Object;
.source "ImageShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceRectItem"
.end annotation


# instance fields
.field private mDrawingRect:Landroid/graphics/RectF;

.field private mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;

.field private mIsSelected:Z

.field private mIsShown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsSelected:Z

    .line 182
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsShown:Z

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V
    .locals 1
    .param p1, "faceRect"    # Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsSelected:Z

    .line 182
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsShown:Z

    .line 188
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-direct {v0, p1}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;-><init>(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 189
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsShown:Z

    return v0
.end method


# virtual methods
.method public clearDrawingRect()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    .line 240
    return-void
.end method

.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawingRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFaceRect()Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsShown:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsSelected:Z

    return v0
.end method

.method public setDrawingRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "drawingRect"    # Landroid/graphics/RectF;

    .prologue
    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    .line 215
    return-void
.end method

.method public setFaceRect(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V
    .locals 1
    .param p1, "faceRect"    # Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 210
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-direct {v0, p1}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;-><init>(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 211
    return-void
.end method

.method public setRects(Lcom/sonymobile/android/facebeauty/engine/FaceRect;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "faceRect"    # Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .param p2, "drawingRect"    # Landroid/graphics/RectF;

    .prologue
    .line 218
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-direct {v0, p1}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;-><init>(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 219
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mDrawingRect:Landroid/graphics/RectF;

    .line 220
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsSelected:Z

    .line 224
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsShown:Z

    .line 232
    return-void
.end method
