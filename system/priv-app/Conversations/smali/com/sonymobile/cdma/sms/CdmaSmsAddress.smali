.class public Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
.super Ljava/lang/Object;
.source "CdmaSmsAddress.java"


# static fields
.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x0

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x1

.field public static final NUMBERING_PLAN_ISDN_TELEPHONY:I = 0x1

.field public static final NUMBERING_PLAN_UNKNOWN:I = 0x0

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final SMS_ADDRESS_MAX:I = 0x24

.field public static final SMS_SUBADDRESS_MAX:I = 0x24

.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL_OR_IP:I = 0x1

.field public static final TON_NATIONAL_OR_EMAIL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_RESERVED:I = 0x7

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I

.field private static final numericCharDialableMap:Landroid/util/SparseBooleanArray;

.field private static final numericCharsDialable:[C

.field private static final numericCharsSugar:[C


# instance fields
.field public address:Ljava/lang/String;

.field public digitMode:I

.field public numberMode:I

.field public numberOfDigits:I

.field public numberPlan:I

.field public origBytes:[B

.field public ton:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 121
    const/16 v1, 0xd

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    .line 125
    const/4 v1, 0x7

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    .line 129
    new-instance v1, Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v2, v2

    sget-object v3, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v1, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 133
    sget-object v1, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    aget-char v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 136
    sget-object v1, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    aget-char v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_1
    return-void

    .line 121
    :array_0
    .array-data 2
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
        0x2as
        0x23s
        0x2bs
    .end array-data

    .line 125
    nop

    :array_1
    .array-data 2
        0x28s
        0x29s
        0x20s
        0x2ds
        0x2es
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method private static filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 149
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 151
    .local v1, "c":C
    sget-object v5, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 152
    .local v4, "mapIndex":I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 156
    .end local v1    # "c":C
    .end local v4    # "mapIndex":I
    :goto_1
    return-object v5

    .line 153
    .restart local v1    # "c":C
    .restart local v4    # "mapIndex":I
    :cond_0
    sget-object v5, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 149
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 156
    .end local v1    # "c":C
    .end local v4    # "mapIndex":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private static filterWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 166
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    .local v1, "c":C
    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    .line 166
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static parse(Ljava/lang/String;)Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 185
    new-instance v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 186
    .local v0, "addr":Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    iput-object p0, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 187
    iput v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 188
    iput v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->ton:I

    .line 189
    iput v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 190
    iput v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 191
    const/4 v2, 0x0

    .line 193
    .local v2, "origBytes":[B
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 195
    iput v4, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 196
    iput v4, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->ton:I

    .line 197
    iput v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 198
    iput v4, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 200
    :cond_0
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 202
    iput v4, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 203
    const/4 v3, 0x2

    iput v3, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->ton:I

    .line 204
    iput v4, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "filteredAddr":Ljava/lang/String;
    iget v3, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v3, :cond_3

    .line 210
    if-eqz v1, :cond_2

    .line 211
    invoke-static {v1}, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    move-result-object v2

    .line 213
    :cond_2
    if-nez v2, :cond_3

    .line 215
    iput v4, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 219
    :cond_3
    iget v3, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v3, v4, :cond_5

    .line 220
    if-eqz v1, :cond_4

    .line 221
    invoke-static {v1}, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->filterWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/sonymobile/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    move-result-object v2

    .line 224
    :cond_4
    if-nez v2, :cond_5

    .line 225
    const/4 v0, 0x0

    .line 230
    .end local v0    # "addr":Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    :goto_0
    return-object v0

    .line 228
    .restart local v0    # "addr":Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    :cond_5
    iput-object v2, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 229
    array-length v3, v2

    iput v3, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    goto :goto_0
.end method

.method private static parseToDtmf(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 105
    .local v1, "digits":I
    new-array v3, v1, [B

    .line 106
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 108
    .local v0, "c":C
    const/4 v4, 0x0

    .line 109
    .local v4, "val":I
    const/16 v5, 0x31

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    add-int/lit8 v4, v0, -0x30

    .line 114
    :goto_1
    int-to-byte v5, v4

    aput-byte v5, v3, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const/16 v5, 0x30

    if-ne v0, v5, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    .line 111
    :cond_1
    const/16 v5, 0x2a

    if-ne v0, v5, :cond_2

    const/16 v4, 0xb

    goto :goto_1

    .line 112
    :cond_2
    const/16 v5, 0x23

    if-ne v0, v5, :cond_3

    const/16 v4, 0xc

    goto :goto_1

    .line 113
    :cond_3
    const/4 v3, 0x0

    .line 116
    .end local v0    # "c":C
    .end local v3    # "result":[B
    .end local v4    # "val":I
    :cond_4
    return-object v3
.end method