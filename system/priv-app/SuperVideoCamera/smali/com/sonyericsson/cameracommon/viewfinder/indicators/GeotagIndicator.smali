.class public Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
.super Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.source "GeotagIndicator.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    .line 12
    return-void
.end method


# virtual methods
.method public isAcquired(Z)V
    .locals 3
    .param p1, "acquired"    # Z

    .prologue
    .line 15
    if-eqz p1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    sget v2, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquired_gps_icn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    :goto_0
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    sget v2, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquiring_gps_anim:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 21
    .local v0, "geotagAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
