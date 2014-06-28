.class public Lcom/sonyericsson/conversations/data/SomcPduPersister;
.super Ljava/lang/Object;
.source "SomcPduPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    }
.end annotation


# static fields
.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_DATA:I = 0x9

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final STAR_STATUS_COLUMN:Ljava/lang/String; = "star_status"

.field private static final SomcProviderContentUri:Landroid/net/Uri;

.field private static final SomcProviderNotificationUri:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SomcPduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableTransactionSupport:Z

.field private static sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

.field private static sPduPersisterGetPendingMessagesMethod:Ljava/lang/reflect/Method;

.field private static sPduPersisterLoadMethod:Ljava/lang/reflect/Method;

.field private static sPduPersisterMoveMethod:Ljava/lang/reflect/Method;

.field private static sPduPersisterPersistMethod:Ljava/lang/reflect/Method;

.field private static sPduPersisterPersistPartMethod:Ljava/lang/reflect/Method;

.field private static sPduPersisterUpdateHeadersMethod:Ljava/lang/reflect/Method;

.field private static sPduPersisterUpdatePartsMethod:Ljava/lang/reflect/Method;

.field private static sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;


# instance fields
.field private mBriefPartCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mPduPersister:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x9a

    const/16 v6, 0x96

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 123
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    .line 127
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    .line 131
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const-string v1, "retr_txt"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 192
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "chset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cd"

    aput-object v2, v0, v1

    const-string v1, "cid"

    aput-object v1, v0, v5

    const-string v1, "cl"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 242
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 248
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 252
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 257
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 261
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 266
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 274
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 283
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 295
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 308
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 314
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 322
    const-string v0, "content://mms/somc-notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderNotificationUri:Landroid/net/Uri;

    .line 323
    const-string v0, "content://mms/somc-content"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderContentUri:Landroid/net/Uri;

    .line 330
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistMethod:Ljava/lang/reflect/Method;

    .line 331
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterLoadMethod:Ljava/lang/reflect/Method;

    .line 332
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterGetPendingMessagesMethod:Ljava/lang/reflect/Method;

    .line 333
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdateHeadersMethod:Ljava/lang/reflect/Method;

    .line 334
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistPartMethod:Ljava/lang/reflect/Method;

    .line 335
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterMoveMethod:Ljava/lang/reflect/Method;

    .line 336
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdatePartsMethod:Ljava/lang/reflect/Method;

    .line 340
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    .line 341
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    .line 342
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    .line 343
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    .line 344
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    .line 345
    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z

    return-void

    .line 127
    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    .line 349
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    .line 352
    iput-object p1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 354
    return-void
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1012
    const/4 v8, 0x0

    .line 1013
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1014
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1015
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1046
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1018
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1019
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1021
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1022
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1025
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1027
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1028
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1029
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    :catch_0
    move-exception v7

    .line 1035
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1039
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1038
    :cond_5
    throw v0

    .line 1032
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1033
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1038
    if-eqz v6, :cond_1

    .line 1039
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1043
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final createPduPersisterInstance(Landroid/content/Context;)Ljava/lang/Object;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "instance":Ljava/lang/Object;
    const-string v0, "com.google.android.mms.pdu.PduPersister"

    .line 383
    .local v0, "classPath":Ljava/lang/String;
    const-string v3, "getPduPersister"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 390
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 392
    .local v2, "pduPersisterClassDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "persist"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/google/android/mms/pdu/GenericPdu;

    aput-object v5, v4, v7

    const-class v5, Landroid/net/Uri;

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v10

    const/4 v5, 0x4

    const-class v6, Ljava/util/HashMap;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistMethod:Ljava/lang/reflect/Method;

    .line 395
    const-string v3, "load"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterLoadMethod:Ljava/lang/reflect/Method;

    .line 397
    const-string v3, "getPendingMessages"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterGetPendingMessagesMethod:Ljava/lang/reflect/Method;

    .line 400
    const-string v3, "updateHeaders"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    aput-object v5, v4, v7

    const-class v5, Lcom/google/android/mms/pdu/SendReq;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdateHeadersMethod:Ljava/lang/reflect/Method;

    .line 403
    const-string v3, "persistPart"

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Lcom/google/android/mms/pdu/PduPart;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    const-class v5, Ljava/util/HashMap;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistPartMethod:Ljava/lang/reflect/Method;

    .line 406
    const-string v3, "move"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    aput-object v5, v4, v7

    const-class v5, Landroid/net/Uri;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterMoveMethod:Ljava/lang/reflect/Method;

    .line 409
    const-string v3, "updateParts"

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    aput-object v5, v4, v7

    const-class v5, Lcom/google/android/mms/pdu/PduBody;

    aput-object v5, v4, v8

    const-class v5, Ljava/util/HashMap;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdatePartsMethod:Ljava/lang/reflect/Method;

    .line 412
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 413
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Initialize persist method failed"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 415
    :cond_0
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterLoadMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 416
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Initialize load method failed"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 418
    :cond_1
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterGetPendingMessagesMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 419
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Initialize getPendingMessages method failed"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 421
    :cond_2
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdateHeadersMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 422
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Initialize updateHeaders method failed"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    :cond_3
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistPartMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    .line 425
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Initialize persistPart method failed"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 427
    :cond_4
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterMoveMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_5

    .line 428
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Initialize move method failed"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 430
    :cond_5
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdatePartsMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_6

    .line 431
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Initialize updateParts method failed"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    :cond_6
    invoke-static {}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->initPduReflectionMethods()V

    .line 434
    return-object v1
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 1336
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getByteArrayWithDefaultCharset(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 1343
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1346
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1067
    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1071
    :goto_0
    return-object v1

    .line 1068
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "SomcPduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 1329
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    const-class v2, Lcom/sonyericsson/conversations/data/SomcPduPersister;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    if-nez v1, :cond_0

    .line 362
    new-instance v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    .line 363
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    iget-object v1, v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    iget-object v3, v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3}, Lcom/sonyericsson/provider/CapabilityUtil;->init(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 364
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isTransactionEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    iget-object v3, v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->createPduPersisterInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SomcPduPersister"

    const-string v3, "Create PduPersister instance failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    const/4 v1, 0x0

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static final initPduReflectionMethods()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    const-class v1, Lcom/google/android/mms/pdu/GenericPdu;

    const-string v2, "getPduHeaders"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    .line 440
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 441
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Initialize mGenericPduGetPduHeadersMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 445
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    .line 448
    .local v0, "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string v2, "getEncodedStringValue"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    .line 450
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 451
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Initialize mPduHeadersGetEncodedStringValueMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 455
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string v2, "getTextString"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    .line 456
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 457
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Initialize mPduHeadersGetTextStringMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 461
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string v2, "getOctet"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    .line 462
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 463
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Initialize mPduHeadersGetOctetMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_3
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 467
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string v2, "getLongInteger"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    .line 469
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4

    .line 470
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Initialize mPduHeadersGetLongIntegerMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_4
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 474
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string v2, "getEncodedStringValues"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    .line 476
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    .line 477
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Initialize mPduHeadersGetEncodedStringValuesMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_5
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 480
    return-void
.end method

.method private loadAddress(JLcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;)V
    .locals 12
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1293
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v10

    const-string v5, "charset"

    aput-object v5, v3, v6

    const-string v5, "type"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1298
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1300
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1302
    .local v7, "addr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1304
    .local v8, "addrType":I
    sparse-switch v8, :sswitch_data_0

    .line 1317
    const-string v0, "SomcPduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1323
    .end local v7    # "addr":Ljava/lang/String;
    .end local v8    # "addrType":I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1306
    .restart local v7    # "addr":Ljava/lang/String;
    .restart local v8    # "addrType":I
    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    goto :goto_0

    .line 1312
    :sswitch_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->appendEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1323
    .end local v7    # "addr":Ljava/lang/String;
    .end local v8    # "addrType":I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1326
    :cond_2
    return-void

    .line 1304
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadBriefPartContent(Landroid/database/Cursor;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 13
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "briefPart"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1534
    const/4 v11, 0x1

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    .line 1535
    .local v0, "charset":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p2, v11}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1539
    :cond_0
    const/4 v11, 0x2

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v1

    .line 1540
    .local v1, "contentDisposition":[B
    if-eqz v1, :cond_1

    .line 1541
    invoke-virtual {p2, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1544
    :cond_1
    const/4 v11, 0x3

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v2

    .line 1545
    .local v2, "contentId":[B
    if-eqz v2, :cond_2

    .line 1546
    invoke-virtual {p2, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1549
    :cond_2
    const/4 v11, 0x4

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v3

    .line 1550
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_3

    .line 1551
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1554
    :cond_3
    const/4 v11, 0x5

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v4

    .line 1555
    .local v4, "contentType":[B
    if-eqz v4, :cond_7

    .line 1556
    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1561
    const/4 v11, 0x6

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v5

    .line 1562
    .local v5, "fileName":[B
    if-nez v5, :cond_4

    .line 1563
    const/16 v11, 0x9

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v5

    .line 1565
    :cond_4
    if-eqz v5, :cond_5

    .line 1566
    invoke-virtual {p2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1569
    :cond_5
    const/4 v11, 0x7

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v7

    .line 1570
    .local v7, "name":[B
    if-eqz v7, :cond_6

    .line 1571
    invoke-virtual {p2, v7}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 1575
    :cond_6
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1576
    .local v6, "index":I
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1577
    .local v8, "partId":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/part/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1578
    .local v10, "partUri":Landroid/net/Uri;
    invoke-virtual {p2, v10}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1579
    return-void

    .line 1558
    .end local v5    # "fileName":[B
    .end local v6    # "index":I
    .end local v7    # "name":[B
    .end local v8    # "partId":J
    .end local v10    # "partUri":Landroid/net/Uri;
    :cond_7
    new-instance v11, Lcom/google/android/mms/MmsException;

    const-string v12, "Content-Type must be set."

    invoke-direct {v11, v12}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 34
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1353
    .local v12, "c":Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 1356
    .local v31, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1360
    :cond_0
    const/4 v2, 0x0

    .line 1472
    if-eqz v12, :cond_1

    .line 1473
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1477
    :cond_1
    :goto_0
    return-object v2

    .line 1363
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 1364
    .local v25, "partCount":I
    const/16 v28, 0x0

    .line 1365
    .local v28, "partIdx":I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v31, v0

    move/from16 v29, v28

    .line 1366
    .end local v28    # "partIdx":I
    .local v29, "partIdx":I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1367
    new-instance v24, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1368
    .local v24, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v14

    .line 1369
    .local v14, "charset":Ljava/lang/Integer;
    if-eqz v14, :cond_3

    .line 1370
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1373
    :cond_3
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 1375
    .local v15, "contentDisposition":[B
    if-eqz v15, :cond_4

    .line 1376
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1379
    :cond_4
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 1380
    .local v16, "contentId":[B
    if-eqz v16, :cond_5

    .line 1381
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1384
    :cond_5
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 1385
    .local v17, "contentLocation":[B
    if-eqz v17, :cond_6

    .line 1386
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1389
    :cond_6
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v18

    .line 1390
    .local v18, "contentType":[B
    if-eqz v18, :cond_b

    .line 1391
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1396
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v20

    .line 1397
    .local v20, "fileName":[B
    if-eqz v20, :cond_7

    .line 1398
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1401
    :cond_7
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayWithDefaultCharset(Landroid/database/Cursor;I)[B

    move-result-object v23

    .line 1402
    .local v23, "name":[B
    if-eqz v23, :cond_8

    .line 1403
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 1407
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1408
    .local v26, "partId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 1409
    .local v30, "partURI":Landroid/net/Uri;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1413
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v33

    .line 1414
    .local v33, "type":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1416
    const/16 v21, 0x0

    .line 1423
    .local v21, "is":Ljava/io/InputStream;
    const-string v2, "text/plain"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "application/smil"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "text/html"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1425
    :cond_9
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1426
    .local v32, "text":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1427
    .local v10, "blob":[B
    if-eqz v32, :cond_d

    .line 1428
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 1430
    .local v13, "charSetVal":I
    :try_start_2
    invoke-static {v13}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 1438
    :goto_2
    :try_start_3
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v13, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 1442
    .end local v13    # "charSetVal":I
    :goto_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1469
    .end local v10    # "blob":[B
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v32    # "text":Ljava/lang/String;
    :cond_a
    :goto_4
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "partIdx":I
    .restart local v28    # "partIdx":I
    aput-object v24, v31, v29

    move/from16 v29, v28

    .line 1470
    .end local v28    # "partIdx":I
    .restart local v29    # "partIdx":I
    goto/16 :goto_1

    .line 1393
    .end local v20    # "fileName":[B
    .end local v23    # "name":[B
    .end local v26    # "partId":J
    .end local v30    # "partURI":Landroid/net/Uri;
    .end local v33    # "type":Ljava/lang/String;
    :cond_b
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1472
    .end local v14    # "charset":Ljava/lang/Integer;
    .end local v15    # "contentDisposition":[B
    .end local v16    # "contentId":[B
    .end local v17    # "contentLocation":[B
    .end local v18    # "contentType":[B
    .end local v24    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v25    # "partCount":I
    .end local v29    # "partIdx":I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_c

    .line 1473
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1472
    :cond_c
    throw v2

    .line 1431
    .restart local v10    # "blob":[B
    .restart local v13    # "charSetVal":I
    .restart local v14    # "charset":Ljava/lang/Integer;
    .restart local v15    # "contentDisposition":[B
    .restart local v16    # "contentId":[B
    .restart local v17    # "contentLocation":[B
    .restart local v18    # "contentType":[B
    .restart local v20    # "fileName":[B
    .restart local v21    # "is":Ljava/io/InputStream;
    .restart local v23    # "name":[B
    .restart local v24    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v25    # "partCount":I
    .restart local v26    # "partId":J
    .restart local v29    # "partIdx":I
    .restart local v30    # "partURI":Landroid/net/Uri;
    .restart local v32    # "text":Ljava/lang/String;
    .restart local v33    # "type":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 1436
    .local v19, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    goto :goto_2

    .line 1440
    .end local v13    # "charSetVal":I
    .end local v19    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_d
    const/4 v2, 0x0

    new-array v10, v2, [B

    goto :goto_3

    .line 1444
    .end local v10    # "blob":[B
    .end local v32    # "text":Ljava/lang/String;
    :cond_e
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1446
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v21

    .line 1448
    const/16 v2, 0x100

    new-array v11, v2, [B

    .line 1449
    .local v11, "buffer":[B
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .line 1450
    .local v22, "len":I
    :goto_5
    if-ltz v22, :cond_10

    .line 1451
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1452
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v22

    goto :goto_5

    .line 1454
    .end local v11    # "buffer":[B
    .end local v22    # "len":I
    :catch_1
    move-exception v19

    .line 1455
    .local v19, "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "SomcPduPersister"

    const-string v3, "Failed to load part data"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1456
    new-instance v2, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1458
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    if-eqz v21, :cond_f

    .line 1460
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1458
    :cond_f
    :goto_6
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v11    # "buffer":[B
    .restart local v22    # "len":I
    :cond_10
    if-eqz v21, :cond_11

    .line 1460
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1466
    :cond_11
    :goto_7
    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 1472
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "buffer":[B
    .end local v14    # "charset":Ljava/lang/Integer;
    .end local v15    # "contentDisposition":[B
    .end local v16    # "contentId":[B
    .end local v17    # "contentLocation":[B
    .end local v18    # "contentType":[B
    .end local v20    # "fileName":[B
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v22    # "len":I
    .end local v23    # "name":[B
    .end local v24    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v26    # "partId":J
    .end local v30    # "partURI":Landroid/net/Uri;
    .end local v33    # "type":Ljava/lang/String;
    :cond_12
    if-eqz v12, :cond_13

    .line 1473
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_13
    move-object/from16 v2, v31

    .line 1477
    goto/16 :goto_0

    .line 1461
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "charset":Ljava/lang/Integer;
    .restart local v15    # "contentDisposition":[B
    .restart local v16    # "contentId":[B
    .restart local v17    # "contentLocation":[B
    .restart local v18    # "contentType":[B
    .restart local v20    # "fileName":[B
    .restart local v21    # "is":Ljava/io/InputStream;
    .restart local v23    # "name":[B
    .restart local v24    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v26    # "partId":J
    .restart local v30    # "partURI":Landroid/net/Uri;
    .restart local v33    # "type":Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 1462
    .restart local v19    # "e":Ljava/io/IOException;
    :try_start_b
    const-string v3, "SomcPduPersister"

    const-string v4, "Failed to close stream"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1461
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v11    # "buffer":[B
    .restart local v22    # "len":I
    :catch_3
    move-exception v19

    .line 1462
    .restart local v19    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    const-string v3, "Failed to close stream"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7
.end method

.method private persistPartData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 22
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 884
    const/16 v19, 0x0

    .line 885
    .local v19, "os":Ljava/io/OutputStream;
    const/4 v15, 0x0

    .line 886
    .local v15, "is":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 887
    .local v12, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/4 v11, 0x0

    .line 888
    .local v11, "dataUri":Landroid/net/Uri;
    const/16 v20, 0x0

    .line 891
    .local v20, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v10

    .line 892
    .local v10, "data":[B
    const-string v2, "text/plain"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/smil"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/html"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 982
    :cond_0
    :goto_0
    if-eqz v19, :cond_1

    .line 984
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 989
    :cond_1
    :goto_1
    if-eqz v15, :cond_2

    .line 991
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 996
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 997
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1001
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v14, "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1003
    .local v5, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1009
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v14    # "f":Ljava/io/File;
    :cond_3
    return-void

    .line 897
    :cond_4
    :try_start_3
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v16

    .line 898
    .local v16, "isDrm":Z
    if-eqz v16, :cond_b

    .line 899
    if-eqz p2, :cond_7

    .line 901
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    .line 905
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    .restart local v14    # "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->length()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v17

    .line 910
    .local v17, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-lez v2, :cond_7

    .line 982
    if-eqz v19, :cond_5

    .line 984
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 989
    :cond_5
    :goto_4
    if-eqz v15, :cond_6

    .line 991
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 996
    :cond_6
    :goto_5
    if-eqz v12, :cond_3

    .line 997
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1001
    new-instance v14, Ljava/io/File;

    .end local v14    # "f":Ljava/io/File;
    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    .restart local v14    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1003
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    .line 915
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v14    # "f":Ljava/io/File;
    .end local v17    # "len":J
    :catch_0
    move-exception v13

    .line 916
    .local v13, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get file info for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v12

    .line 921
    if-nez v12, :cond_b

    .line 922
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mimetype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can not be converted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 975
    .end local v10    # "data":[B
    .end local v16    # "isDrm":Z
    :catch_1
    move-exception v13

    .line 976
    .local v13, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v2, "SomcPduPersister"

    const-string v3, "Failed to open Input/Output stream."

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 982
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    move-object/from16 v21, v2

    if-eqz v19, :cond_8

    .line 984
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 989
    :cond_8
    :goto_6
    if-eqz v15, :cond_9

    .line 991
    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 996
    :cond_9
    :goto_7
    if-eqz v12, :cond_a

    .line 997
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1001
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    .restart local v14    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1003
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 982
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v14    # "f":Ljava/io/File;
    :cond_a
    throw v21

    .line 925
    .restart local v10    # "data":[B
    .restart local v16    # "isDrm":Z
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v19

    .line 926
    if-nez v10, :cond_13

    .line 927
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    .line 928
    if-eqz v11, :cond_c

    move-object/from16 v0, p2

    if-ne v11, v0, :cond_f

    .line 929
    :cond_c
    const-string v2, "SomcPduPersister"

    const-string v3, "Can\'t find data for this part."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 982
    if-eqz v19, :cond_d

    .line 984
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 989
    :cond_d
    :goto_8
    if-eqz v15, :cond_e

    .line 991
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 996
    :cond_e
    :goto_9
    if-eqz v12, :cond_3

    .line 997
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 1001
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    .restart local v14    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1003
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_3

    .line 932
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v14    # "f":Ljava/io/File;
    :cond_f
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 938
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 939
    .local v8, "buffer":[B
    invoke-virtual {v15, v8}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 940
    .local v17, "len":I
    :goto_a
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 941
    if-nez v16, :cond_10

    .line 942
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 954
    :goto_b
    invoke-virtual {v15, v8}, Ljava/io/InputStream;->read([B)I

    move-result v17

    goto :goto_a

    .line 944
    :cond_10
    if-nez v12, :cond_11

    .line 945
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content is drm, but drmConvertSession == null"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 978
    .end local v8    # "buffer":[B
    .end local v10    # "data":[B
    .end local v16    # "isDrm":Z
    .end local v17    # "len":I
    :catch_2
    move-exception v13

    .line 979
    .local v13, "e":Ljava/io/IOException;
    :try_start_f
    const-string v2, "SomcPduPersister"

    const-string v3, "Failed to read/write data."

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 947
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v8    # "buffer":[B
    .restart local v10    # "data":[B
    .restart local v16    # "isDrm":Z
    .restart local v17    # "len":I
    :cond_11
    :try_start_10
    move/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 948
    .local v9, "convertedData":[B
    if-eqz v9, :cond_12

    .line 949
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_b

    .line 951
    :cond_12
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 960
    .end local v8    # "buffer":[B
    .end local v9    # "convertedData":[B
    .end local v17    # "len":I
    :cond_13
    if-nez v16, :cond_14

    .line 961
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 963
    :cond_14
    if-nez v12, :cond_15

    .line 964
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content is drm, but drmConvertSession == null"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 966
    :cond_15
    array-length v2, v10

    invoke-virtual {v12, v10, v2}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 967
    .restart local v9    # "convertedData":[B
    if-eqz v9, :cond_16

    .line 968
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0

    .line 970
    :cond_16
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 985
    .end local v9    # "convertedData":[B
    .end local v10    # "data":[B
    .end local v16    # "isDrm":Z
    :catch_3
    move-exception v13

    .line 986
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 992
    .end local v13    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    .line 993
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 985
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v10    # "data":[B
    :catch_5
    move-exception v13

    .line 986
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 992
    .end local v13    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v13

    .line 993
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 985
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v16    # "isDrm":Z
    :catch_7
    move-exception v13

    .line 986
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 992
    .end local v13    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v13

    .line 993
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 985
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v14    # "f":Ljava/io/File;
    .local v17, "len":J
    :catch_9
    move-exception v13

    .line 986
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 992
    .end local v13    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v13

    .line 993
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v2, "SomcPduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5
.end method

.method private persistPduByPduPersister(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 10
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "notificationUri"    # Landroid/net/Uri;
    .param p4, "isUpdateTimestamp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 548
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v9, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 550
    .local v7, "res":Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 551
    .local v8, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_1

    .line 553
    const/4 v6, 0x0

    .line 555
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "star_status"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 558
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "star_status"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_0
    if-eqz v6, :cond_1

    .line 563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 567
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz p4, :cond_2

    .line 568
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    :cond_2
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    :cond_3
    if-eqz p3, :cond_4

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p3, v9, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    :cond_4
    return-object v7

    .line 562
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private persistPduByProvider(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 5
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "notificationUri"    # Landroid/net/Uri;
    .param p4, "isUpdateTimestamp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 581
    if-nez p2, :cond_0

    .line 582
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Uri may not be null."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_0
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 586
    .local v1, "msgBox":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 587
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 593
    .local v0, "marshalValues":Landroid/content/ContentValues;
    const-string v3, "dest_messagebox"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v3, "update_sctimestamp"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 595
    if-eqz p3, :cond_2

    .line 596
    const-string v3, "notification_uri"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_2
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4

    .line 599
    :try_start_0
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3, p2}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 600
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->processPduContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/content/ContentValues;)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 601
    .local v2, "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderContentUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v2, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduContentInProvider(Landroid/net/Uri;[Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 602
    .end local v2    # "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private persistPduContentInProvider(Landroid/net/Uri;[Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pduParts"    # [Lcom/google/android/mms/pdu/PduPart;
    .param p3, "marshalValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v2, v3, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 843
    .local v16, "res":Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 844
    .local v11, "msgId":J
    const/4 v15, 0x0

    .line 846
    .local v15, "partsCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string v6, "mid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v8

    const-string v8, "_id"

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 852
    if-eqz v15, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 854
    const/4 v9, 0x0

    .line 855
    .local v9, "i":I
    const-string v2, "content://mms/part/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .local v13, "partBaseUri":Landroid/net/Uri;
    move v10, v9

    .line 856
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 859
    .local v14, "partUri":Landroid/net/Uri;
    aget-object v2, p2, v10

    aget-object v3, p2, v10

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPartData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 860
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aget-object v2, p2, v10

    invoke-virtual {v2, v14}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v9

    .line 861
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 864
    .end local v10    # "i":I
    .end local v13    # "partBaseUri":Landroid/net/Uri;
    .end local v14    # "partUri":Landroid/net/Uri;
    :cond_0
    if-eqz v15, :cond_1

    .line 865
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 868
    :cond_1
    return-object v16

    .line 864
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_2

    .line 865
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private processPduContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/content/ContentValues;)[Lcom/google/android/mms/pdu/PduPart;
    .locals 36
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "marshalValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 618
    const/16 v16, 0x0

    .line 619
    .local v16, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    check-cast v16, Lcom/google/android/mms/pdu/PduHeaders;

    .line 621
    .restart local v16    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    if-nez v16, :cond_0

    .line 622
    new-instance v32, Lcom/google/android/mms/MmsException;

    const-string v33, "Cannot get PDU headers"

    invoke-direct/range {v32 .. v33}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 625
    :cond_0
    const/4 v8, 0x0

    .line 626
    .local v8, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 629
    .local v31, "values":Landroid/content/ContentValues;
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 630
    .local v26, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 631
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 632
    .local v15, "field":I
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 634
    .local v14, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v14, :cond_1

    .line 635
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 636
    .local v10, "charsetColumn":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 641
    .end local v10    # "charsetColumn":Ljava/lang/String;
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v14    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "field":I
    :cond_2
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 642
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 643
    .restart local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [B

    move-object/from16 v27, v32

    check-cast v27, [B

    .line 645
    .local v27, "text":[B
    if-eqz v27, :cond_3

    .line 646
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 650
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v27    # "text":[B
    :cond_4
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 651
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 652
    .restart local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 654
    .local v7, "b":Ljava/lang/Integer;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v32

    if-eqz v32, :cond_5

    .line 655
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 659
    .end local v7    # "b":Ljava/lang/Integer;
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_6
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 660
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 661
    .restart local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 663
    .local v19, "l":Ljava/lang/Long;
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v32, v32, v34

    if-eqz v32, :cond_7

    .line 664
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 668
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v19    # "l":Ljava/lang/Long;
    :cond_8
    new-instance v4, Ljava/util/HashMap;

    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 671
    .local v4, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v5, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    .local v5, "arr$":[I
    array-length v0, v5

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget v3, v5, v18

    .line 672
    .local v3, "addrType":I
    const/4 v6, 0x0

    .line 673
    .local v6, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v32, 0x89

    move/from16 v0, v32

    if-ne v3, v0, :cond_a

    .line 674
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 676
    .local v30, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_9

    .line 677
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v6, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 678
    const/16 v32, 0x0

    aput-object v30, v6, v32

    .line 684
    .end local v30    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 681
    :cond_a
    sget-object v32, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v6, v32

    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    goto :goto_5

    .line 687
    .end local v3    # "addrType":I
    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 688
    .local v25, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v28, 0x7fffffffffffffffL

    .line 689
    .local v28, "threadId":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v21

    .line 694
    .local v21, "msgType":I
    const/16 v32, 0x82

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_c

    const/16 v32, 0x84

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_c

    const/16 v32, 0x80

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 697
    :cond_c
    const/4 v6, 0x0

    .line 698
    .restart local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    packed-switch v21, :pswitch_data_0

    .line 708
    :goto_6
    :pswitch_0
    if-eqz v6, :cond_e

    .line 709
    move-object v5, v6

    .local v5, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v5

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    aget-object v30, v5, v18

    .line 710
    .restart local v30    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_d

    .line 711
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 701
    .end local v30    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v5, "arr$":[I
    :pswitch_1
    const/16 v32, 0x89

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 702
    .restart local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_6

    .line 704
    :pswitch_2
    const/16 v32, 0x97

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .restart local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_6

    .line 715
    .end local v5    # "arr$":[I
    :cond_e
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v24

    .line 716
    .local v24, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v28

    .line 718
    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v24    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :cond_f
    const-string v32, "thread_id"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 719
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalInboxCV(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 721
    const/16 v23, 0x0

    .line 723
    .local v23, "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move/from16 v32, v0

    if-eqz v32, :cond_13

    .line 724
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v8

    .line 726
    if-eqz v8, :cond_13

    .line 727
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v22

    .line 728
    .local v22, "partsNum":I
    const/4 v11, 0x0

    .line 729
    .local v11, "charsetPreValue":I
    if-lez v22, :cond_11

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v23, v0

    .line 730
    :goto_8
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_9
    if-eqz v23, :cond_13

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 731
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v32

    aput-object v32, v23, v17

    .line 732
    aget-object v32, v23, v17

    if-eqz v32, :cond_10

    aget-object v32, v23, v17

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v32

    if-eqz v32, :cond_10

    .line 733
    aget-object v32, v23, v17

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v12

    .line 734
    .local v12, "contentType":Ljava/lang/String;
    const-string v32, "text/plain"

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 735
    aget-object v32, v23, v17

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    .line 736
    .local v9, "charset":I
    if-eqz v9, :cond_12

    .line 737
    move v11, v9

    .line 745
    .end local v9    # "charset":I
    .end local v12    # "contentType":Ljava/lang/String;
    :cond_10
    :goto_a
    aget-object v32, v23, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->storePartContentAndText(Landroid/content/ContentValues;Lcom/google/android/mms/pdu/PduPart;)V

    .line 730
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 729
    .end local v17    # "i":I
    :cond_11
    const/16 v23, 0x0

    goto :goto_8

    .line 741
    .restart local v9    # "charset":I
    .restart local v12    # "contentType":Ljava/lang/String;
    .restart local v17    # "i":I
    :cond_12
    aget-object v32, v23, v17

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    goto :goto_a

    .line 751
    .end local v9    # "charset":I
    .end local v11    # "charsetPreValue":I
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v22    # "partsNum":I
    :cond_13
    sget-object v5, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    .restart local v5    # "arr$":[I
    array-length v0, v5

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_b
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    aget v3, v5, v18

    .line 752
    .restart local v3    # "addrType":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 753
    .restart local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_14

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->storeAddress(Landroid/content/ContentValues;I[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 751
    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 757
    .end local v3    # "addrType":I
    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    return-object v23

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 1077
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1079
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1080
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1081
    .local v0, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1082
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 1084
    .end local v0    # "charset":I
    .end local v1    # "charsetColumnIndex":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 1103
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1104
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1105
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setLongIntegerEx(JI)V

    .line 1107
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1097
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1098
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setOctetEx(II)V

    .line 1100
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 1088
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1090
    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setTextStringEx([BI)V

    .line 1092
    :cond_0
    return-void
.end method

.method private storeAddress(Landroid/content/ContentValues;I[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 9
    .param p1, "marshalValues"    # Landroid/content/ContentValues;
    .param p2, "type"    # I
    .param p3, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 761
    array-length v7, p3

    new-array v6, v7, [Landroid/content/ContentValues;

    .line 763
    .local v6, "valuesArray":[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 764
    .local v3, "index":I
    move-object v1, p3

    .local v1, "arr$":[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 765
    .local v0, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 766
    .local v5, "values":Landroid/content/ContentValues;
    aput-object v5, v6, v3

    .line 767
    const-string v7, "address"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v7, "charset"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string v7, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    add-int/lit8 v3, v3, 0x1

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {p1, v6}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalAddrsCV(Landroid/content/ContentValues;[Landroid/content/ContentValues;)V

    .line 773
    return-void
.end method

.method private storePartContentAndText(Landroid/content/ContentValues;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 12
    .param p1, "marshalValues"    # Landroid/content/ContentValues;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v9, Landroid/content/ContentValues;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 779
    .local v9, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    .line 780
    .local v0, "charset":I
    if-eqz v0, :cond_0

    .line 781
    const-string v10, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    :cond_0
    const/4 v1, 0x0

    .line 785
    .local v1, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v10

    if-eqz v10, :cond_a

    .line 786
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 787
    const-string v10, "ct"

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v10, "application/smil"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 790
    const-string v10, "seq"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v10

    if-eqz v10, :cond_2

    .line 797
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>([B)V

    .line 798
    .local v4, "fileName":Ljava/lang/String;
    const-string v10, "fn"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v5

    .line 802
    .local v5, "isDrm":Z
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v10

    if-eqz v10, :cond_3

    .line 803
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    .line 804
    .local v6, "name":Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 808
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v10

    if-eqz v10, :cond_4

    .line 809
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    .line 810
    .local v8, "value":Ljava/lang/String;
    const-string v10, "cd"

    check-cast v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/String;
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v10

    if-eqz v10, :cond_5

    .line 814
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    .line 815
    .restart local v8    # "value":Ljava/lang/String;
    const-string v10, "cid"

    check-cast v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/String;
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v10

    if-eqz v10, :cond_7

    .line 819
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    .line 820
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 821
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/mms/util/DownloadDrmHelper;->modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 823
    :cond_6
    const-string v10, "cl"

    check-cast v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/String;
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_7
    invoke-static {p1, v9}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalPartsCV(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v7

    .line 827
    .local v7, "partIndex":I
    const-string v10, "text/plain"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "application/smil"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "text/html"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 829
    :cond_8
    const/4 v3, 0x0

    .line 830
    .local v3, "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    .line 831
    .local v2, "data":[B
    if-eqz v2, :cond_b

    .line 832
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v10

    invoke-direct {v3, v10, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 836
    .restart local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v7, v1, v10}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalPartsDataCV(Landroid/content/ContentValues;ILjava/lang/String;Ljava/lang/String;)V

    .line 839
    .end local v2    # "data":[B
    .end local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    return-void

    .line 793
    .end local v5    # "isDrm":Z
    .end local v7    # "partIndex":I
    :cond_a
    new-instance v10, Lcom/google/android/mms/MmsException;

    const-string v11, "MIME type of the part must be set."

    invoke-direct {v10, v11}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 834
    .restart local v2    # "data":[B
    .restart local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v5    # "isDrm":Z
    .restart local v7    # "partIndex":I
    :cond_b
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v10, ""

    invoke-direct {v3, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .restart local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_0
.end method

.method public static final toIsoString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 1054
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :goto_0
    return-object v1

    .line 1055
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "SomcPduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 5
    .param p1, "dueTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1582
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterGetPendingMessagesMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 31
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1117
    sget-object v30, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v30

    .line 1118
    :try_start_0
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1119
    .local v13, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v13, :cond_0

    .line 1120
    invoke-virtual {v13}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v26

    monitor-exit v30

    .line 1288
    :goto_0
    return-object v26

    .line 1123
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1125
    .local v12, "c":Landroid/database/Cursor;
    new-instance v16, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;

    invoke-direct/range {v16 .. v16}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;-><init>()V

    .line 1127
    .local v16, "headers":Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v20

    .line 1132
    .local v20, "msgId":J
    if-eqz v12, :cond_1

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1133
    :cond_1
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_2

    .line 1160
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1159
    :cond_2
    throw v4

    .line 1289
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v16    # "headers":Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .end local v20    # "msgId":J
    :catchall_1
    move-exception v4

    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1136
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "headers":Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .restart local v20    # "msgId":J
    :cond_3
    const/4 v4, 0x1

    :try_start_3
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1137
    .local v19, "msgBox":I
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1139
    .local v28, "threadId":J
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 1140
    .local v27, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1141
    .local v15, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V

    goto :goto_1

    .line 1144
    .end local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 1145
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1146
    .restart local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V

    goto :goto_2

    .line 1149
    .end local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 1150
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1151
    .restart local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V

    goto :goto_3

    .line 1154
    .end local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    .line 1155
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1156
    .restart local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1159
    .end local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    if-eqz v12, :cond_8

    .line 1160
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_8
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_9

    .line 1166
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Error! ID of the message: -1."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1170
    :cond_9
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadAddress(JLcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;)V

    .line 1172
    const/16 v4, 0x8c

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->getOctetEx(I)I

    move-result v22

    .line 1173
    .local v22, "msgType":I
    new-instance v11, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 1177
    .local v11, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v4, 0x84

    move/from16 v0, v22

    if-eq v0, v4, :cond_a

    const/16 v4, 0x80

    move/from16 v0, v22

    if-ne v0, v4, :cond_b

    .line 1179
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 1180
    .local v24, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v24, :cond_b

    .line 1181
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    .line 1182
    .local v25, "partsNum":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 1183
    aget-object v4, v24, v17

    invoke-virtual {v11, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 1182
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1188
    .end local v17    # "i":I
    .end local v24    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v25    # "partsNum":I
    :cond_b
    const/16 v26, 0x0

    .line 1189
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const-string v23, "com.google.android.mms.pdu"

    .line 1190
    .local v23, "packagePath":Ljava/lang/String;
    const-string v14, ""

    .line 1191
    .local v14, "contorStr":Ljava/lang/String;
    packed-switch v22, :pswitch_data_0

    .line 1283
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1193
    :pswitch_0
    const-string v14, "NotificationInd"

    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/NotificationInd;

    .line 1286
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_6
    new-instance v13, Lcom/google/android/mms/util/PduCacheEntry;

    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    move-object/from16 v0, v26

    move/from16 v1, v19

    move-wide/from16 v2, v28

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    .line 1287
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 1288
    monitor-exit v30

    goto/16 :goto_0

    .line 1202
    :pswitch_1
    const-string v14, "DeliveryInd"

    .line 1203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/DeliveryInd;

    .line 1209
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 1211
    :pswitch_2
    const-string v14, "ReadOrigInd"

    .line 1212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/ReadOrigInd;

    .line 1218
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_6

    .line 1220
    :pswitch_3
    const-string v14, "RetrieveConf"

    .line 1221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/google/android/mms/pdu/PduBody;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v11, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 1227
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_6

    .line 1229
    :pswitch_4
    const-string v14, "SendReq"

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/google/android/mms/pdu/PduBody;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v11, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/SendReq;

    .line 1236
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_6

    .line 1238
    :pswitch_5
    const-string v14, "AcknowledgeInd"

    .line 1239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/AcknowledgeInd;

    .line 1245
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_6

    .line 1247
    :pswitch_6
    const-string v14, "NotifyRespInd"

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/NotifyRespInd;

    .line 1254
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_6

    .line 1256
    :pswitch_7
    const-string v14, "ReadRecInd"

    .line 1257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/android/mms/pdu/PduHeaders;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    check-cast v26, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 1263
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_6

    .line 1280
    :pswitch_8
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 16
    .param p1, "partUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/PduPart;

    .line 1482
    .local v9, "briefPart":Lcom/google/android/mms/pdu/PduPart;
    if-nez v9, :cond_6

    .line 1483
    const/4 v12, 0x0

    .line 1485
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1487
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1488
    new-instance v10, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduPart;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1489
    .end local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .local v10, "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 1490
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadBriefPartContent(Landroid/database/Cursor;Lcom/google/android/mms/pdu/PduPart;)V

    .line 1491
    const/4 v14, 0x0

    .line 1492
    .local v14, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1494
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1496
    const/16 v1, 0x100

    new-array v11, v1, [B

    .line 1497
    .local v11, "buffer":[B
    invoke-virtual {v14, v11}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 1498
    .local v15, "len":I
    :goto_0
    if-ltz v15, :cond_2

    .line 1499
    const/4 v1, 0x0

    invoke-virtual {v8, v11, v1, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1500
    invoke-virtual {v14, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    goto :goto_0

    .line 1502
    .end local v11    # "buffer":[B
    .end local v15    # "len":I
    :catch_0
    move-exception v13

    .line 1503
    .local v13, "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "SomcPduPersister"

    const-string v2, "Failed to load part data"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1504
    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1506
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v14, :cond_0

    .line 1508
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1506
    :cond_0
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1517
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :goto_2
    if-eqz v12, :cond_1

    .line 1518
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1517
    :cond_1
    throw v1

    .line 1506
    .end local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v11    # "buffer":[B
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "len":I
    :cond_2
    if-eqz v14, :cond_3

    .line 1508
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1514
    :cond_3
    :goto_3
    :try_start_7
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v9, v10

    .line 1517
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "buffer":[B
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "len":I
    .restart local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    if-eqz v12, :cond_5

    .line 1518
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1521
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_6
    return-object v9

    .line 1509
    .end local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v13

    .line 1510
    .restart local v13    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v2, "SomcPduPersister"

    const-string v3, "Failed to close stream"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1509
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v11    # "buffer":[B
    .restart local v15    # "len":I
    :catch_2
    move-exception v13

    .line 1510
    .restart local v13    # "e":Ljava/io/IOException;
    const-string v1, "SomcPduPersister"

    const-string v2, "Failed to close stream"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 1517
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "buffer":[B
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "len":I
    .restart local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :catchall_2
    move-exception v1

    goto :goto_2
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1595
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterMoveMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduByProvider(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;
    .locals 10
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 492
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    .line 493
    .local v2, "type":I
    sparse-switch v2, :sswitch_data_0

    .line 499
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Wrong pdu message type, should use persistContent."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    :sswitch_0
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 503
    .local v3, "uri":Landroid/net/Uri;
    sget-boolean v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z

    if-nez v4, :cond_0

    .line 504
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object v3, v6, v8

    const/4 v7, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 513
    :goto_0
    return-object v4

    .line 508
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v0, "marshalValues":Landroid/content/ContentValues;
    const-string v4, "dest_messagebox"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v5, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 511
    :try_start_0
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4, v3}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->processPduContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/content/ContentValues;)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 513
    .local v1, "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderNotificationUri:Landroid/net/Uri;

    invoke-direct {p0, v4, v1, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduContentInProvider(Landroid/net/Uri;[Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    monitor-exit v5

    goto :goto_0

    .line 514
    .end local v1    # "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_0
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public persistMmsRetrievedContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 4
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "notificationUri"    # Landroid/net/Uri;
    .param p3, "isUpdateTimestamp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 530
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 539
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 540
    .local v1, "uri":Landroid/net/Uri;
    sget-boolean v2, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z

    if-nez v2, :cond_0

    .line 541
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduByPduPersister(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    .line 543
    :goto_0
    return-object v2

    .line 534
    .end local v1    # "uri":Landroid/net/Uri;
    :sswitch_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Wrong pdu message type, should use persistNotification."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduByProvider(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 530
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_0
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;
    .locals 5
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1591
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterPersistPartMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public unloadPartForBriefImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "partUri"    # Landroid/net/Uri;

    .prologue
    .line 1527
    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    .line 1528
    .local v0, "briefPart":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v0, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    :cond_0
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1587
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdateHeadersMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    return-void
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1599
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduPersisterUpdatePartsMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    return-void
.end method
