.class public Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5f

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"


# instance fields
.field private final mCallback:Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDestinationFile:Ljava/io/File;

.field private final mLimitHeight:I

.field private final mLimitWidth:I

.field private final mSaveFileName:Ljava/lang/String;

.field private final mSourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 239
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSourceUri:Landroid/net/Uri;

    .line 131
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mCallback:Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mLimitWidth:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mLimitHeight:I

    .line 135
    const v0, 0x7f070092

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mDestinationFile:Ljava/io/File;

    .line 137
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSaveFileName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 175
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 176
    .local v0, "height":I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 177
    .local v3, "width":I
    const/4 v2, 0x1

    .line 179
    .local v2, "inSampleSize":I
    if-gt v0, p3, :cond_0

    if-le v3, p2, :cond_1

    :cond_0
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 183
    int-to-float v5, v0

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 184
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 189
    .local v4, "widthRatio":I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 192
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v4

    .line 189
    goto :goto_0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private copyExif(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 274
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 283
    .local v2, "PROJECTION":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 287
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-static {v7, p2}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v7    # "path":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 254
    .local v5, "source":Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "dest":Landroid/media/ExifInterface;
    const/4 v4, 0x0

    .line 256
    .local v4, "needsSave":Z
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 257
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 259
    const/4 v4, 0x1

    .line 260
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 264
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dest":Landroid/media/ExifInterface;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "needsSave":Z
    .end local v5    # "source":Landroid/media/ExifInterface;
    :cond_2
    :goto_1
    return-void

    .line 266
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private getBitmapBounds(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    .line 171
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 168
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static getFinalSaveDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "folder"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v0, "saveDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_0
    return-object v0
.end method

.method public static getNewFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "folder"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 152
    .local v1, "saveDirectory":Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "saveFileName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 371
    .local v0, "now":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v4, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    const-string v4, "date_modified"

    div-long v5, v0, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    const-string v4, "date_added"

    div-long v5, v0, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v4, "orientation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v4, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "datetaken"

    aput-object v4, v2, v7

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    .line 387
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$1;

    invoke-direct {v4, v3}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$1;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private loadMutableBitmap()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 196
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 203
    .local v1, "is":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSourceUri:Landroid/net/Uri;

    invoke-direct {p0, v5, v3}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->getBitmapBounds(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)V

    .line 208
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mLimitWidth:I

    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mLimitHeight:I

    invoke-direct {p0, v3, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 210
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_0

    .line 222
    move-object v2, v0

    .line 223
    .local v2, "oldBitmap":Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    .end local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSourceUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    .line 228
    .local v4, "orientation":I
    invoke-static {v0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 234
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    .line 236
    .end local v4    # "orientation":I
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v5

    .line 234
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    throw v5
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 351
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 352
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-interface {p3, v6}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_0
    if-eqz v6, :cond_1

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v1

    .line 358
    if-eqz v6, :cond_1

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "xmp"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v0    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 82
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    :goto_0
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sonymobile/china/photoeditor/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void

    .line 75
    :catch_0
    move-exception v2

    .line 80
    :goto_1
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 75
    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Landroid/net/Uri;
    .locals 11
    .param p1, "params"    # [Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 309
    aget-object v7, p1, v8

    if-nez v7, :cond_0

    move-object v4, v6

    .line 335
    :goto_0
    return-object v4

    .line 313
    :cond_0
    aget-object v3, p1, v8

    .line 316
    .local v3, "preset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->loadMutableBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 319
    .local v5, "xmp":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 320
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->isPanoramaSafe()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 321
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 322
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v5

    .line 324
    .end local v5    # "xmp":Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mDestinationFile:Ljava/io/File;

    invoke-static {v0, v7, v5}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)V

    .line 325
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSourceUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->copyExif(Landroid/net/Uri;Ljava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSourceUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mDestinationFile:Ljava/io/File;

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mSaveFileName:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v0}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v4

    .line 328
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    move-object v4, v6

    .line 335
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, [Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->doInBackground([Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mCallback:Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->mCallback:Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 344
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
