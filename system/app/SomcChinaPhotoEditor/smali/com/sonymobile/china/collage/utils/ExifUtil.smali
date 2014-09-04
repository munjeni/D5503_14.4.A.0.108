.class public Lcom/sonymobile/china/collage/utils/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/china/collage/utils/ExifUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/utils/ExifUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static angleToExifOrientation(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 233
    sparse-switch p0, :sswitch_data_0

    .line 241
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 235
    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 237
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 239
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private static getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 195
    invoke-static {p1}, Lcom/sonymobile/china/collage/utils/ExifUtil;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v9

    .line 199
    :cond_1
    const/4 v9, 0x0

    .line 200
    .local v9, "orientation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 201
    .local v8, "cr":Landroid/content/ContentResolver;
    if-eqz v8, :cond_0

    .line 202
    const/4 v7, 0x0

    .line 205
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 208
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 209
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 212
    .local v6, "angle":I
    invoke-static {v6}, Lcom/sonymobile/china/collage/utils/ExifUtil;->angleToExifOrientation(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 217
    .end local v6    # "angle":I
    :cond_2
    if-eqz v7, :cond_0

    .line 218
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 214
    .end local v2    # "projection":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    if-eqz v7, :cond_0

    .line 218
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 218
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 71
    const/4 v9, 0x0

    .line 72
    .local v9, "orientation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 73
    .local v2, "cr":Landroid/content/ContentResolver;
    if-eqz v2, :cond_9

    .line 75
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 76
    .local v7, "is":Ljava/io/InputStream;
    if-eqz v7, :cond_9

    .line 77
    const/16 v0, 0x64

    .line 79
    .local v0, "NBR_BYTES_TO_READ":I
    const/16 v10, 0x64

    new-array v3, v10, [B

    .line 80
    .local v3, "data":[B
    const/4 v1, 0x0

    .line 82
    .local v1, "bigEndian":Z
    const/4 v10, 0x0

    const/16 v11, 0x64

    invoke-virtual {v7, v3, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 83
    .local v8, "len":I
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 86
    const/4 v6, 0x6

    .line 87
    .local v6, "i":I
    const/4 v5, 0x0

    .line 88
    .local v5, "found":Z
    :goto_0
    add-int/lit8 v10, v8, -0x4

    if-ge v6, v10, :cond_1

    if-nez v5, :cond_1

    .line 89
    aget-byte v10, v3, v6

    const/16 v11, 0x45

    if-ne v10, v11, :cond_0

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v3, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_0

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v3, v10

    const/16 v11, 0x69

    if-ne v10, v11, :cond_0

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, v3, v10

    const/16 v11, 0x66

    if-ne v10, v11, :cond_0

    .line 91
    const/4 v5, 0x1

    .line 93
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 96
    :cond_1
    if-eqz v5, :cond_4

    .line 98
    add-int/lit8 v6, v6, 0x5

    .line 100
    const/4 v5, 0x0

    .line 101
    :goto_1
    add-int/lit8 v10, v8, -0x2

    if-ge v6, v10, :cond_4

    if-nez v5, :cond_4

    .line 102
    aget-byte v10, v3, v6

    const/16 v11, 0x49

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v3, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_3

    .line 103
    const/4 v1, 0x1

    .line 104
    const/4 v5, 0x1

    .line 109
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 105
    :cond_3
    aget-byte v10, v3, v6

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_2

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v3, v10

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_2

    .line 106
    const/4 v1, 0x0

    .line 107
    const/4 v5, 0x1

    goto :goto_2

    .line 113
    :cond_4
    if-eqz v5, :cond_5

    .line 115
    add-int/lit8 v6, v6, 0x3

    .line 118
    const/4 v5, 0x0

    .line 119
    if-eqz v1, :cond_7

    .line 120
    aget-byte v10, v3, v6

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 126
    const/4 v5, 0x1

    .line 135
    :cond_5
    :goto_3
    if-eqz v5, :cond_9

    .line 144
    const/4 v5, 0x0

    .line 145
    :goto_4
    add-int/lit8 v10, v8, -0xa

    if-ge v6, v10, :cond_9

    if-nez v5, :cond_9

    .line 146
    if-eqz v1, :cond_8

    .line 147
    aget-byte v10, v3, v6

    const/16 v11, 0x12

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v3, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v3, v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x4

    aget-byte v10, v3, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v6, 0x5

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x6

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x7

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    .line 156
    const/4 v5, 0x1

    .line 157
    add-int/lit8 v10, v6, 0x8

    aget-byte v9, v3, v10

    .line 173
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 129
    :cond_7
    add-int/lit8 v10, v6, 0x3

    aget-byte v10, v3, v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 130
    const/4 v5, 0x1

    goto :goto_3

    .line 160
    :cond_8
    aget-byte v10, v3, v6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v3, v10

    const/16 v11, 0x12

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, v3, v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v6, 0x4

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x5

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x6

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v6, 0x7

    aget-byte v10, v3, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 169
    const/4 v5, 0x1

    .line 170
    add-int/lit8 v10, v6, 0x9

    aget-byte v9, v3, v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    .line 177
    .end local v0    # "NBR_BYTES_TO_READ":I
    .end local v1    # "bigEndian":Z
    .end local v3    # "data":[B
    .end local v5    # "found":Z
    .end local v6    # "i":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "len":I
    :catch_0
    move-exception v4

    .line 178
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v10, "ExifUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_6
    return v9

    .line 179
    :catch_1
    move-exception v4

    .line 180
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "ExifUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "orientation":I
    if-eqz p1, :cond_0

    .line 53
    invoke-static {p0, p1}, Lcom/sonymobile/china/collage/utils/ExifUtil;->getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 56
    invoke-static {p0, p1}, Lcom/sonymobile/china/collage/utils/ExifUtil;->getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 59
    :cond_0
    return v0
.end method

.method public static getTransformationMatrix(I)Landroid/graphics/Matrix;
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    .line 266
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 267
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch p0, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return-object v0

    .line 271
    :pswitch_1
    const/high16 v1, 0x42b40000

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 274
    :pswitch_2
    const/high16 v1, 0x43340000

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 277
    :pswitch_3
    const/high16 v1, 0x43870000

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 253
    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
