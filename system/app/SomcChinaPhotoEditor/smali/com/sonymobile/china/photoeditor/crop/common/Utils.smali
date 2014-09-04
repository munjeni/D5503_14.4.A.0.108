.class public Lcom/sonymobile/china/photoeditor/crop/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INITIALCRC:J = -0x1L

.field private static final IS_DEBUG_BUILD:Z

.field private static final MASK_STRING:Ljava/lang/String; = "********************************"

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 49
    new-array v6, v10, [J

    sput-object v6, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->sCrcTable:[J

    .line 51
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->IS_DEBUG_BUILD:Z

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_4

    .line 183
    int-to-long v2, v0

    .line 184
    .local v2, "part":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/16 v6, 0x8

    if-ge v1, v6, :cond_3

    .line 185
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const-wide v4, -0x6a536cd653b4364bL

    .line 186
    .local v4, "x":J
    :goto_3
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 51
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "part":J
    .end local v4    # "x":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 185
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "part":J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 188
    :cond_3
    sget-object v6, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v1    # "j":I
    .end local v2    # "part":J
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_0
    return-void
.end method

.method public static varargs assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "cond"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 65
    if-nez p0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p2

    if-nez v1, :cond_0

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public static ceilLog2(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 229
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_1

    .line 232
    :cond_0
    return v0

    .line 228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 134
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 138
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 136
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 137
    goto :goto_0

    :cond_1
    move p2, p0

    .line 138
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 125
    if-le p0, p2, :cond_0

    .line 129
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 127
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 128
    goto :goto_0

    :cond_1
    move p2, p0

    .line 129
    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 1
    .param p0, "x"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 143
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 147
    .end local p4    # "max":J
    :goto_0
    return-wide p4

    .line 145
    .restart local p4    # "max":J
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    .line 146
    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 147
    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 257
    if-eqz p0, :cond_0

    .line 258
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 246
    if-eqz p0, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 223
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [Ljava/lang/String;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 394
    new-array v0, p1, [Ljava/lang/String;

    .line 395
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 396
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    return-object v0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    const-wide/16 v0, 0x0

    .line 176
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .param p0, "buffer"    # [B

    .prologue
    .line 193
    const-wide/16 v0, -0x1

    .line 194
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 195
    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-wide v0
.end method

.method public static deserializePendingIntent([B)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "rawPendingIntent"    # [B

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 403
    .local v1, "parcel":Landroid/os/Parcel;
    if-eqz p0, :cond_1

    .line 404
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 406
    invoke-static {v1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 413
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_0
    :goto_0
    return-object v2

    .line 408
    :cond_1
    const/4 v2, 0x0

    .line 413
    if-eqz v1, :cond_0

    .line 414
    throw v1

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "error parsing PendingIntent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw v2
.end method

.method public static distance(FFFF)F
    .locals 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 118
    sub-float v0, p0, p2

    .line 119
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 120
    .local v1, "dy":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 285
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 357
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 358
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 375
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 363
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    :sswitch_2
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 369
    :sswitch_3
    const-string v4, "&#039;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 372
    :sswitch_4
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 378
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static floorLog2(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 238
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    .line 241
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 237
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 202
    .local v6, "result":[B
    const/4 v4, 0x0

    .line 203
    .local v4, "output":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v5, v4

    .end local v4    # "output":I
    .local v5, "output":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 204
    .local v1, "ch":C
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "output":I
    .restart local v4    # "output":I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 205
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "output":I
    .restart local v5    # "output":I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "ch":C
    :cond_0
    return-object v6
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 385
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getPackageInfo failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static handleInterrruptedException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 344
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 346
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 8
    .param p0, "size"    # J

    .prologue
    const/4 v3, 0x0

    .line 313
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v3

    .line 318
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "path":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    cmp-long v4, v4, p0

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static interpolateAngle(FFF)F
    .locals 5
    .param p0, "source"    # F
    .param p1, "target"    # F
    .param p2, "progress"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b40000

    .line 270
    sub-float v0, p1, p0

    .line 271
    .local v0, "diff":F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    .line 272
    add-float/2addr v0, v3

    .line 273
    :cond_0
    const/high16 v2, 0x43340000

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 274
    sub-float/2addr v0, v3

    .line 276
    :cond_1
    mul-float v2, v0, p2

    add-float v1, p0, v2

    .line 277
    .local v1, "result":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    add-float/2addr v1, v3

    .end local v1    # "result":F
    :cond_2
    return v1
.end method

.method public static interpolateScale(FFF)F
    .locals 1
    .param p0, "source"    # F
    .param p1, "target"    # F
    .param p2, "progress"    # F

    .prologue
    .line 281
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "exifMake"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(I)Z
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 151
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 86
    if-gtz p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 88
    :cond_0
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 436
    if-nez p0, :cond_1

    .line 437
    const/4 v1, 0x0

    .line 440
    :cond_0
    :goto_0
    return-object v1

    .line 438
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 440
    .local v0, "length":I
    sget-boolean v2, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->IS_DEBUG_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 96
    if-lez p0, :cond_0

    const/high16 v0, 0x40000000

    if-le p0, v0, :cond_1

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 99
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 100
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 101
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 102
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 103
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 104
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static parseFloatSafely(Ljava/lang/String;F)F
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 294
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 292
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parseIntSafely(Ljava/lang/String;I)I
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 304
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 302
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 111
    if-gtz p0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 113
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static serializePendingIntent(Landroid/app/PendingIntent;)[B
    .locals 2
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    invoke-static {p0, v0}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    return-object v1

    .line 425
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1
.end method

.method public static shuffle([ILjava/util/Random;)V
    .locals 5
    .param p0, "array"    # [I
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 331
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 332
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 333
    .local v1, "t":I
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_0

    .line 331
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 335
    :cond_0
    add-int/lit8 v3, v0, -0x1

    aget v2, p0, v3

    .line 336
    .local v2, "tmp":I
    add-int/lit8 v3, v0, -0x1

    aget v4, p0, v1

    aput v4, p0, v3

    .line 337
    aput v2, p0, v1

    goto :goto_1

    .line 339
    .end local v1    # "t":I
    .end local v2    # "tmp":I
    :cond_1
    return-void
.end method

.method public static swap([III)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 161
    aget v0, p0, p1

    .line 162
    .local v0, "temp":I
    aget v1, p0, p2

    aput v1, p0, p1

    .line 163
    aput v0, p0, p2

    .line 164
    return-void
.end method

.method public static swap([Ljava/lang/Object;II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    aget-object v0, p0, p1

    .line 156
    .local v0, "temp":Ljava/lang/Object;, "TT;"
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 157
    aput-object v0, p0, p2

    .line 158
    return-void
.end method
