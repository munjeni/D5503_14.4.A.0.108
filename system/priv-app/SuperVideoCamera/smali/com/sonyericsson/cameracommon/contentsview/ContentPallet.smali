.class public Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.super Landroid/widget/RelativeLayout;
.source "ContentPallet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;
    }
.end annotation


# static fields
.field private static final INSERTANIMATION_DURATION:I = 0x12c

.field private static final INSERTANIMATION_FADE_END:F = 1.0f

.field private static final INSERTANIMATION_FADE_START:F = 0.0f

.field private static final INSERTANIMATION_SCALE_END:F = 1.0f

.field private static final INSERTANIMATION_SCALE_START:F = 0.7f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

.field private mIsRequestHide:Z

.field private mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object v0
.end method


# virtual methods
.method createInsertAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/high16 v4, 0x40000000

    const v1, 0x3f333333

    const/high16 v2, 0x3f800000

    .line 195
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 196
    .local v7, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v6, v3, v4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 202
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 204
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 205
    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 206
    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    return-object v7
.end method

.method disableClick()V
    .locals 2

    .prologue
    .line 186
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 187
    return-void
.end method

.method enableClick()V
    .locals 2

    .prologue
    .line 182
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 183
    return-void
.end method

.method getRequestId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initialize(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    .line 95
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    const/4 v0, 0x0

    .line 105
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .line 107
    .end local v0    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public requestHide()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    .line 235
    return-void
.end method

.method set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 12
    .param p1, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x4

    const/4 v9, -0x2

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .line 132
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 133
    .local v5, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail:I

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 137
    .local v6, "thumbnailView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowPlayableIcon()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 152
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v4, "playabeIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    sget v8, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_video_icn:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    .end local v4    # "playabeIcon":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowExtraIcon()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 163
    .local v3, "inflater":Landroid/view/LayoutInflater;
    if-eqz v3, :cond_4

    .line 164
    sget v8, Lcom/sonyericsson/cameracommon/R$layout;->content_extra_icon:I

    invoke-virtual {v3, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 165
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_extra_icon_image:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 166
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getExtraIconResourceId()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    sget v8, Lcom/sonyericsson/cameracommon/R$id;->content_thumbnail_frame:I

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-boolean v8, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    if-eqz v8, :cond_2

    .line 177
    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_2
    return-void

    .line 142
    :cond_3
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v1, "corruptedIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    sget v8, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_stack_file_corrupted_icn:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 168
    .end local v1    # "corruptedIcon":Landroid/widget/ImageView;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    sget-object v8, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->TAG:Ljava/lang/String;

    const-string v9, "could not get inflater."

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
