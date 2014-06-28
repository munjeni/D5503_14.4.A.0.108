.class public Lcom/sonyericsson/musicvisualizer/MusicVisualizerPreference;
.super Ljava/lang/Object;
.source "MusicVisualizerPreference.java"


# static fields
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "uxvisualizer"

.field private static final VISUALIZER_DEFAULT_THEME:I

.field private static final VISUALIZER_THEME:Ljava/lang/String; = "visualizer_theme"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Glow:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerPreference;->VISUALIZER_DEFAULT_THEME:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getVisualizeTheme(Landroid/content/Context;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v2, "uxvisualizer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "s":Landroid/content/SharedPreferences;
    const-string v2, "visualizer_theme"

    sget v3, Lcom/sonyericsson/musicvisualizer/MusicVisualizerPreference;->VISUALIZER_DEFAULT_THEME:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "index":I
    invoke-static {}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->values()[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v2

    aget-object v2, v2, v0

    return-object v2
.end method

.method public static setVisualizerTheme(Landroid/content/Context;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "theme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 33
    const-string v1, "uxvisualizer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "visualizer_theme"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method
