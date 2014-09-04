.class public Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field private static volatile sCurrentThread:Ljava/lang/Thread;

.field private static volatile sWarned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotInRenderThread()V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->sWarned:Z

    .line 66
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 38
    .local v6, "result":[B
    const/4 v4, 0x0

    .line 39
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

    .line 40
    .local v1, "ch":C
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "output":I
    .restart local v4    # "output":I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 41
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "output":I
    .restart local v5    # "output":I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "ch":C
    :cond_0
    return-object v6
.end method

.method public static isValidLocation(DD)Z
    .locals 3
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    const-wide/16 v1, 0x0

    .line 70
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRenderThread()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    .line 55
    return-void
.end method
