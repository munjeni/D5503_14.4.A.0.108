.class public Lcom/sonyericsson/conversations/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field private static final NBR_BYTES_TO_READ:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static angleToExifOrientation(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 252
    sparse-switch p0, :sswitch_data_0

    .line 260
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 254
    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 256
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 258
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static getExifOrientationFromByteArray([B)I
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "orientation":I
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 108
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 112
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ExifUtil"

    const-string v4, "Failed to get orientation from byte array"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 221
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ExifUtil;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v9

    .line 225
    :cond_1
    const/4 v9, 0x0

    .line 226
    .local v9, "orientation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 227
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 228
    const/4 v8, 0x0

    .line 231
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "orientation"

    aput-object v2, v3, v0

    .line 234
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 235
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 238
    .local v7, "angle":I
    invoke-static {v7}, Lcom/sonyericsson/conversations/util/ExifUtil;->angleToExifOrientation(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 243
    .end local v7    # "angle":I
    :cond_2
    if-eqz v8, :cond_0

    .line 244
    .end local v3    # "projection":[Ljava/lang/String;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 244
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_3
    throw v0

    .line 240
    :catch_0
    move-exception v0

    .line 243
    if-eqz v8, :cond_0

    goto :goto_1
.end method

.method private static getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method static getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "skipTypeCheck"    # Z

    .prologue
    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, "orientation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 89
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ExifUtil;->isJpeg(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_1

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 93
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 101
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 94
    .restart local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "ExifUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ExifUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getExifOrientationFromStream(Ljava/io/InputStream;)I
    .locals 13
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x49

    const/16 v11, 0x12

    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, "orientation":I
    if-eqz p0, :cond_9

    .line 118
    const/16 v6, 0x64

    new-array v1, v6, [B

    .line 119
    .local v1, "data":[B
    const/4 v0, 0x0

    .line 121
    .local v0, "bigEndian":Z
    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-virtual {p0, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 122
    .local v4, "len":I
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 125
    const/4 v3, 0x6

    .line 127
    .local v3, "i":I
    const/4 v2, 0x0

    .line 128
    .local v2, "found":Z
    :goto_0
    add-int/lit8 v6, v4, -0x4

    if-ge v3, v6, :cond_1

    if-nez v2, :cond_1

    .line 129
    aget-byte v6, v1, v3

    const/16 v7, 0x45

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v1, v6

    const/16 v7, 0x69

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    const/16 v7, 0x66

    if-ne v6, v7, :cond_0

    .line 131
    const/4 v2, 0x1

    .line 133
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_1
    if-eqz v2, :cond_4

    .line 138
    add-int/lit8 v3, v3, 0x5

    .line 140
    const/4 v2, 0x0

    .line 141
    :goto_1
    add-int/lit8 v6, v4, -0x2

    if-ge v3, v6, :cond_4

    if-nez v2, :cond_4

    .line 142
    aget-byte v6, v1, v3

    if-ne v6, v12, :cond_3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v12, :cond_3

    .line 143
    const/4 v0, 0x1

    .line 144
    const/4 v2, 0x1

    .line 149
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_3
    aget-byte v6, v1, v3

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_2

    .line 146
    const/4 v0, 0x0

    .line 147
    const/4 v2, 0x1

    goto :goto_2

    .line 153
    :cond_4
    if-eqz v2, :cond_5

    .line 155
    add-int/lit8 v3, v3, 0x3

    .line 158
    const/4 v2, 0x0

    .line 159
    if-eqz v0, :cond_7

    .line 160
    aget-byte v6, v1, v3

    if-ne v6, v10, :cond_5

    .line 166
    const/4 v2, 0x1

    .line 175
    :cond_5
    :goto_3
    if-eqz v2, :cond_9

    .line 184
    const/4 v2, 0x0

    .line 185
    :goto_4
    add-int/lit8 v6, v4, -0xa

    if-ge v3, v6, :cond_9

    if-nez v2, :cond_9

    .line 186
    if-eqz v0, :cond_8

    .line 187
    aget-byte v6, v1, v3

    if-ne v6, v11, :cond_6

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v8, :cond_6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v1, v6

    if-ne v6, v9, :cond_6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v1, v6

    if-ne v6, v8, :cond_6

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    .line 196
    const/4 v2, 0x1

    .line 197
    add-int/lit8 v6, v3, 0x8

    aget-byte v5, v1, v6

    .line 213
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 169
    :cond_7
    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    if-ne v6, v10, :cond_5

    .line 170
    const/4 v2, 0x1

    goto :goto_3

    .line 200
    :cond_8
    aget-byte v6, v1, v3

    if-ne v6, v8, :cond_6

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v11, :cond_6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    if-ne v6, v9, :cond_6

    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v1, v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v1, v6

    if-ne v6, v8, :cond_6

    .line 209
    const/4 v2, 0x1

    .line 210
    add-int/lit8 v6, v3, 0x9

    aget-byte v5, v1, v6

    goto :goto_5

    .line 217
    .end local v0    # "bigEndian":Z
    .end local v1    # "data":[B
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_9
    return v5
.end method

.method public static getImageOrientation([B)I
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "orientation":I
    if-eqz p0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromByteArray([B)I

    move-result v0

    .line 53
    :cond_0
    return v0
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "orientation":I
    if-eqz p1, :cond_0

    .line 66
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 69
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 72
    :cond_0
    return v0
.end method

.method public static getTransformationMatrix(I)Landroid/graphics/Matrix;
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    .line 283
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 284
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch p0, :pswitch_data_0

    .line 307
    :goto_0
    :pswitch_0
    return-object v0

    .line 288
    :pswitch_1
    const/high16 v1, 0x42b40000

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 291
    :pswitch_2
    const/high16 v1, 0x43340000

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 294
    :pswitch_3
    const/high16 v1, 0x43870000

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 284
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

.method private static isJpeg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v0, "image/jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image/jpg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 270
    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
