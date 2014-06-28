.class Lcom/android/mms/ui/SlideEditorActivity$9;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideViewChanged()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 373
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$400(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    iget-object v10, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 375
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v5, :cond_3

    .line 376
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    .line 377
    .local v1, "hasImage":Z
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    .line 378
    .local v2, "hasVideo":Z
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    .line 381
    .local v0, "hasAudio":Z
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mImageContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1200(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;

    move-result-object v10

    if-nez v1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    move v6, v8

    :goto_0
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mAddImageButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;

    move-result-object v10

    if-nez v1, :cond_1

    if-eqz v2, :cond_5

    :cond_1
    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioText:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;

    move-result-object v10

    if-eqz v0, :cond_6

    move v6, v7

    :goto_2
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1500(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;

    move-result-object v10

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    move v6, v9

    :goto_3
    invoke-virtual {v10, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 389
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mRemoveAudioButton:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1600(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;

    move-result-object v6

    if-eqz v0, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v7, 0x7f0a0058

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 391
    .local v4, "mAddAudioButtonText":Landroid/widget/TextView;
    if-nez v2, :cond_8

    move v6, v9

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 392
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v7, 0x7f0a0056

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 393
    .local v3, "mAddAudioButtonImage":Landroid/widget/ImageView;
    if-nez v2, :cond_9

    :goto_5
    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 395
    .end local v0    # "hasAudio":Z
    .end local v1    # "hasImage":Z
    .end local v2    # "hasVideo":Z
    .end local v3    # "mAddAudioButtonImage":Landroid/widget/ImageView;
    .end local v4    # "mAddAudioButtonText":Landroid/widget/TextView;
    :cond_3
    return-void

    .restart local v0    # "hasAudio":Z
    .restart local v1    # "hasImage":Z
    .restart local v2    # "hasVideo":Z
    :cond_4
    move v6, v7

    .line 381
    goto :goto_0

    :cond_5
    move v6, v8

    .line 383
    goto :goto_1

    :cond_6
    move v6, v8

    .line 386
    goto :goto_2

    :cond_7
    move v6, v8

    .line 388
    goto :goto_3

    .restart local v4    # "mAddAudioButtonText":Landroid/widget/TextView;
    :cond_8
    move v6, v8

    .line 391
    goto :goto_4

    .restart local v3    # "mAddAudioButtonImage":Landroid/widget/ImageView;
    :cond_9
    move v9, v8

    .line 393
    goto :goto_5
.end method
