.class public Lcom/sonymobile/settings/util/ColorReplacer;
.super Ljava/lang/Object;
.source "ColorReplacer.java"


# direct methods
.method public static getThemeColor(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultColor"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 128
    .local v2, "resources":Landroid/content/res/Resources;
    move v3, p1

    .line 129
    .local v3, "result":I
    if-eqz v2, :cond_0

    .line 131
    const v4, 0x7f0a002c

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    .local v0, "color":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 137
    .end local v0    # "color":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v3

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "Settings"

    const-string v5, "Can not find color resource R.color.somc_theme_accent_color"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
