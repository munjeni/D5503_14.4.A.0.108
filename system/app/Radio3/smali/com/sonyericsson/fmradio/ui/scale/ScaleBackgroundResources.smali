.class public Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;
.super Ljava/lang/Object;
.source "ScaleBackgroundResources.java"


# instance fields
.field private mEmptyDrawable:Landroid/graphics/drawable/Drawable;

.field private mLargePegDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallPegDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x7f020047

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mLargePegDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    const v0, 0x7f020049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    const v0, 0x7f02004a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    const v0, 0x7f020048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mLargePegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mLargePegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All peg drawables must have the same width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public getDrawableWidth()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getEmptyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLargePegDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mLargePegDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediumPegDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSmallPegDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
