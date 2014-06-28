.class public Lcom/sonyericsson/conversations/ui/GifViewerActivity;
.super Landroid/app/Activity;
.source "GifViewerActivity.java"


# instance fields
.field private mAnimationImagePlayer:Lcom/sonyericsson/conversations/ui/GifController;

.field private mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f03000a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/ui/SlideImageView;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/GifViewerActivity;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 44
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/GifViewerActivity;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/SlideImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/GifViewerActivity;->mImageView:Lcom/sonyericsson/conversations/ui/SlideImageView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/GifImageView;->getController()Lcom/sonyericsson/conversations/ui/GifController;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/GifViewerActivity;->mAnimationImagePlayer:Lcom/sonyericsson/conversations/ui/GifController;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifViewerActivity;->mAnimationImagePlayer:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifController;->stopAnimation()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifViewerActivity;->mAnimationImagePlayer:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/GifController;->startAnimation()V

    .line 68
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
