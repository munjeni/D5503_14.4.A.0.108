.class public Lcom/sonyericsson/conversations/ui/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/GifController$GifListener;


# instance fields
.field private mDx:I

.field private mDy:I

.field private mGifController:Lcom/sonyericsson/conversations/ui/GifController;

.field private mGifTag:Z

.field private mHeightScale:F

.field private mWidthScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    .line 39
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    .line 41
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDx:I

    .line 43
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDy:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    .line 39
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    .line 41
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDx:I

    .line 43
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDy:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    .line 58
    return-void
.end method

.method private calculateScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/GifController;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/GifController;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    .line 88
    iget v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    iget v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    .line 89
    .local v0, "minScale":F
    :goto_0
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    .line 90
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/GifController;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDx:I

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/GifController;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDy:I

    .line 93
    return-void

    .line 88
    .end local v0    # "minScale":F
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    .line 102
    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    .line 103
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDx:I

    .line 104
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDy:I

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifController;->reset()V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/GifController;->registerGifListener(Lcom/sonyericsson/conversations/ui/GifController$GifListener;)V

    .line 113
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/GifController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    goto :goto_0
.end method


# virtual methods
.method public getController()Lcom/sonyericsson/conversations/ui/GifController;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    if-eqz v0, :cond_2

    .line 70
    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/GifImageView;->calculateScale()V

    .line 73
    :cond_1
    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    iget v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDx:I

    iget v2, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mDy:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/conversations/ui/GifController;->drawImage(Landroid/graphics/Canvas;II)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFrameChanged()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 160
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    iput v3, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mWidthScale:F

    .line 166
    iput v3, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mHeightScale:F

    .line 167
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "GifImageView"

    const-string v2, "onMeasure: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setGifImageResource(I)Z
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/GifImageView;->init()V

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/GifController;->decodeGifImage(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    goto :goto_0
.end method

.method public setGifImageURI(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/GifImageView;->init()V

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifController:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/GifController;->decodeGifImage(Landroid/net/Uri;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    .line 154
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    .line 138
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifImageView;->mGifTag:Z

    .line 145
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "GifImageView"

    const-string v2, "setImageURI: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
