.class public Lcom/sonyericsson/conversations/ui/UiConfig;
.super Ljava/lang/Object;
.source "UiConfig.java"


# static fields
.field private static final DEFAULT_HIGHLIGHT_COLOR:I = -0x777778

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final IS_TEXT_MESSAGING_DISABLED_METHOD_NAME:Ljava/lang/String; = "isTextMessagingDisabled"

.field private static final NOT_INITIATED:I = -0x1

.field private static final STATUS_BAR_HEIGHT_RESOURCE_NAME:Ljava/lang/String; = "status_bar_height"

.field private static final STATUS_BAR_HEIGHT_RESOURCE_PACKAGE:Ljava/lang/String; = "android"

.field private static final STATUS_BAR_HEIGHT_RESOURCE_TYPE:Ljava/lang/String; = "dimen"

.field private static mActionbarHideWhenKeypadOpen:Z

.field private static mBubbleAlignReverse:Z

.field private static mCityIdEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mDPM:Landroid/app/admin/DevicePolicyManager;

.field private static mIsTextMessagingDisabled:Ljava/lang/reflect/Method;

.field private static mIsUseTwoPane:Z

.field private static mStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    .line 47
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mBubbleAlignReverse:Z

    .line 48
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mCityIdEnabled:Z

    .line 49
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mActionbarHideWhenKeypadOpen:Z

    .line 50
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsUseTwoPane:Z

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mStatusBarHeight:I

    .line 54
    sput-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 55
    sput-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsTextMessagingDisabled:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccentColor()I
    .locals 4

    .prologue
    .line 190
    :try_start_0
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    .local v0, "color":I
    :goto_0
    return v0

    .line 192
    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const v0, -0xf65013

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public static getListItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 203
    .local v1, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 209
    :cond_0
    :goto_0
    return-object v1

    .end local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStatusbarHeight()I
    .locals 2

    .prologue
    .line 175
    sget v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "status bar height requested before initiation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    sget v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mStatusBarHeight:I

    return v0
.end method

.method public static getThemeDefaultContactBadge()Landroid/widget/QuickContactBadge;
    .locals 4

    .prologue
    .line 246
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 247
    .local v1, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "badgeLayout":Landroid/view/View;
    const v2, 0x7f0a009e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    return-object v2
.end method

.method public static getThemeDefaultContactBadgeBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 256
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getThemeDefaultContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v3

    .line 257
    .local v3, "qb":Landroid/widget/QuickContactBadge;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 259
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    return-object v0
.end method

.method public static getThemeTextColor()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010098

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 236
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 237
    .local v0, "c":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    return v0
.end method

.method public static getThemeTextColorHighlight()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010099

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 222
    .local v1, "ta":Landroid/content/res/TypedArray;
    const v2, -0x777778

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 223
    .local v0, "c":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    return v0
.end method

.method public static hideMasterPileOnSmallScreen()Z
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sput-object p0, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    .line 63
    .local v0, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    const-string v1, "semc_pref_key_bubble_align_reverse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mBubbleAlignReverse:Z

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsUseTwoPane:Z

    .line 67
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->initActionbarHideAbility(Landroid/content/Context;)V

    .line 69
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->initCityIdProviderInstance(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->initDevicePolicyManager()V

    .line 72
    return-void
.end method

.method private static initActionbarHideAbility(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 126
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xa0

    if-gt v1, v2, :cond_0

    .line 127
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mActionbarHideWhenKeypadOpen:Z

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mActionbarHideWhenKeypadOpen:Z

    goto :goto_0
.end method

.method private static initCityIdProviderInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->getCityIdHelperInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/cityid/CityIdHelper;

    move-result-object v0

    .line 144
    .local v0, "cityHelper":Lcom/sonyericsson/conversations/cityid/CityIdHelper;
    if-eqz v0, :cond_0

    .line 145
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mCityIdEnabled:Z

    .line 147
    :cond_0
    return-void
.end method

.method private static declared-synchronized initDevicePolicyManager()V
    .locals 6

    .prologue
    .line 100
    const-class v2, Lcom/sonyericsson/conversations/ui/UiConfig;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    sput-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 102
    sget-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 115
    .local v0, "dpmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    monitor-exit v2

    return-void

    .line 107
    .end local v0    # "dpmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 108
    .restart local v0    # "dpmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "isTextMessagingDisabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ComponentName;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsTextMessagingDisabled:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 112
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static initStatusbarHeight(Landroid/content/res/Resources;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 134
    const/4 v1, 0x0

    sput v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mStatusBarHeight:I

    .line 135
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sonyericsson/conversations/ui/UiConfig;->mStatusBarHeight:I

    .line 140
    :cond_0
    return-void
.end method

.method public static isActionbarHideWhenKeypadOpen()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mActionbarHideWhenKeypadOpen:Z

    return v0
.end method

.method public static isBubbleAlignReverse()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mBubbleAlignReverse:Z

    return v0
.end method

.method public static isCityIdEnabled()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mCityIdEnabled:Z

    return v0
.end method

.method public static isPreviewButtonAvailable()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/android/mms/MmsConfig;->isComposerAttachmentPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSaveDraftDialogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSlideshowEditorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSendEmptyMessageEnabled()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isTextMessagingEnabled()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    const-class v3, Lcom/sonyericsson/conversations/ui/UiConfig;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsTextMessagingDisabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 89
    :try_start_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsTextMessagingDisabled:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/sonyericsson/conversations/ui/UiConfig;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 96
    :goto_0
    monitor-exit v3

    return v0

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    move v0, v1

    .line 96
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isUseTwoPane()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsUseTwoPane:Z

    return v0
.end method

.method public static setPaneModeForTest(Z)V
    .locals 0
    .param p0, "isUseTwoPane"    # Z

    .prologue
    .line 171
    sput-boolean p0, Lcom/sonyericsson/conversations/ui/UiConfig;->mIsUseTwoPane:Z

    .line 172
    return-void
.end method
