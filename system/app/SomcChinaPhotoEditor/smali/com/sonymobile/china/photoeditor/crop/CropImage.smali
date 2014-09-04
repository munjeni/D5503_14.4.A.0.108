.class public Lcom/sonymobile/china/photoeditor/crop/CropImage;
.super Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadBitmapDataTask;,
        Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;,
        Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final BACKUP_PIXEL_COUNT:I = 0x75300

.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final DOWNLOAD_BUCKET:Ljava/io/File;

.field private static final DOWNLOAD_CAPACITY:J = 0x4000000L

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download"

.field public static final DOWNLOAD_STRING:Ljava/lang/String; = "download"

.field private static final EXIF_TAGS:[Ljava/lang/String;

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final KEY_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final KEY_CROPPED_RECT:Ljava/lang/String; = "cropped-rect"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final KEY_OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final KEY_OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SAVED_TO_MEDIA_PROVIDER:Ljava/lang/String; = "saved-to-media-provider"

.field public static final KEY_SCALE:Ljava/lang/String; = "scale"

.field public static final KEY_SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final KEY_SET_AS_WALLPAPER:Ljava/lang/String; = "set-as-wallpaper"

.field public static final KEY_SPOTLIGHT_X:Ljava/lang/String; = "spotlightX"

.field public static final KEY_SPOTLIGHT_Y:Ljava/lang/String; = "spotlightY"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAX_BACKUP_IMAGE_SIZE:I = 0x140

.field private static final MAX_FILE_INDEX:I = 0x3e8

.field private static final MAX_PIXEL_COUNT:I = 0x4c4b40

.field private static final MSG_BITMAP:I = 0x2

.field private static final MSG_DISMISS_DIALOG_RESULT_CANCELLED:I = 0x6

.field private static final MSG_DISMISS_DIALOG_RESULT_OK:I = 0x5

.field private static final MSG_LARGE_BITMAP:I = 0x1

.field private static final MSG_SAVE_COMPLETE:I = 0x3

.field private static final MSG_SHOW_SAVE_ERROR:I = 0x4

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_SAVING:I = 0x2

.field private static final TILE_SIZE:I = 0x200

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapTileProvider:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;

.field private mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

.field private mDoFaceDetection:Z

.field private mDownloadCache:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

.field private mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mResultFolderName:Ljava/lang/String;

.field private mSaveTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedToResultFolder:Z

.field private mState:I

.field private mUseRegionDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    .line 1094
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;-><init>()V

    .line 168
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDoFaceDetection:Z

    .line 189
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mUseRegionDecoder:Z

    .line 1082
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/sonymobile/china/photoeditor/crop/CropImage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/Future;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mLoadTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/Future;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSavedToResultFolder:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mResultFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Landroid/net/Uri;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveBitmapToUri(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setAsWallpaper(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveToMediaProvider(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/Future;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/CropImage;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSaveTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    return-object p1
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 572
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .prologue
    .line 1106
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v5, "oldExif":Landroid/media/ExifInterface;
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v4, "newExif":Landroid/media/ExifInterface;
    const-string v8, "ImageWidth"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v8, "ImageLength"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v8, "Orientation"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v1, v2

    .line 1114
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1115
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1116
    invoke-virtual {v4, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    const-string v8, "FNumber"

    invoke-virtual {v5, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1122
    .restart local v7    # "value":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1124
    :try_start_1
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1125
    .local v0, "aperture":F
    const-string v8, "FNumber"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v10, 0x41200000

    mul-float/2addr v10, v0

    const/high16 v11, 0x3f000000

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/10"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1149
    .end local v0    # "aperture":F
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1155
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "newExif":Landroid/media/ExifInterface;
    .end local v5    # "oldExif":Landroid/media/ExifInterface;
    .end local v7    # "value":Ljava/lang/String;
    :goto_2
    return-void

    .line 1150
    :catch_0
    move-exception v8

    goto :goto_2

    .line 1127
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "newExif":Landroid/media/ExifInterface;
    .restart local v5    # "oldExif":Landroid/media/ExifInterface;
    .restart local v7    # "value":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public static determineCompressFormat(Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    .prologue
    .line 378
    const-string v0, "JPEG"

    .line 379
    .local v0, "compressFormat":Ljava/lang/String;
    instance-of v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    if-eqz v2, :cond_1

    .line 380
    check-cast p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .end local p0    # "obj":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "mime":Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    :cond_0
    const-string v0, "PNG"

    .line 387
    .end local v1    # "mime":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "decoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "dest"    # Landroid/graphics/Rect;
    .param p5, "sample"    # I

    .prologue
    .line 773
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    .line 774
    .local v5, "tileSize":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 775
    .local v4, "tileRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 776
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 777
    move/from16 v0, p5

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 778
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 779
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 781
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 782
    .local v3, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .local v6, "tx":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v10, :cond_2

    .line 783
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, "ty":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v10, :cond_1

    .line 784
    add-int v10, v6, v5

    add-int v11, v7, v5

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 785
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 789
    monitor-enter p2

    .line 790
    :try_start_0
    invoke-virtual {p2, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 791
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 793
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 783
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/2addr v7, v5

    add-int/lit16 v9, v9, 0x200

    goto :goto_1

    .line 791
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 782
    :cond_1
    add-int/2addr v6, v5

    add-int/lit16 v8, v8, 0x200

    goto :goto_0

    .line 797
    .end local v7    # "ty":I
    .end local v9    # "y":I
    :cond_2
    return-void
.end method

.method private declared-synchronized freeDownloadCache()V
    .locals 1

    .prologue
    .line 1158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDownloadCache:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDownloadCache:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->destroy()V

    .line 1160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDownloadCache:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    :cond_0
    monitor-exit p0

    return-void

    .line 1158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 648
    .local v8, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 649
    .local v10, "outputX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 650
    .local v11, "outputY":I
    if-eqz v8, :cond_0

    .line 651
    const-string v2, "outputX"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 652
    const-string v2, "outputY"

    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 655
    :cond_0
    mul-int v2, v10, v11

    const v4, 0x4c4b40

    if-le v2, v4, :cond_1

    .line 656
    const-wide v4, 0x415312d000000000L

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v4, v4, v20

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v4, v4, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v16, v0

    .line 660
    .local v16, "scale":F
    int-to-float v2, v10

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 661
    int-to-float v2, v11

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 666
    .end local v16    # "scale":F
    :cond_1
    const/high16 v17, 0x3f800000

    .line 667
    .local v17, "scaleX":F
    const/high16 v18, 0x3f800000

    .line 668
    .local v18, "scaleY":F
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 669
    .local v6, "dest":Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    const-string v2, "scale"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 670
    :cond_2
    int-to-float v2, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v2, v4

    .line 671
    int-to-float v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v2, v4

    .line 672
    if-eqz v8, :cond_3

    const-string v2, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 673
    :cond_3
    const/high16 v2, 0x3f800000

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    .line 674
    const/high16 v17, 0x3f800000

    .line 675
    :cond_4
    const/high16 v2, 0x3f800000

    cmpl-float v2, v18, v2

    if-lez v2, :cond_5

    .line 676
    const/high16 v18, 0x3f800000

    .line 681
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 682
    .local v13, "rectWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 683
    .local v12, "rectHeight":I
    sub-int v2, v10, v13

    int-to-float v2, v2

    const/high16 v4, 0x40000000

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, v11, v12

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v5, v10, v13

    int-to-float v5, v5

    const/high16 v20, 0x40000000

    div-float v5, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v20, v11, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .line 688
    .local v19, "source":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 689
    .local v14, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 690
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 724
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "result":Landroid/graphics/Bitmap;
    .end local v19    # "source":Landroid/graphics/Bitmap;
    :goto_1
    return-object v14

    .line 644
    .end local v6    # "dest":Landroid/graphics/Rect;
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v10    # "outputX":I
    .end local v11    # "outputY":I
    .end local v12    # "rectHeight":I
    .end local v13    # "rectWidth":I
    .end local v17    # "scaleX":F
    .end local v18    # "scaleY":F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 694
    .restart local v6    # "dest":Landroid/graphics/Rect;
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v10    # "outputX":I
    .restart local v11    # "outputY":I
    .restart local v12    # "rectHeight":I
    .restart local v13    # "rectWidth":I
    .restart local v17    # "scaleX":F
    .restart local v18    # "scaleY":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mUseRegionDecoder:Z

    if-eqz v2, :cond_9

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getFullImageRotation()I

    move-result v15

    .line 696
    .local v15, "rotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 698
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 700
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 701
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v7

    .line 702
    .local v7, "sample":I
    iput v7, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v2, v4, :cond_8

    if-nez v15, :cond_8

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4

    .line 707
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    monitor-exit v4

    goto :goto_1

    .line 708
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 710
    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 711
    .restart local v14    # "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 712
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 716
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "sample":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "result":Landroid/graphics/Bitmap;
    .end local v15    # "rotation":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getRotation()I

    move-result v15

    .line 717
    .restart local v15    # "rotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 719
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 720
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 721
    .restart local v14    # "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 722
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "requestFormat":Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->determineCompressFormat(Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "outputFormat":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 585
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0    # "outputFormat":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 581
    goto :goto_0

    .line 585
    .restart local v0    # "outputFormat":Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1044
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1045
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v2

    .line 1046
    .local v2, "manager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    if-nez v5, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-object v3

    .line 1052
    :cond_1
    invoke-virtual {v2, v5}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v4

    .line 1053
    .local v4, "path":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    if-eqz v4, :cond_0

    .line 1059
    invoke-virtual {v2, v4}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .line 1060
    .local v3, "mediaItem":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    instance-of v6, v3, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    if-eqz v6, :cond_0

    move-object v1, v3

    .line 1061
    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    .line 1062
    .local v1, "localImage":Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;
    iget-object v0, v1, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 1063
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1064
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->setIsDrm(Z)V

    goto :goto_0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private initializeData()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 867
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 869
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 870
    const-string v4, "noFaceDetection"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 871
    const-string v4, "noFaceDetection"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDoFaceDetection:Z

    .line 874
    :cond_0
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 876
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 877
    new-instance v4, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v8, 0x140

    invoke-direct {v4, v7, v8}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapTileProvider:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;

    .line 878
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapTileProvider:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;

    invoke-virtual {v4, v7, v6}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->setDataModel(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;I)V

    .line 879
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDoFaceDetection:Z

    if-eqz v4, :cond_3

    .line 880
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 884
    :goto_1
    iput v5, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    .line 974
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v4, v6

    .line 871
    goto :goto_0

    .line 882
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 889
    :cond_4
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v7, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 893
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getMediaItemFromIntentData()Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    if-eqz v4, :cond_1

    .line 908
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "allowDrm":Z
    if-eqz v2, :cond_5

    .line 911
    const-string v4, "return-data"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "output"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "set-as-wallpaper"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v5

    .line 919
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    check-cast v4, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    iget-object v4, v4, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->hasWallpaperRights(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 920
    :cond_6
    if-nez v0, :cond_9

    .line 925
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070091

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 936
    :cond_7
    :goto_4
    iput-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .line 938
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto :goto_2

    .line 894
    .end local v0    # "allowDrm":Z
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "allowDrm":Z
    :cond_8
    move v0, v6

    .line 911
    goto :goto_3

    .line 927
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    check-cast v4, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    iget-object v4, v4, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/drm/DrmManager;->hasWallpaperRights(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 931
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070006

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 943
    .end local v0    # "allowDrm":Z
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_b

    move v3, v5

    .line 944
    .local v3, "supportedByBitmapRegionDecoder":Z
    :goto_5
    if-eqz v3, :cond_c

    .line 945
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getThreadPool()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-direct {v5, v6}, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;)V

    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/CropImage$4;

    invoke-direct {v6, p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage$4;-><init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;)V

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mLoadTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    goto/16 :goto_2

    .end local v3    # "supportedByBitmapRegionDecoder":Z
    :cond_b
    move v3, v6

    .line 943
    goto :goto_5

    .line 960
    .restart local v3    # "supportedByBitmapRegionDecoder":Z
    :cond_c
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getThreadPool()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadBitmapDataTask;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-direct {v5, v6}, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadBitmapDataTask;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;)V

    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/CropImage$5;

    invoke-direct {v6, p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage$5;-><init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;)V

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    goto/16 :goto_2
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 832
    if-nez p1, :cond_0

    .line 833
    const/high16 v0, 0x7f070000

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 834
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    .line 847
    :goto_0
    return-void

    .line 837
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mUseRegionDecoder:Z

    .line 838
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    .line 840
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 841
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->setDataModel(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;I)V

    .line 842
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 7
    .param p1, "regionDecoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    const/high16 v6, 0x7f070000

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 801
    if-nez p1, :cond_0

    .line 802
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 803
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    .line 829
    :goto_0
    return-void

    .line 806
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 807
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mUseRegionDecoder:Z

    .line 808
    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    .line 810
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 811
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    .line 812
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 813
    .local v0, "height":I
    const/4 v3, -0x1

    const v4, 0x75300

    invoke-static {v2, v0, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 815
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 816
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 817
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 818
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto :goto_0

    .line 822
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    new-instance v4, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getFullImageRotation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->setDataModel(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;I)V

    .line 824
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDoFaceDetection:Z

    if-eqz v3, :cond_2

    .line 825
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 827
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 7

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 595
    .local v1, "extra":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 596
    .local v0, "cropRect":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 598
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    .line 599
    if-eqz v1, :cond_1

    const-string v3, "set-as-wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f07000a

    .line 601
    .local v2, "messageId":I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 602
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getThreadPool()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;

    invoke-direct {v4, p0, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;-><init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/RectF;Landroid/os/Bundle;)V

    new-instance v5, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;

    invoke-direct {v5, p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;-><init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;)V

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSaveTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    goto :goto_0

    .line 599
    .end local v2    # "messageId":I
    :cond_1
    const v2, 0x7f070090

    goto :goto_1
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 729
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 731
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 732
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 739
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 743
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 744
    .local v0, "h":I
    sparse-switch p3, :sswitch_data_0

    .line 767
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 746
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 747
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 748
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 749
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 753
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 754
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 755
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 756
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 760
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 761
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 762
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 763
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 744
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 4
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x0

    .line 540
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 541
    .local v0, "ios":Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/CropImage$2;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage$2;-><init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;)V

    invoke-interface {p1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 547
    const/16 v2, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v2, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 548
    .local v1, "result":Z
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const/4 v1, 0x0

    .line 553
    .end local v1    # "result":Z
    invoke-interface {p1, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 554
    invoke-static {p4}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v1

    .line 553
    .restart local v1    # "result":Z
    :cond_0
    invoke-interface {p1, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 554
    invoke-static {p4}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 553
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    invoke-interface {p1, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 554
    invoke-static {p4}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private saveBitmapToUri(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 560
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveBitmapToOutputStream(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 568
    :goto_0
    return v0

    .line 563
    :catch_0
    move-exception v0

    .line 568
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveGenericImage(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "cropped"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 510
    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 511
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "cannot create download folder"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 514
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 515
    .local v1, "now":J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "\'IMG\'_yyyyMMdd_HHmmss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "filename":Ljava/lang/String;
    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveMedia(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 518
    .local v3, "output":Ljava/io/File;
    if-nez v3, :cond_1

    .line 519
    const/4 v5, 0x0

    .line 534
    :goto_0
    return-object v5

    .line 521
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v5, "_display_name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v5, "datetaken"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    const-string v5, "date_modified"

    div-long v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 526
    const-string v5, "date_added"

    div-long v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 527
    const-string v5, "mime_type"

    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v5, "orientation"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string v5, "_data"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v5, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 531
    const-string v5, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string v5, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 13
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "cropped"    # Landroid/graphics/Bitmap;

    .prologue
    .line 469
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    .line 471
    .local v2, "localImage":Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;
    new-instance v5, Ljava/io/File;

    iget-object v9, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .local v5, "oldPath":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mResultFolderName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "filename":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 477
    .local v7, "pos":I
    if-ltz v7, :cond_0

    .line 478
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 479
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveMedia(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 480
    .local v6, "output":Ljava/io/File;
    if-nez v6, :cond_1

    .line 481
    const/4 v9, 0x0

    .line 506
    :goto_0
    return-object v9

    .line 484
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;II)V

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v3, v9, v11

    .line 488
    .local v3, "now":J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 489
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "title"

    iget-object v10, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v9, "_display_name"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v9, "datetaken"

    iget-wide v10, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    const-string v9, "date_modified"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    const-string v9, "date_added"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 494
    const-string v9, "mime_type"

    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v9, "orientation"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v9, "_data"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v9, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v9, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v9, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    iget-wide v9, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    iget-wide v11, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    invoke-static {v9, v10, v11, v12}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 502
    const-string v9, "latitude"

    iget-wide v10, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 503
    const-string v9, "longitude"

    iget-wide v10, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 505
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSavedToResultFolder:Z

    .line 506
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "cropped"    # Landroid/graphics/Bitmap;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 404
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v0, v5

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 414
    :cond_1
    const/4 v0, 0x0

    .line 415
    .local v0, "candidate":Ljava/io/File;
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "fileExtension":Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_2

    .line 417
    new-instance v0, Ljava/io/File;

    .end local v0    # "candidate":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    .restart local v0    # "candidate":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    .line 429
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_5

    .line 430
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 421
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v0, v5

    .line 426
    goto :goto_0

    .line 416
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 433
    :cond_5
    invoke-virtual {v0, v9, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 434
    invoke-virtual {v0, v9, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 437
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v3}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveBitmapToOutputStream(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 452
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v5

    .line 454
    goto/16 :goto_0

    .line 442
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 444
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 448
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v5

    .line 449
    goto/16 :goto_0
.end method

.method private saveToMediaProvider(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "cropped"    # Landroid/graphics/Bitmap;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMediaItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveLocalImage(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveGenericImage(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setAsWallpaper(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 392
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCropParameters()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 850
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 851
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    const-string v5, "aspectX"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 854
    .local v0, "aspectX":I
    const-string v5, "aspectY"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 855
    .local v1, "aspectY":I
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 856
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->setAspectRatio(F)V

    .line 859
    :cond_2
    const-string v5, "spotlightX"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 860
    .local v3, "spotlightX":F
    const-string v5, "spotlightY"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 861
    .local v4, "spotlightY":F
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_0

    cmpl-float v5, v4, v8

    if-eqz v5, :cond_0

    .line 862
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v5, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->setSpotlightRatio(FF)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getDownloadCache()Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
    .locals 4

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDownloadCache:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    if-nez v1, :cond_1

    .line 1166
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1168
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    .end local v0    # "cacheDir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1176
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDownloadCache:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    .line 1178
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mDownloadCache:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x4

    .line 213
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->requestWindowFeature(I)Z

    .line 217
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setContentView(I)V

    .line 218
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .line 219
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-interface {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->setContentPane(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V

    .line 221
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 222
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 224
    const v1, 0x7f070092

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mResultFolderName:Ljava/lang/String;

    .line 226
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;-><init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 270
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setCropParameters()V

    .line 271
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 281
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1001
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->onDestroy()V

    .line 1002
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->freeDownloadCache()V

    .line 1003
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1006
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 302
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 289
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto :goto_0

    .line 293
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setResult(I)V

    .line 294
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto :goto_0

    .line 298
    :sswitch_2
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0098 -> :sswitch_1
        0x7f0c0099 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 1010
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->onPause()V

    .line 1012
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mLoadTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 1013
    .local v1, "loadTask":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1015
    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->cancel()V

    .line 1016
    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->waitDone()V

    .line 1017
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 1021
    .local v0, "loadBitmapTask":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1023
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->cancel()V

    .line 1024
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->waitDone()V

    .line 1025
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1028
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSaveTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 1029
    .local v3, "saveTask":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Landroid/content/Intent;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1031
    invoke-interface {v3}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->cancel()V

    .line 1032
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1034
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v2

    .line 1035
    .local v2, "root":Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    invoke-interface {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->lockRenderThread()V

    .line 1037
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    invoke-interface {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->unlockRenderThread()V

    .line 1041
    return-void

    .line 1039
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->unlockRenderThread()V

    throw v4
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 978
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->onResume()V

    .line 979
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSavedToResultFolder:Z

    .line 980
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    if-nez v1, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->initializeData()V

    .line 983
    :cond_0
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 984
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 990
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v0

    .line 991
    .local v0, "root":Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->lockRenderThread()V

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mCropView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->unlockRenderThread()V

    .line 997
    return-void

    .line 995
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    const-string v0, "state"

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    return-void
.end method
