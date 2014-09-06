.class public Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;
.super Ljava/lang/Object;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;,
        Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    }
.end annotation


# static fields
.field private static final SYSTEM_UI_VISIBILITY_EXTENSIONS:Ljava/lang/String; = "com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isAvailableSystemUiVisibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_ASSIGNED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    goto :goto_0
.end method

.method public static getLeftItemCount(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$integer;->shortcut_icon_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getSurfaceRect(Landroid/app/Activity;F)Landroid/graphics/Rect;
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "previewAspectRatio"    # F

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    .line 134
    .local v2, "viewfinderRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 136
    .local v0, "aspectRatio":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .local v1, "previewRect":Landroid/graphics/Rect;
    cmpl-float v3, p1, v0

    if-lez v3, :cond_0

    .line 141
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    :goto_0
    return-object v1

    .line 149
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static getSystemBarMargin(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setupDummySystemBar():[Unexpected system bar status.]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->navigationbar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 9
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 90
    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 115
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "setupDummySystemBar():[Unexpected system bar status.]"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :pswitch_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    const/16 v2, 0x468

    .line 97
    .local v2, "screenHeight":I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->getLcdSize(I)Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    move-result-object v1

    .line 98
    .local v1, "lcdSize":Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    iget v3, v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->width:I

    .line 119
    .end local v1    # "lcdSize":Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    .local v3, "screenWidth":I
    :goto_0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 120
    .local v5, "width":I
    mul-int/lit8 v6, v5, 0x9

    div-int/lit8 v0, v6, 0x10

    .line 121
    .local v0, "height":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    .line 101
    .end local v0    # "height":I
    .end local v2    # "screenHeight":I
    .end local v3    # "screenWidth":I
    .end local v5    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    .restart local v3    # "screenWidth":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .restart local v2    # "screenHeight":I
    goto :goto_0

    .line 108
    .end local v2    # "screenHeight":I
    .end local v3    # "screenWidth":I
    :pswitch_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 109
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 110
    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 111
    .restart local v3    # "screenWidth":I
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 112
    .restart local v2    # "screenHeight":I
    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isAvailableSystemUiVisibility(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    const-string v0, "com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static requestToDimSystemUi(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 243
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 220
    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 225
    :pswitch_2
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v2

    .line 226
    .local v2, "systemUi":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 228
    const/16 v3, 0x201

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setSystemUiVisibility(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 231
    invoke-virtual {v2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 235
    .local v0, "curAct":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 236
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 237
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 238
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static requestToRecoverSystemUi(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 253
    :cond_0
    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 280
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v2

    .line 265
    .local v2, "systemUi":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setSystemUiVisibility(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 268
    invoke-virtual {v2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 272
    .local v0, "curAct":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 273
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 274
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x8000001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 275
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static requestToRemoveSystemUi(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 203
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-static {p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-result-object v0

    .line 197
    .local v0, "systemUi":Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setSuppressNavigationBar(Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;Z)V

    .line 198
    invoke-virtual {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->apply()V

    goto :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    .line 165
    .local v1, "viewfinderRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRightContainer(Landroid/app/Activity;)V

    .line 171
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupCaptureMethodIndicatorContainer(Landroid/app/Activity;)V

    .line 172
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupSettingIndicatorContainer(Landroid/app/Activity;)V

    .line 173
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupSystemBarMargin(Landroid/app/Activity;)V

    .line 174
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;)V

    .line 175
    return-void
.end method

.method private static setSuppressNavigationBar(Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;Z)V
    .locals 2
    .param p0, "systemUi"    # Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .param p1, "suppress"    # Z

    .prologue
    .line 386
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 387
    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 388
    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    .line 389
    return-void
.end method

.method private static setTranslucentNavigationBarBackground(Landroid/content/Context;Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemUi"    # Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .param p2, "translucent"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 397
    invoke-virtual {p1, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->supportsTranslucentBackgroundOpacity(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1, v4}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->supportsTranslucentBackgroundOpacity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    if-eqz p2, :cond_2

    .line 412
    invoke-virtual {p1, v3}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    move-object v0, p0

    .line 415
    check-cast v0, Landroid/app/Activity;

    .line 416
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 417
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0xc000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 419
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 421
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {p1, v4}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    goto :goto_0
.end method

.method private static setupCaptureMethodIndicatorContainer(Landroid/app/Activity;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 356
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->capture_method_indicator_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 358
    return-void
.end method

.method private static setupModeIndicatorContainer(Landroid/app/Activity;)V
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->capturing_mode_selector_button_item_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 368
    .local v1, "modeIconSize":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 370
    .local v3, "shortcutIconHeight":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 373
    .local v0, "containerWidth":I
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->mode_indicator_container:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 375
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    sub-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 378
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v5

    div-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 380
    return-void
.end method

.method private static setupRightContainer(Landroid/app/Activity;)V
    .locals 7
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 287
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v3

    .line 288
    .local v3, "viewfinderRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 291
    .local v1, "shortcutIconHeight":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v5

    div-int/2addr v4, v5

    sub-int/2addr v4, v1

    div-int/lit8 v2, v4, 0x2

    .line 292
    .local v2, "topMargin":I
    move v0, v2

    .line 293
    .local v0, "bottomMargin":I
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v2, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 295
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupModeIndicatorContainer(Landroid/app/Activity;)V

    .line 296
    return-void
.end method

.method public static setupRotatableToast(Landroid/app/Activity;)V
    .locals 15
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 300
    .local v6, "metrix":Landroid/util/DisplayMetrics;
    iget v11, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 301
    .local v1, "displayWidth":I
    iget v11, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 303
    .local v0, "displayHeight":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sonyericsson/cameracommon/R$dimen;->left_container_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 305
    .local v5, "leftMargin":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v12

    add-int v9, v11, v12

    .line 308
    .local v9, "rightMargin":I
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    .line 309
    .local v2, "finderRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int v12, v0, v12

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 310
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v12

    div-int v10, v11, v12

    .line 313
    .local v10, "toastHeight":I
    new-instance v4, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v9

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v10

    invoke-direct {v4, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 318
    .local v4, "landscapeTop":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v10

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v9

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    .local v3, "landscapeBottom":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v5

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v5

    add-int/2addr v13, v10

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    .local v8, "portraitTop":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v9

    sub-int/2addr v11, v10

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v9

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 336
    .local v7, "portraitBottom":Landroid/graphics/Rect;
    new-instance v11, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v11, v1, v0, v4, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v12, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v12, v1, v0, v8, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V

    .line 339
    return-void
.end method

.method private static setupSettingIndicatorContainer(Landroid/app/Activity;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 361
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->setting_indicator_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 363
    return-void
.end method

.method private static setupSystemBarMargin(Landroid/app/Activity;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 342
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->icons:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "iconContainer":Landroid/view/View;
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 345
    .local v2, "uiComponentsContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v1

    .line 346
    .local v1, "navigationBarWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 352
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 353
    return-void
.end method
