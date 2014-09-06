.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableDialog"


# instance fields
.field private final mAnimationsForLand:I

.field private final mAnimationsForPort:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogWidthForLand:I

.field private mDialogWidthForPort:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mOrientation:I

.field private mScrollableView:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTranslationYForLand:I

.field private mTranslationYForPort:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method protected constructor <init>(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 168
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 169
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    .line 174
    sget v0, Lcom/sonyericsson/cameracommon/R$style;->WindowAnimationDeviceDefaultDialogPortrait:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    .line 176
    return-void
.end method

.method private attachScrollableView()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 270
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 306
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "messageView":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 282
    .local v1, "scrollableViewContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 289
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 302
    .local v2, "scrollview":Landroid/widget/ScrollView;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 303
    invoke-virtual {v2, v1, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private calculateOutValue(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 358
    if-ge p1, p2, :cond_0

    .line 359
    sub-int v0, p1, p2

    .line 366
    .local v0, "outValue":I
    :goto_0
    return v0

    .line 360
    .end local v0    # "outValue":I
    :cond_0
    if-ge p3, p1, :cond_1

    .line 361
    sub-int v0, p1, p3

    .restart local v0    # "outValue":I
    goto :goto_0

    .line 363
    .end local v0    # "outValue":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "outValue":I
    goto :goto_0
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/high16 v10, 0x42c80000

    .line 212
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 213
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 214
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 220
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 221
    .local v1, "displaySize":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 222
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 223
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 224
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    .line 232
    :goto_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForLand:I

    .line 233
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iget v9, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    sub-int/2addr v8, v9

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForPort:I

    .line 237
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 239
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x1050003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "major":Ljava/lang/String;
    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "minor":Ljava/lang/String;
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 243
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v4, v8, v10

    .line 246
    .local v4, "minWidthMajor":F
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v5, v8, v10

    .line 248
    .local v5, "minWidthMinor":F
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    .line 249
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 260
    .end local v3    # "major":Ljava/lang/String;
    .end local v4    # "minWidthMajor":F
    .end local v5    # "minWidthMinor":F
    .end local v6    # "minor":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->attachScrollableView()V

    .line 261
    return-void

    .line 228
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 229
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    goto :goto_0

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 253
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 182
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 187
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 188
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 189
    return-void
.end method

.method private setWindowAnimations(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 196
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0
.end method

.method private updateLayout(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 353
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 317
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 318
    .local v1, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 321
    .local v0, "decorParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 322
    .local v3, "panelView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 327
    .local v2, "panelParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 328
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 335
    const/high16 v4, 0x43870000

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 336
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForPort:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 337
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 341
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 344
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 345
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTranslationYForLand:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 346
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 348
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 484
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 478
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 472
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 394
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 396
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 397
    .local v4, "panelView":Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 401
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v2

    .line 402
    .local v2, "outX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v3

    .line 406
    .local v3, "outY":I
    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    .line 407
    :cond_0
    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 408
    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 410
    :cond_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 411
    .local v1, "newEvent":Landroid/view/MotionEvent;
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 416
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 417
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 419
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 422
    .end local v1    # "newEvent":Landroid/view/MotionEvent;
    :cond_4
    return v8
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    .line 374
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->release()V

    .line 379
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 490
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 496
    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 508
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 514
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 502
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 435
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 436
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    .line 437
    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 524
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 526
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 530
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public setViewAsScrollable(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 455
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 464
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->initialize()V

    .line 466
    :cond_0
    return-void
.end method
