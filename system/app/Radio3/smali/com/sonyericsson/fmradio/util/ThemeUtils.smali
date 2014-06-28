.class public Lcom/sonyericsson/fmradio/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static sAccentColor:I

.field private static sAccentColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccentColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const v0, -0x3ed602

    return v0
.end method

.method public static getAccentColorFilter(Landroid/content/Context;)Landroid/graphics/ColorFilter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/ThemeUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 28
    .local v0, "accentColor":I
    sget v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColor:I

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_1

    .line 29
    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColorFilter:Landroid/graphics/ColorFilter;

    .line 31
    :cond_1
    sget-object v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColorFilter:Landroid/graphics/ColorFilter;

    return-object v1
.end method
