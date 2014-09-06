.class public abstract Lcom/sonyericsson/cameracommon/review/ReviewScreen;
.super Landroid/widget/FrameLayout;
.source "ReviewScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDisplayOrientation:I

.field protected mMime:Ljava/lang/String;

.field private mOrientedPictureSize:Landroid/graphics/Rect;

.field protected mPictureImage:Landroid/widget/ImageView;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method private setVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    const/4 v2, 0x0

    .line 195
    .local v2, "visibility":I
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 197
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 192
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "visibility":I
    :cond_0
    const/4 v2, 0x4

    .restart local v2    # "visibility":I
    goto :goto_0

    .line 200
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "image/jpeg"

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisiblePlayIcon(Z)V

    .line 203
    :cond_2
    return-void
.end method

.method private setVisiblePlayIcon(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 184
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    return-void

    .line 181
    .end local v0    # "visibility":I
    :cond_0
    const/4 v0, 0x4

    .restart local v0    # "visibility":I
    goto :goto_0
.end method


# virtual methods
.method abstract backToViewFinder()V
.end method

.method protected cancelDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 258
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 260
    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    return-void
.end method

.method abstract getContentResolverUtilListener()Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;
.end method

.method abstract getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end method

.method public hideScreen()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisible(Z)V

    .line 170
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 70
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_picture_image:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    .line 76
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_play:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 77
    .local v3, "playIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 81
    .local v2, "editIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_share:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 85
    .local v4, "shareIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_delete:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 89
    .local v1, "deleteIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_right:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "autoReviewIcons":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 96
    return-void
.end method

.method protected setCurrentDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->cancelDialog()V

    .line 265
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 266
    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 208
    iget v3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->updatePictureImageLayout(ILandroid/graphics/Rect;)V

    .line 211
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    .line 213
    .local v1, "degree":F
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setRotation(F)V

    .line 215
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 216
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 218
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_0
    return-void
.end method

.method public setupScreen(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;I)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "pictureRect"    # Landroid/graphics/Rect;
    .param p5, "orientation"    # I

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v4, v6

    .line 117
    .local v0, "aspectRatio":F
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/app/Activity;F)Landroid/graphics/Rect;

    move-result-object v3

    .line 118
    .local v3, "surfaceRect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    const/16 v4, 0xb4

    if-ne p5, v4, :cond_2

    .line 119
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 123
    :goto_0
    iget v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->updatePictureImageLayout(ILandroid/graphics/Rect;)V

    .line 126
    const-string v4, "video/mp4"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "video/3gpp"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 131
    .local v1, "orgImage":Landroid/graphics/Bitmap;
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v6, Lcom/sonyericsson/cameracommon/R$drawable;->cam_video_preview_edit_icn:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_1
    if-nez v1, :cond_4

    .line 143
    sget-object v4, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->TAG:Ljava/lang/String;

    const-string v6, "Cannot create the image."

    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 157
    :goto_2
    return v4

    .line 121
    .end local v1    # "orgImage":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-direct {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    goto :goto_0

    .line 135
    :cond_3
    new-instance v4, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, p2, p5}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    .restart local v1    # "orgImage":Landroid/graphics/Bitmap;
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v6, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_preview_edit_icn:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 147
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v1, v4, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    .local v2, "scaledImage":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    .line 156
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    .line 157
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public showScreen()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisible(Z)V

    .line 164
    return-void
.end method

.method public updatePictureImageLayout(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayOrientation"    # I
    .param p2, "pictureSize"    # Landroid/graphics/Rect;

    .prologue
    const/16 v3, 0x11

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 223
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 225
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 226
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 228
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void

    .line 230
    :cond_0
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 237
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 239
    :cond_2
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method
