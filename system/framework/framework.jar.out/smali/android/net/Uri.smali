.class public abstract Landroid/net/Uri;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$PathPart;,
        Landroid/net/Uri$Part;,
        Landroid/net/Uri$AbstractPart;,
        Landroid/net/Uri$Builder;,
        Landroid/net/Uri$HierarchicalUri;,
        Landroid/net/Uri$AbstractHierarchicalUri;,
        Landroid/net/Uri$PathSegmentsBuilder;,
        Landroid/net/Uri$PathSegments;,
        Landroid/net/Uri$OpaqueUri;,
        Landroid/net/Uri$StringUri;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final EMPTY:Landroid/net/Uri;

.field private static final HEX_DIGITS:[C

.field private static final LOG:Ljava/lang/String;

.field private static final NOT_CACHED:Ljava/lang/String;

.field private static final NOT_CALCULATED:I = -0x2

.field private static final NOT_FOUND:I = -0x1

.field private static final NOT_HIERARCHICAL:Ljava/lang/String; = "This isn\'t a hierarchical URI."

.field private static final NULL_TYPE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 114
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/String;

    const-string v2, "NOT CACHED"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    sget-object v2, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v3, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    sput-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1764
    new-instance v0, Landroid/net/Uri$1;

    invoke-direct {v0}, Landroid/net/Uri$1;-><init>()V

    sput-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1798
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->HEX_DIGITS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri$1;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/net/Uri;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1932
    if-nez p0, :cond_0

    .line 1933
    const/4 v0, 0x0

    .line 1935
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v1, v0, v1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1811
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "allow"    # Ljava/lang/String;

    .prologue
    .line 1828
    if-nez p0, :cond_1

    .line 1829
    const/4 p0, 0x0

    .line 1903
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1833
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 1835
    .local v4, "encoded":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1840
    .local v8, "oldLength":I
    const/4 v2, 0x0

    .line 1841
    .local v2, "current":I
    :goto_1
    if-ge v2, v8, :cond_8

    .line 1845
    move v7, v2

    .line 1847
    .local v7, "nextToEncode":I
    :goto_2
    if-ge v7, v8, :cond_2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1848
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1852
    :cond_2
    if-ne v7, v8, :cond_3

    .line 1853
    if-eqz v2, :cond_0

    .line 1858
    invoke-virtual {v4, p0, v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1859
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1863
    :cond_3
    if-nez v4, :cond_4

    .line 1864
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "encoded":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1867
    .restart local v4    # "encoded":Ljava/lang/StringBuilder;
    :cond_4
    if-le v7, v2, :cond_5

    .line 1869
    invoke-virtual {v4, p0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1877
    :cond_5
    move v2, v7

    .line 1878
    add-int/lit8 v6, v2, 0x1

    .line 1880
    .local v6, "nextAllowed":I
    :goto_3
    if-ge v6, v8, :cond_6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1881
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1886
    :cond_6
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1888
    .local v9, "toEncode":Ljava/lang/String;
    :try_start_0
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1889
    .local v0, "bytes":[B
    array-length v1, v0

    .line 1890
    .local v1, "bytesLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v1, :cond_7

    .line 1891
    const/16 v10, 0x25

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1892
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v11, v11, 0x4

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1893
    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1895
    .end local v0    # "bytes":[B
    .end local v1    # "bytesLength":I
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 1896
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 1899
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "bytes":[B
    .restart local v1    # "bytesLength":I
    .restart local v5    # "i":I
    :cond_7
    move v2, v6

    .line 1900
    goto :goto_1

    .line 1903
    .end local v0    # "bytes":[B
    .end local v1    # "bytesLength":I
    .end local v5    # "i":I
    .end local v6    # "nextAllowed":I
    .end local v7    # "nextToEncode":I
    .end local v9    # "toEncode":Ljava/lang/String;
    :cond_8
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static fromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .line 453
    .local v3, "path":Landroid/net/Uri$PathPart;
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    const-string v1, "file"

    sget-object v2, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "ssp"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 815
    if-nez p0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "scheme"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    if-nez p1, :cond_1

    .line 819
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ssp"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_1
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method private static isAllowed(CLjava/lang/String;)Z
    .locals 2
    .param p0, "c"    # C
    .param p1, "allow"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1915
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const-string v0, "_-!.~\'()*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 434
    new-instance v0, Landroid/net/Uri$StringUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    .line 2295
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2296
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2297
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1791
    if-nez p1, :cond_0

    .line 1792
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1796
    :goto_0
    return-void

    .line 1794
    :cond_0
    invoke-virtual {p1, p0, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract buildUpon()Landroid/net/Uri$Builder;
.end method

.method public checkFileUriExposed(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 2342
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2343
    invoke-static {p1}, Landroid/os/StrictMode;->onFileUriExposed(Ljava/lang/String;)V

    .line 2345
    :cond_0
    return-void
.end method

.method public compareTo(Landroid/net/Uri;)I
    .locals 2
    .param p1, "other"    # Landroid/net/Uri;

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 331
    instance-of v1, p1, Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 335
    check-cast v0, Landroid/net/Uri;

    .line 337
    .local v0, "other":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getBooleanQueryParameter(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1720
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, "flag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1725
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 1724
    .restart local p2    # "defaultValue":Z
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1725
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCanonicalUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 2309
    const-string v3, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2312
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2317
    .local v0, "canonicalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2318
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2322
    .local v2, "legacyPath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2323
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 2331
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "legacyPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 2313
    .restart local p0    # "this":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 2314
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2329
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "canonicalPath":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract getEncodedAuthority()Ljava/lang/String;
.end method

.method public abstract getEncodedFragment()Ljava/lang/String;
.end method

.method public abstract getEncodedPath()Ljava/lang/String;
.end method

.method public abstract getEncodedQuery()Ljava/lang/String;
.end method

.method public abstract getEncodedSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getEncodedUserInfo()Ljava/lang/String;
.end method

.method public abstract getFragment()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLastPathSegment()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 1666
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1667
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "This isn\'t a hierarchical URI."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1669
    :cond_0
    if-nez p1, :cond_1

    .line 1670
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "key"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1673
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    .line 1674
    .local v5, "query":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 1707
    :cond_2
    :goto_0
    return-object v8

    .line 1678
    :cond_3
    invoke-static {p1, v8}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, "encodedKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 1680
    .local v3, "length":I
    const/4 v7, 0x0

    .line 1682
    .local v7, "start":I
    :goto_1
    const/16 v9, 0x26

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1683
    .local v4, "nextAmpersand":I
    if-eq v4, v11, :cond_6

    move v2, v4

    .line 1685
    .local v2, "end":I
    :goto_2
    const/16 v9, 0x3d

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 1686
    .local v6, "separator":I
    if-gt v6, v2, :cond_4

    if-ne v6, v11, :cond_5

    .line 1687
    :cond_4
    move v6, v2

    .line 1690
    :cond_5
    sub-int v9, v6, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v7, v0, v12, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1692
    if-ne v6, v2, :cond_7

    .line 1693
    const-string v8, ""

    goto :goto_0

    .end local v2    # "end":I
    .end local v6    # "separator":I
    :cond_6
    move v2, v3

    .line 1683
    goto :goto_2

    .line 1695
    .restart local v2    # "end":I
    .restart local v6    # "separator":I
    :cond_7
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, "encodedValue":Ljava/lang/String;
    const/4 v8, 0x1

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v8, v9, v12}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1701
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_8
    if-eq v4, v11, :cond_2

    .line 1702
    add-int/lit8 v7, v4, 0x1

    .line 1706
    goto :goto_1
.end method

.method public getQueryParameterNames()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 1563
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1564
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "This isn\'t a hierarchical URI."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1567
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1568
    .local v4, "query":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1569
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 1590
    :goto_0
    return-object v7

    .line 1572
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1573
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1575
    .local v6, "start":I
    :cond_2
    const/16 v7, 0x26

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1576
    .local v3, "next":I
    if-ne v3, v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 1578
    .local v0, "end":I
    :goto_1
    const/16 v7, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1579
    .local v5, "separator":I
    if-gt v5, v0, :cond_3

    if-ne v5, v8, :cond_4

    .line 1580
    :cond_3
    move v5, v0

    .line 1583
    :cond_4
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1584
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1587
    add-int/lit8 v6, v0, 0x1

    .line 1588
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 1590
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    goto :goto_0

    .end local v0    # "end":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "separator":I
    :cond_5
    move v0, v3

    .line 1576
    goto :goto_1
.end method

.method public getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 1603
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1604
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "This isn\'t a hierarchical URI."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1606
    :cond_0
    if-nez p1, :cond_1

    .line 1607
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "key"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1610
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 1611
    .local v4, "query":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 1651
    :goto_0
    return-object v8

    .line 1617
    :cond_2
    :try_start_0
    const-string v8, "UTF-8"

    invoke-static {p1, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1622
    .local v1, "encodedKey":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1624
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1626
    .local v6, "start":I
    :goto_1
    const/16 v8, 0x26

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1627
    .local v3, "nextAmpersand":I
    if-eq v3, v10, :cond_6

    move v2, v3

    .line 1629
    .local v2, "end":I
    :goto_2
    const/16 v8, 0x3d

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1630
    .local v5, "separator":I
    if-gt v5, v2, :cond_3

    if-ne v5, v10, :cond_4

    .line 1631
    :cond_3
    move v5, v2

    .line 1634
    :cond_4
    sub-int v8, v5, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v6, v1, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1636
    if-ne v5, v2, :cond_7

    .line 1637
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    :cond_5
    :goto_3
    if-eq v3, v10, :cond_8

    .line 1645
    add-int/lit8 v6, v3, 0x1

    .line 1649
    goto :goto_1

    .line 1618
    .end local v1    # "encodedKey":Ljava/lang/String;
    .end local v2    # "end":I
    .end local v3    # "nextAmpersand":I
    .end local v5    # "separator":I
    .end local v6    # "start":I
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1627
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "encodedKey":Ljava/lang/String;
    .restart local v3    # "nextAmpersand":I
    .restart local v6    # "start":I
    .restart local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    .line 1639
    .restart local v2    # "end":I
    .restart local v5    # "separator":I
    :cond_7
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1651
    :cond_8
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getUserInfo()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isHierarchical()Z
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isRelative()Z
.end method

.method public normalizeScheme()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1750
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1751
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1755
    .end local p0    # "this":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 1752
    .restart local p0    # "this":Landroid/net/Uri;
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "lowerScheme":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1755
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x40

    .line 368
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "ssp":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 371
    const-string/jumbo v5, "tel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "sip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "sms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "smsto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "nfc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "mailto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    if-eqz v4, :cond_3

    .line 379
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 380
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 381
    .local v1, "c":C
    const/16 v5, 0x2d

    if-eq v1, v5, :cond_1

    if-eq v1, v6, :cond_1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_2

    .line 382
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_2
    const/16 v5, 0x78

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 388
    .end local v1    # "c":C
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    :goto_2
    return-object v5

    .line 394
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_5

    .line 396
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    :cond_5
    if-eqz v4, :cond_6

    .line 400
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public abstract toString()Ljava/lang/String;
.end method
