.class public Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
.super Landroid/widget/RelativeLayout;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    }
.end annotation


# static fields
.field private static final DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field public static final EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private mContainer:Landroid/view/View;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

.field private mOrientation:I

.field private mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v0, v1, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 378
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    .line 190
    return-void
.end method

.method private adjustBackground(IIII)V
    .locals 0
    .param p1, "backgroundTop"    # I
    .param p2, "containerTop"    # I
    .param p3, "containerButtonSpace"    # I
    .param p4, "containerGravity"    # I

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackgroundMarginTop(I)V

    .line 239
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setContainerMarginTop(I)V

    .line 240
    invoke-direct {p0, p4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackgroundAndContainerGravity(I)V

    .line 241
    invoke-direct {p0, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSubButtonMarginTop(I)V

    .line 242
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 243
    return-void
.end method

.method private restartAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 295
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 296
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 298
    :cond_0
    return-void
.end method

.method private setBackgroundAndContainerGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 265
    return-void
.end method

.method private setBackgroundMarginTop(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 249
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 250
    .local v0, "topMargin":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 252
    return-void

    .line 249
    .end local v0    # "topMargin":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setContainerMarginTop(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 255
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 256
    .local v0, "topMargin":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 257
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 258
    return-void

    .line 255
    .end local v0    # "topMargin":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setSubButtonMarginTop(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 268
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 269
    .local v0, "topMargin":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 271
    return-void

    .line 268
    .end local v0    # "topMargin":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setupBackgroundDual()V
    .locals 4

    .prologue
    .line 217
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_background_top_margin:I

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_container_top_margin:I

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_container_space:I

    const/16 v3, 0x31

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 222
    return-void
.end method

.method private setupBackgroundPhotoAndSwitch()V
    .locals 4

    .prologue
    .line 226
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_background_top_margin:I

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_container_top_margin:I

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_container_space:I

    const/16 v3, 0x31

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 231
    return-void
.end method

.method private setupBackgroundSingle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    const/16 v0, 0x11

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 213
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    .line 369
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v0, v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->landscape:I

    .line 371
    .local v0, "res":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 376
    :cond_0
    return-void

    .line 369
    .end local v0    # "res":I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v0, v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->portrait:I

    goto :goto_0
.end method


# virtual methods
.method public clearTouched()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 276
    return-void
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->isTouched()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 196
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->main_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->sub_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    .line 203
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    .line 204
    return-void
.end method

.method public restartAnimation()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 292
    return-void
.end method

.method public setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V
    .locals 1
    .param p1, "resource"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 365
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->updateBackground()V

    .line 366
    return-void

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    goto :goto_0
.end method

.method public setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->mainButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 306
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 317
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_0

    .line 318
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 319
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundSingle()V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 321
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :goto_0
    return-void

    .line 325
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_1

    .line 326
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 327
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundPhotoAndSwitch()V

    .line 329
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 333
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_3

    .line 334
    :cond_2
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 335
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundPhotoAndSwitch()V

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 344
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundDual()V

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 346
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setUiOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 356
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->updateBackground()V

    .line 357
    return-void
.end method
