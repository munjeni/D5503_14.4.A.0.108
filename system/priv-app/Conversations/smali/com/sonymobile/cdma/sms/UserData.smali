.class public Lcom/sonymobile/cdma/sms/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field public static final ASCII_CR_INDEX:I = 0xd

.field private static final ASCII_MAP:[C

.field public static final ASCII_MAP_BASE_INDEX:I = 0x20

.field public static final ASCII_MAP_MAX_INDEX:I

.field public static final ASCII_NL_INDEX:I = 0xa

.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_GSM_7BIT_ALPHABET:I = 0x9

.field public static final ENCODING_GSM_DCS:I = 0xa

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS91_EXTENDED_PROTOCOL:I = 0x1

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_OCTET:I = 0x0

.field public static final ENCODING_UNICODE_16:I = 0x4

.field public static final IS91_MSG_TYPE_CLI:I = 0x84

.field public static final IS91_MSG_TYPE_SHORT_MESSAGE:I = 0x85

.field public static final IS91_MSG_TYPE_SHORT_MESSAGE_FULL:I = 0x83

.field public static final IS91_MSG_TYPE_VOICEMAIL_STATUS:I = 0x82

.field public static final PRINTABLE_ASCII_MIN_INDEX:I = 0x20

.field static final UNENCODABLE_7_BIT_CHAR:B = 0x20t

.field public static final charToAscii:Landroid/util/SparseIntArray;


# instance fields
.field public language:I

.field public msgEncoding:I

.field public msgEncodingSet:Z

.field public msgType:I

.field public numFields:I

.field public paddingBits:I

.field public payload:[B

.field public payloadStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    .line 63
    const/16 v1, 0x5f

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    .line 85
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    aget-char v2, v2, v0

    add-int/lit8 v3, v0, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    return-void

    .line 63
    :array_0
    .array-data 2
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncodingSet:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cdma/sms/UserData;->language:I

    return-void
.end method

.method public static stringToAscii(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    .local v2, "len":I
    new-array v3, v2, [B

    .line 102
    .local v3, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 103
    sget-object v4, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 104
    .local v0, "charCode":I
    if-ne v0, v6, :cond_1

    const/4 v3, 0x0

    .line 107
    .end local v0    # "charCode":I
    .end local v3    # "result":[B
    :cond_0
    return-object v3

    .line 105
    .restart local v0    # "charCode":I
    .restart local v3    # "result":[B
    :cond_1
    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
