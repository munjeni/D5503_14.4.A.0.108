.class public Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;
    }
.end annotation


# static fields
.field private static FILE_NAME_DOT:Ljava/lang/String; = null

.field private static final INVALID_INDEX:I = -0x1

.field static final MAX_BITMAP_DIM:I = 0x800

.field private static final SMALL_BITMAP_SIZE:I = 0xf0

.field private static URI_STYLE_STR:Ljava/lang/String;

.field private static mZoomOrientation:I


# instance fields
.field private mAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

.field private mCallback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

.field private mContext:Landroid/content/Context;

.field private mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

.field private final mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mOrientation:I

.field private mOriginalBitmapLarge:Landroid/graphics/Bitmap;

.field private mOriginalBitmapSmall:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mStyleType:I

.field private mUri:Landroid/net/Uri;

.field private final mWarnListenersRunnable:Ljava/lang/Runnable;

.field private final mZoomCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "_beauty_style_"

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->URI_STYLE_STR:Ljava/lang/String;

    .line 100
    const-string v0, "."

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->FILE_NAME_DOT:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;Landroid/content/Context;)V
    .locals 3
    .param p1, "callback"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    .line 73
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 75
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 77
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 79
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    .line 81
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    .line 83
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mZoomCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;

    .line 85
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOrientation:I

    .line 87
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .line 89
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCallback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    .line 91
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 93
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 95
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mStyleType:I

    .line 97
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 455
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCallback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    .line 118
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    .line 120
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 348
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, -0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 235
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOrientationFromPath(Ljava/lang/String;)I

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 242
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const-string v0, "orientation"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 245
    .local v11, "orientationIndex":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 247
    .local v8, "dataIndex":I
    if-eq v11, v13, :cond_1

    .line 248
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 250
    .local v10, "ori":I
    sparse-switch v10, :sswitch_data_0

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .line 252
    :sswitch_0
    const/4 v0, 0x1

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 254
    :sswitch_1
    const/4 v0, 0x6

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 256
    :sswitch_2
    const/16 v0, 0x8

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 258
    :sswitch_3
    const/4 v0, 0x3

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 262
    .end local v10    # "ori":I
    :cond_1
    if-eq v8, v13, :cond_2

    .line 263
    :try_start_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "data":Ljava/lang/String;
    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOrientationFromPath(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "dataIndex":I
    .end local v11    # "orientationIndex":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v12

    .line 275
    goto :goto_0

    .line 267
    :catch_0
    move-exception v9

    .line 272
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .line 269
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 272
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static getOrientationFromPath(Ljava/lang/String;)I
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 280
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "EXIF":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 286
    .end local v0    # "EXIF":Landroid/media/ExifInterface;
    :goto_0
    return v2

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getRealUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 21
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 132
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v3, v1

    .line 136
    .local v3, "proj":[Ljava/lang/String;
    move-object/from16 v16, p1

    .line 137
    .local v16, "originalUri":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 138
    .local v18, "realPath":Ljava/lang/String;
    sget-object v20, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 139
    .local v20, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 141
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    :try_start_0
    const-string v1, "_display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 145
    .local v7, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 148
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v7    # "column_index":I
    :cond_0
    if-eqz v18, :cond_1

    const-string v1, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    .end local v16    # "originalUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v16

    .line 148
    .restart local v16    # "originalUri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 154
    :cond_2
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->URI_STYLE_STR:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 155
    .local v14, "index":I
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->FILE_NAME_DOT:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 156
    .local v10, "dotIndex":I
    if-ltz v14, :cond_1

    if-ltz v10, :cond_1

    .line 159
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->URI_STYLE_STR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 160
    .local v19, "styleType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 161
    .local v15, "originalImagePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v20

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 163
    .local v9, "cursorImage":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 165
    :try_start_1
    const-string v1, "_display_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 167
    .restart local v7    # "column_index":I
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 169
    .local v13, "id_index":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 172
    .local v17, "path":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 173
    .local v11, "id":J
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    move-object/from16 v0, v20

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 175
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mStyleType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    .end local v11    # "id":J
    .end local v17    # "path":Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v7    # "column_index":I
    .end local v13    # "id_index":I
    :cond_5
    move-object/from16 v16, p1

    .line 183
    goto/16 :goto_0

    .line 180
    :catchall_1
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getZoomOrientation()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return v0
.end method

.method private loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 356
    const/4 v2, 0x0

    .line 358
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 359
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 360
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 368
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 370
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    return-object v3

    .line 361
    :catch_0
    move-exception v4

    .line 368
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 365
    :catch_1
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method

.method private loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    const/16 v11, 0x800

    const/4 v7, 0x0

    .line 376
    const/4 v2, 0x0

    .line 378
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 382
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 383
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 384
    const/4 v8, 0x0

    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 386
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 387
    .local v6, "width_tmp":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 389
    .local v1, "height_tmp":I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 391
    const/4 v5, 0x1

    .line 393
    .local v5, "scale":I
    :goto_0
    if-gt v6, v11, :cond_1

    if-gt v1, v11, :cond_1

    .line 394
    div-int/lit8 v8, v6, 0x2

    if-lt v8, p2, :cond_0

    div-int/lit8 v8, v1, 0x2

    if-ge v8, p2, :cond_1

    .line 404
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 405
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 407
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 408
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 409
    const/4 v8, 0x0

    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 417
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    .line 419
    .end local v1    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :goto_1
    return-object v7

    .line 398
    .restart local v1    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scale":I
    .restart local v6    # "width_tmp":I
    :cond_1
    :try_start_1
    div-int/lit8 v6, v6, 0x2

    .line 399
    div-int/lit8 v1, v1, 0x2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 410
    .end local v1    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :catch_0
    move-exception v8

    .line 417
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 414
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->closeStream(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ori"    # I

    .prologue
    const/high16 v10, 0x43870000

    const/high16 v6, 0x42b40000

    const/high16 v4, 0x3f800000

    const/high16 v2, -0x40800000

    const/high16 v3, 0x40000000

    .line 301
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 302
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 303
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 304
    .local v7, "h":I
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 308
    :cond_0
    move v8, v9

    .line 309
    .local v8, "tmp":I
    move v9, v7

    .line 310
    move v7, v8

    .line 312
    .end local v8    # "tmp":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 341
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 314
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 341
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 317
    :pswitch_1
    const/high16 v0, 0x43340000

    int-to-float v1, v9

    div-float/2addr v1, v3

    int-to-float v2, v7

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 320
    :pswitch_2
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 323
    :pswitch_3
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 326
    :pswitch_4
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 329
    :pswitch_5
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 330
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 333
    :pswitch_6
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 334
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private updateBitmaps()V
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOrientation:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 292
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 294
    :cond_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOrientation:I

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mZoomOrientation:I

    .line 295
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->setOriginalBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->setOriginalBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->warnListeners()V

    .line 298
    return-void
.end method

.method private warnListeners()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCallback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 2
    .param p1, "imageShow"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->addObserver(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 449
    return-void

    .line 447
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getBackgroundBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 424
    const v0, 0x7f0200dc

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    return-object v0
.end method

.method public getImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "caller"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .param p2, "imagePreset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p3, "hiRes"    # Z

    .prologue
    const/4 v1, 0x0

    .line 496
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, "filteredImage":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    :goto_0
    return-object v1

    .line 502
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 506
    :cond_1
    if-eqz p3, :cond_3

    .line 507
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->get(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 512
    :goto_1
    if-nez v0, :cond_2

    .line 513
    if-eqz p3, :cond_4

    .line 514
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->prepare(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 515
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->addObserver(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v0

    .line 524
    goto :goto_0

    .line 509
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->get(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 517
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->prepare(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 518
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->addObserver(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 522
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getImageLoaderCallback()Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCallback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    return-object v0
.end method

.method public getOriginalBitmapLarge()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBitmapSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScaleOneImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "caller"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .param p2, "imagePreset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "force"    # Z

    .prologue
    .line 470
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mZoomCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;

    invoke-virtual {v3, p2, p3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->getImage(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    if-nez v0, :cond_1

    .line 475
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v3, p3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_1

    .line 479
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 480
    .local v1, "bmp2":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->getScaleFactor()F

    move-result v2

    .line 481
    .local v2, "scaleFactor":F
    const/high16 v3, 0x3f800000

    invoke-virtual {p2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 482
    invoke-virtual {p2, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 483
    invoke-virtual {p2, v2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 484
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mZoomCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;

    invoke-virtual {v3, p2, p3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->setImage(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    .end local v1    # "bmp2":Landroid/graphics/Bitmap;
    .end local v2    # "scaleFactor":F
    :goto_0
    return-object v1

    .line 489
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v0

    .line 491
    goto :goto_0

    .line 489
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public getStyleType()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mStyleType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getXmpObject()Lcom/adobe/xmp/XMPMeta;
    .locals 4

    .prologue
    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 562
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 564
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCacheBusy(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z
    .locals 1
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->isCacheBusy(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v0

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadBitmap(Landroid/net/Uri;I)Lcom/sonymobile/china/photoeditor/filtershow/Result;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    const/high16 v5, 0x43700000

    .line 187
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sonymobile/china/photoeditor/util/DrmUtils;->isDrm(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/Result;->ERROR_DRM_PROTECTED:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .line 218
    :goto_0
    return-object v3

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 192
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 193
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOrientation:I

    .line 194
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v3, p2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 196
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 198
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/Result;->ERROR_DECODING:Lcom/sonymobile/china/photoeditor/filtershow/Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 201
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 203
    .local v2, "width":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 205
    .local v0, "height":I
    if-le v2, v0, :cond_3

    .line 206
    int-to-float v3, v0

    div-float v1, v5, v3

    .line 211
    .local v1, "scale_factor":F
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    int-to-float v4, v2

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, v0

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 215
    .end local v0    # "height":I
    .end local v1    # "scale_factor":F
    .end local v2    # "width":I
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->updateBitmaps()V

    .line 216
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/Result;->OK:Lcom/sonymobile/china/photoeditor/filtershow/Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 208
    .restart local v0    # "height":I
    .restart local v2    # "width":I
    :cond_3
    int-to-float v3, v2

    div-float v1, v5, v3

    .restart local v1    # "scale_factor":F
    goto :goto_1

    .line 218
    .end local v0    # "height":I
    .end local v1    # "scale_factor":F
    .end local v2    # "width":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public queryLightCycle360()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 574
    const/4 v5, 0x0

    .line 576
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 577
    invoke-static {v5}, Lcom/sonymobile/china/photoeditor/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 578
    .local v6, "meta":Lcom/adobe/xmp/XMPMeta;
    if-nez v6, :cond_1

    .line 610
    if-eqz v5, :cond_0

    .line 611
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 618
    .end local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    :goto_0
    return v8

    .line 582
    .restart local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    :cond_1
    :try_start_2
    const-string v7, "http://ns.google.com/photos/1.0/panorama/"

    .line 583
    .local v7, "namespace":Ljava/lang/String;
    const-string v1, "GPano:CroppedAreaImageWidthPixels"

    .line 584
    .local v1, "cropWidthName":Ljava/lang/String;
    const-string v4, "GPano:FullPanoWidthPixels"

    .line 586
    .local v4, "fullWidthName":Ljava/lang/String;
    invoke-interface {v6, v7, v1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 610
    if-eqz v5, :cond_0

    .line 611
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v9

    goto :goto_0

    .line 589
    :cond_2
    :try_start_4
    invoke-interface {v6, v7, v4}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    .line 610
    if-eqz v5, :cond_0

    .line 611
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 613
    :catch_1
    move-exception v9

    goto :goto_0

    .line 593
    :cond_3
    :try_start_6
    invoke-interface {v6, v7, v1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 594
    .local v0, "cropValue":Ljava/lang/Integer;
    invoke-interface {v6, v7, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 598
    .local v3, "fullValue":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 599
    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/adobe/xmp/XMPException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v8

    .line 610
    if-eqz v5, :cond_0

    .line 611
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 613
    :catch_2
    move-exception v9

    goto :goto_0

    .line 610
    :cond_4
    if-eqz v5, :cond_0

    .line 611
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 613
    :catch_3
    move-exception v9

    goto :goto_0

    .line 603
    .end local v0    # "cropValue":Ljava/lang/Integer;
    .end local v1    # "cropWidthName":Ljava/lang/String;
    .end local v3    # "fullValue":Ljava/lang/Integer;
    .end local v4    # "fullWidthName":Ljava/lang/String;
    .end local v7    # "namespace":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 610
    .local v2, "e":Lcom/adobe/xmp/XMPException;
    if-eqz v5, :cond_0

    .line 611
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    .line 613
    :catch_5
    move-exception v9

    goto :goto_0

    .line 606
    .end local v2    # "e":Lcom/adobe/xmp/XMPException;
    .end local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    :catch_6
    move-exception v2

    .line 610
    .local v2, "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_0

    .line 611
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_0

    .line 613
    :catch_7
    move-exception v9

    goto :goto_0

    .line 609
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    .line 610
    if-eqz v5, :cond_5

    .line 611
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 618
    :cond_5
    :goto_1
    throw v8

    .line 613
    .restart local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    :catch_8
    move-exception v9

    goto :goto_0

    .end local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    :catch_9
    move-exception v9

    goto :goto_1
.end method

.method public resetImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 2
    .param p1, "imagePreset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "caller"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mHiresCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->reset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 531
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;->reset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 532
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mZoomCache:Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->reset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 536
    return-void

    .line 534
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public saveImage(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V
    .locals 5
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "callback"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    .prologue
    const/4 v4, 0x1

    .line 539
    invoke-virtual {p1, v4}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setIsHighQuality(Z)V

    .line 540
    const/high16 v0, 0x3f800000

    invoke-virtual {p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 541
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$2;

    invoke-direct {v3, p0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;)V

    new-array v1, v4, [Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 549
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .line 553
    return-void
.end method
