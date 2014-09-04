.class public Lcom/sonymobile/china/collage/utils/SaveUtils;
.super Ljava/lang/Object;
.source "SaveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/utils/SaveUtils$1;,
        Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;,
        Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/china/collage/utils/SaveUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/utils/SaveUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static startSaveShareScreenshot(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;Lcom/sonymobile/china/collage/utils/SaveUtils$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :cond_0
    return-void
.end method
