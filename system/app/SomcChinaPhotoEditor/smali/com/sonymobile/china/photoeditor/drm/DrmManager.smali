.class public final Lcom/sonymobile/china/photoeditor/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# static fields
.field private static final ACTION_NOT_SUPPORTED:I = -0x1

.field private static final sClient:Landroid/drm/DrmManagerClient;

.field private static sWallpaperAction:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->sClient:Landroid/drm/DrmManagerClient;

    .line 42
    const/4 v0, -0x1

    .line 44
    .local v0, "action":I
    :try_start_0
    const-class v2, Landroid/drm/DrmStore$Action;

    const-string v3, "WALLPAPER"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 45
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 52
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    sput v0, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->sWallpaperAction:I

    .line 53
    return-void

    .line 47
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static hasWallpaperRights(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 70
    sget v1, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->sWallpaperAction:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->sClient:Landroid/drm/DrmManagerClient;

    sget v2, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->sWallpaperAction:I

    invoke-virtual {v1, p0, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDrm(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->sClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method
