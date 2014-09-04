.class public abstract Lcom/sonymobile/china/collage/BaseCollageFragment;
.super Landroid/app/Fragment;
.source "BaseCollageFragment.java"

# interfaces
.implements Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;
.implements Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;
    }
.end annotation


# instance fields
.field protected mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method protected addPicture([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v0, p1, p0}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->addPicture([Landroid/net/Uri;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V

    .line 82
    return-void
.end method

.method protected discard()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 162
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 166
    :cond_0
    return-void
.end method

.method protected getPerferSaveSize()I
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected abstract getScreenshotBitmap()Landroid/graphics/Bitmap;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    iput-object v0, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->setHasOptionsMenu(Z)V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->saveAndClose()V

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->discard()V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x7f0c0096
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPictureAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "pictures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    return-void
.end method

.method public onSaveComplete(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonymobile/china/collage/utils/ImageUtils;->notifyMediaScanner(Landroid/content/Context;Landroid/net/Uri;)V

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 155
    :cond_1
    return-void
.end method

.method public onSaveStarted()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected removePicture(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->removePicture(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method protected saveAndClose()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->getScreenshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/sonymobile/china/collage/utils/SaveUtils;->startSaveShareScreenshot(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected abstract updateTemplate(ILjava/lang/String;)V
.end method
