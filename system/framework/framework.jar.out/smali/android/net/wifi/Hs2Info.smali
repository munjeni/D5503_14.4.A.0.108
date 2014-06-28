.class public Landroid/net/wifi/Hs2Info;
.super Ljava/lang/Object;
.source "Hs2Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/Hs2Info;",
            ">;"
        }
    .end annotation
.end field

.field static final HS2_ANQP_PREFIX_STR:Ljava/lang/String; = "hs20_"

.field private static final OPERATOR_FRIENDLY_NAME_STR:Ljava/lang/String; = "hs20_operator_friendly_name="

.field private static final TAG:Ljava/lang/String; = "Hs2Info"


# instance fields
.field public operatorFriendlyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/net/wifi/Hs2Info$1;

    invoke-direct {v0}, Landroid/net/wifi/Hs2Info$1;-><init>()V

    sput-object v0, Landroid/net/wifi/Hs2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "operFrindlyName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/net/wifi/Hs2Info;->operatorFriendlyName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private decodeDupleField(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "hexStr"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 67
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 68
    mul-int/lit8 v3, v2, 0x2

    .line 69
    .local v3, "j":I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "j":I
    :cond_0
    const-string v4, ""

    .line 80
    .local v4, "str":Ljava/lang/String;
    array-length v6, v0

    if-lt v6, v9, :cond_1

    aget-byte v6, v0, v8

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_1

    .line 83
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    add-int/lit8 v7, v7, -0x3

    const-string v8, "UTF-8"

    invoke-direct {v5, v0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    move-object v4, v5

    .line 89
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Hs2Info"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to convert to a string using UTF-8: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method parseScanResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "hs20_operator_friendly_name="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "hs20_operator_friendly_name="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/Hs2Info;->decodeDupleField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/Hs2Info;->operatorFriendlyName:Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "operatorFriendlyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/Hs2Info;->operatorFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    iget-object v0, p0, Landroid/net/wifi/Hs2Info;->operatorFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
