.class public final Lcom/sonyericsson/conversations/model/MessageProjection;
.super Ljava/lang/Object;
.source "MessageProjection.java"


# static fields
.field public static final COMMON:I = 0x3

.field public static final COMMON_PROJECTION:[Ljava/lang/String;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DELIVERY_STATUS:Ljava/lang/String; = "delivery_status"

.field public static final MMS:I = 0x2

.field public static final MMS_PROJECTION:[Ljava/lang/String;

.field public static final NORMALIZED_DATE:Ljava/lang/String; = "normalized_date"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final SEQUENCE_TIME:Ljava/lang/String; = "sequence_time"

.field public static final SEQUENCE_TIME_ORDERED_COMMON_PROJECTION:[Ljava/lang/String;

.field public static final SMS:I = 0x1

.field public static final SMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION_EX:[Ljava/lang/String;

.field public static final STAR_STATUS:Ljava/lang/String; = "star_status"


# instance fields
.field public mColumnDate:I

.field public mColumnDeliveryStatus:I

.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsErrorType:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsPriority:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMsgId:I

.field public mColumnMsgType:I

.field public mColumnNormalizedDate:I

.field public mColumnRead:I

.field public mColumnSmsAddress:I

.field public mColumnSmsBody:I

.field public mColumnSmsPriority:I

.field public mColumnSmsServiceCenter:I

.field public mColumnSmsStatus:I

.field public mColumnSmsThreadId:I

.field public mColumnSmsType:I

.field public mColumnStarStatus:I

.field public mProjectionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "read"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "normalized_date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "delivery_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "star_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "semc_message_priority"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->COMMON_PROJECTION:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "read"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "normalized_date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "delivery_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "star_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sequence_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "semc_message_priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->SEQUENCE_TIME_ORDERED_COMMON_PROJECTION:[Ljava/lang/String;

    .line 103
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "semc_message_priority"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION:[Ljava/lang/String;

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "semc_message_priority"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION_EX:[Ljava/lang/String;

    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "m_type"

    aput-object v1, v0, v6

    const-string v1, "msg_box"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->MMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "type"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p2, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mProjectionType:I

    .line 193
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgId:I

    .line 194
    const-string v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnRead:I

    .line 195
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnDate:I

    .line 197
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 198
    const-string v0, "transport_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgType:I

    .line 199
    const-string v0, "normalized_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnNormalizedDate:I

    .line 200
    const-string v0, "err_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsErrorType:I

    .line 201
    const-string v0, "delivery_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnDeliveryStatus:I

    .line 202
    const-string v0, "star_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnStarStatus:I

    .line 205
    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 206
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsType:I

    .line 207
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsBody:I

    .line 208
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsStatus:I

    .line 209
    const-string v0, "semc_message_priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsPriority:I

    .line 210
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsThreadId:I

    .line 211
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsAddress:I

    .line 212
    const-string v0, "service_center"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsServiceCenter:I

    .line 215
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 216
    const-string v0, "m_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsMessageType:I

    .line 217
    const-string v0, "msg_box"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsMessageBox:I

    .line 218
    const-string v0, "sub"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsSubject:I

    .line 219
    const-string v0, "sub_cs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsSubjectCharset:I

    .line 220
    const-string v0, "d_rpt"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsDeliveryReport:I

    .line 221
    const-string v0, "rr"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsReadReport:I

    .line 222
    const-string v0, "pri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsPriority:I

    .line 224
    :cond_2
    return-void
.end method
