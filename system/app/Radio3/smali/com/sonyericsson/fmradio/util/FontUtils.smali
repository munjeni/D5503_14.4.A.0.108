.class public Lcom/sonyericsson/fmradio/util/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static final ASSET_SOMALIGHT_FONT:Ljava/lang/String; = "fonts/SoMALight.ttf"

.field private static final SYSTEM_SOMADIGITLIGHT_FONT:Ljava/lang/String; = "fonts/SoMADigitLight.ttf"

.field private static sDigitLightFont:Landroid/graphics/Typeface;

.field private static sLightFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigitLightFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sDigitLightFont:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SoMADigitLight.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sDigitLightFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sDigitLightFont:Landroid/graphics/Typeface;

    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sDigitLightFont:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getLightFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sLightFont:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SoMALight.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sLightFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sLightFont:Landroid/graphics/Typeface;

    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v1, Lcom/sonyericsson/fmradio/util/FontUtils;->sLightFont:Landroid/graphics/Typeface;

    goto :goto_0
.end method
