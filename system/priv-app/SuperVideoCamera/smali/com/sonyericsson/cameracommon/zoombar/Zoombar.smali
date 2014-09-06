.class public Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
.super Landroid/widget/RelativeLayout;
.source "Zoombar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/zoombar/Zoombar$2;,
        Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;
    }
.end annotation


# static fields
.field public static final DELAY_ZOOMBAR_HIDE:I = 0x3e8

.field private static final IS_ZOOMBAR_DEBUG:Z = true

.field public static final MIN_VALUE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SRZ_LIMIT_POSITION:F

.field private mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mLastMaxValue:I

.field private mLastValue:I

.field private mMaxPosition:Landroid/graphics/Point;

.field private mMinPosition:Landroid/graphics/Point;

.field private mThumbBase:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    .line 55
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    .line 56
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    .line 63
    sget-object v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->NORMAL:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .line 66
    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    .line 271
    new-instance v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;-><init>(Lcom/sonyericsson/cameracommon/zoombar/Zoombar;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    .line 80
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->zoombar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->zoombar_indicator:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mThumbBase:Landroid/widget/RelativeLayout;

    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->prepareMinMaxPositions()V

    .line 86
    return-void
.end method

.method private onZoomChanged(II)I
    .locals 3
    .param p1, "current"    # I
    .param p2, "maxDigital"    # I

    .prologue
    .line 158
    if-gez p1, :cond_0

    .line 159
    const/4 p1, 0x0

    .line 161
    :cond_0
    if-le p1, p2, :cond_1

    .line 162
    move p1, p2

    .line 165
    :cond_1
    iput p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastValue:I

    .line 166
    iput p2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    .line 170
    if-eqz p2, :cond_2

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    div-int v0, v1, p2

    .line 177
    .local v0, "x":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mThumbBase:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    .line 179
    return p1

    .line 173
    .end local v0    # "x":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "x":I
    goto :goto_0
.end method

.method private onZoomChangedWithSuperResolutionInternal(III)I
    .locals 4
    .param p1, "current"    # I
    .param p2, "maxSuperResolution"    # I
    .param p3, "maxDigital"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "visCurrent":I
    if-ge p1, p2, :cond_0

    .line 132
    int-to-float v1, p3

    iget v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 141
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    move-result v1

    return v1

    .line 135
    :cond_0
    int-to-float v1, p3

    const/high16 v2, 0x3f800000

    iget v3, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-int v2, p3, p2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-int v2, p1, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    iget v3, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->SRZ_LIMIT_POSITION:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0
.end method

.method private prepareMinMaxPositions()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_slider_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_thumb_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMinPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mThumbBase:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 208
    return-void
.end method

.method private updateLookAndFeel()V
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$2;->$SwitchMap$com$sonyericsson$cameracommon$zoombar$Zoombar$Type:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 238
    :pswitch_0
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_zoom_bar_portrait_icn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 242
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_zoom_bar_clear_supported_dz_on_clear_work_portrait_icn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 265
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void
.end method

.method public hideDelayed()V
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 258
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_0
    return-void
.end method

.method public initZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    .line 215
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public onZoomChanged(III)I
    .locals 3
    .param p1, "current"    # I
    .param p2, "maxSuperResolution"    # I
    .param p3, "maxDigital"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "ret":I
    sget-object v1, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$2;->$SwitchMap$com$sonyericsson$cameracommon$zoombar$Zoombar$Type:[I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    return v0

    .line 113
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    move-result v0

    .line 114
    goto :goto_0

    .line 117
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChangedWithSuperResolutionInternal(III)I

    move-result v0

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSensorOrientation(I)V
    .locals 3
    .param p1, "orient"    # I

    .prologue
    const/high16 v2, 0x40000000

    .line 218
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateLookAndFeel()V

    .line 219
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 220
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->zoom_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 222
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 230
    :goto_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    if-ltz v0, :cond_0

    .line 231
    iget v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastValue:I

    iget v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLastMaxValue:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    .line 233
    :cond_0
    return-void

    .line 225
    :cond_1
    const/high16 v0, 0x42b40000

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 250
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    return-void
.end method

.method public updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->updateLookAndFeel()V

    .line 95
    return-void
.end method

.method public zoom(II)I
    .locals 2
    .param p1, "current_value"    # I
    .param p2, "max_value"    # I

    .prologue
    .line 151
    sget-object v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->TAG:Ljava/lang/String;

    const-string v1, "zoom():[IN]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(II)I

    move-result v0

    return v0
.end method
