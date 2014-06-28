.class Landroid/mtp/MtpContactServiceDB;
.super Landroid/mtp/MtpServiceDatabase;
.source "MtpContactServiceDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;,
        Landroid/mtp/MtpContactServiceDB$PropertyIndex;,
        Landroid/mtp/MtpContactServiceDB$ContactMapper;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SELECTION:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final ACCOUNT_SELECTION_ARGS:[Ljava/lang/String;

.field private static final DATA_RAW_CONTACT_ID_MIMETYPE_SUBTYPE_WHERE:Ljava/lang/String; = "raw_contact_id= ? AND mimetype = ? AND data2 = ? "

.field private static final DATA_RAW_CONTACT_ID_MIMETYPE_WHERE:Ljava/lang/String; = "raw_contact_id= ? AND mimetype = ? "

.field private static final DATA_RAW_CONTACT_ID_WHERE:Ljava/lang/String; = "raw_contact_id= ? "

.field private static final DEFAULT_ACCOUNT_NAME:Ljava/lang/String; = "Phone contacts"

.field private static final DEFAULT_ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.localcontacts"

.field private static final DELETED_SELECTION:Ljava/lang/String; = "account_name=? AND account_type=? AND deleted!=0"

.field private static final DELETE_ACCOUNT_TYPE_WHERE:Ljava/lang/String; = "deleted = 0 AND account_type = \'com.sonyericsson.localcontacts\'"

.field private static final DIRTY_OR_DELETED_SELECTION:Ljava/lang/String; = "account_name=? AND account_type=? AND (dirty!=0 OR deleted!=0)"

.field private static final FIRST_RECORD:I = 0x1

.field private static final ID_DIRTY_DELETED_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_KEY:Ljava/lang/String; = "_index"

.field private static final PROPS_MAPPER:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/mtp/MtpContactServiceDB$ContactMapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAW_CONTACTS_ID_WHERE:Ljava/lang/String; = "_id= ? "

.field private static final SECOND_RECORD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MtpContactServiceDB"

.field private static final THIRD_RECORD:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 60
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "dirty"

    aput-object v1, v0, v6

    const-string v1, "deleted"

    aput-object v1, v0, v7

    sput-object v0, Landroid/mtp/MtpContactServiceDB;->ID_DIRTY_DELETED_PROJECTION:[Ljava/lang/String;

    .line 64
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Phone contacts"

    aput-object v1, v0, v2

    const-string v1, "com.sonyericsson.localcontacts"

    aput-object v1, v0, v6

    sput-object v0, Landroid/mtp/MtpContactServiceDB;->ACCOUNT_SELECTION_ARGS:[Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    .line 79
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdc44

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd00

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data2"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd01

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data5"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd02

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data3"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd03

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data4"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd04

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data6"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd06

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data9"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd05

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data7"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd17

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd10

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd11

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v2, v3, v4, v8, v7}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd12

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd13

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v2, v3, v4, v7, v7}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd0e

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd0f

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd18

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd16

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v2, v3, v4, v9, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd15

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd0a

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd0b

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-direct {v2, v3, v4, v7, v7}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd08

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd09

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd0c

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd1c

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd1d

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd1e

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-direct {v2, v3, v4, v6, v8}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd34

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd36

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data4"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd35

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data8"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd22

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data7"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd1f

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd25

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data10"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd20

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data4"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd24

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data9"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd23

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data8"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd29

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data7"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd26

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd2c

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data10"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd27

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data4"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd2b

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data9"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd2a

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data8"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v7, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd2d

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd2e

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data4"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd33

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data10"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd32

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data9"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd31

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data8"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd30

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data7"

    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd19

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-direct {v2, v3, v4, v9, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd3b

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/note"

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd39

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/relation"

    const/16 v5, 0xe

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd3a

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/relation"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xfcc0

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/relation"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd37

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    sget-object v0, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    const v1, 0xdd38

    new-instance v2, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    const-string v3, "data1"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/mtp/MtpContactServiceDB$ContactMapper;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServiceDatabase;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    .line 210
    return-void
.end method

.method private addBaseInfo(ILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 530
    const v0, 0xdd02

    const-string v1, "data3"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 532
    const v0, 0xdd00

    const-string v1, "data2"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 534
    const v0, 0xdd01

    const-string v1, "data5"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 536
    const v0, 0xdc44

    const-string v1, "data1"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 538
    const v0, 0xdd03

    const-string v1, "data4"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 540
    const v0, 0xdd04

    const-string v1, "data6"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 542
    const v0, 0xdd06

    const-string v1, "data9"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 544
    const v0, 0xdd05

    const-string v1, "data7"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 546
    const-string v0, "data_sync4"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, "modifyTime":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(J)Ljava/lang/String;

    move-result-object v6

    .line 550
    invoke-static {p1}, Landroid/mtp/MtpContactServiceDB;->decodeHandle(I)I

    move-result v0

    invoke-direct {p0, v0, v6}, Landroid/mtp/MtpContactServiceDB;->updateModifyTime(ILjava/lang/String;)V

    .line 552
    :cond_0
    const v0, 0xddd1

    invoke-virtual {p3, p1, v0, v6}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 553
    const v2, 0xdc0b

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    move-object v0, p3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 555
    return-void
.end method

.method private addEmailInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;Landroid/mtp/MtpContactServiceDB$PropertyIndex;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "subType"    # I
    .param p3, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "propIndex"    # Landroid/mtp/MtpContactServiceDB$PropertyIndex;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 608
    packed-switch p2, :pswitch_data_0

    .line 633
    :goto_0
    return-void

    .line 610
    :pswitch_0
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workEmailIndex:I

    if-ne v0, v1, :cond_1

    .line 611
    const v0, 0xdd0a

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 615
    :cond_0
    :goto_1
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workEmailIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workEmailIndex:I

    goto :goto_0

    .line 612
    :cond_1
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workEmailIndex:I

    if-ne v0, v2, :cond_0

    .line 613
    const v0, 0xdd0b

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_1

    .line 618
    :pswitch_1
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->personalEmailIndex:I

    if-ne v0, v1, :cond_3

    .line 619
    const v0, 0xdd08

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 623
    :cond_2
    :goto_2
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->personalEmailIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->personalEmailIndex:I

    goto :goto_0

    .line 620
    :cond_3
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->personalEmailIndex:I

    if-ne v0, v2, :cond_2

    .line 621
    const v0, 0xdd09

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_2

    .line 626
    :pswitch_2
    const v0, 0xdd0c

    const/16 v1, 0x4004

    invoke-virtual {p3, p1, v0, v1, p4}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    goto :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private addEventInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "subType"    # I
    .param p3, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 734
    packed-switch p2, :pswitch_data_0

    .line 745
    :goto_0
    :pswitch_0
    return-void

    .line 736
    :pswitch_1
    const v0, 0xdd37

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 739
    :pswitch_2
    const v0, 0xdd38

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addIMInfo(ILandroid/mtp/MtpPropertyList;Ljava/lang/String;Landroid/mtp/MtpContactServiceDB$PropertyIndex;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "propIndex"    # Landroid/mtp/MtpContactServiceDB$PropertyIndex;

    .prologue
    .line 637
    const v0, 0xdd1c

    .line 638
    .local v0, "imKey":I
    iget v1, p4, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->imIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 639
    const v0, 0xdd1d

    .line 643
    :cond_0
    :goto_0
    invoke-virtual {p2, p1, v0, p3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 644
    iget v1, p4, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->imIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p4, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->imIndex:I

    .line 645
    return-void

    .line 640
    :cond_1
    iget v1, p4, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->imIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 641
    const v0, 0xdd1e

    goto :goto_0
.end method

.method private addOrganizationInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "subType"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 649
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 650
    const v0, 0xdd34

    const-string v1, "data1"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 652
    const v0, 0xdd36

    const-string v1, "data4"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 654
    const v0, 0xdd35

    const-string v1, "data8"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 658
    :cond_0
    return-void
.end method

.method private addPhoneInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;Landroid/mtp/MtpContactServiceDB$PropertyIndex;)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "subType"    # I
    .param p3, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "propIndex"    # Landroid/mtp/MtpContactServiceDB$PropertyIndex;

    .prologue
    const v3, 0xdd0e

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 559
    packed-switch p2, :pswitch_data_0

    .line 604
    :goto_0
    :pswitch_0
    return-void

    .line 561
    :pswitch_1
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workPhoneIndex:I

    if-ne v0, v1, :cond_1

    .line 562
    const v0, 0xdd10

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 566
    :cond_0
    :goto_1
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workPhoneIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workPhoneIndex:I

    goto :goto_0

    .line 563
    :cond_1
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workPhoneIndex:I

    if-ne v0, v2, :cond_0

    .line 564
    const v0, 0xdd11

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_1

    .line 569
    :pswitch_2
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->mobilePhoneIndex:I

    if-ne v0, v1, :cond_3

    .line 570
    const v0, 0xdd12

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 574
    :cond_2
    :goto_2
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->mobilePhoneIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->mobilePhoneIndex:I

    goto :goto_0

    .line 571
    :cond_3
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->mobilePhoneIndex:I

    if-ne v0, v2, :cond_2

    .line 572
    const v0, 0xdd13

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_2

    .line 577
    :pswitch_3
    invoke-virtual {p3, p1, v3, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 580
    :pswitch_4
    const v0, 0xdd16

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 583
    :pswitch_5
    const v0, 0xdd15

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 586
    :pswitch_6
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->homePhoneIndex:I

    if-ne v0, v1, :cond_5

    .line 587
    invoke-virtual {p3, p1, v3, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 591
    :cond_4
    :goto_3
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->homePhoneIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->homePhoneIndex:I

    goto :goto_0

    .line 588
    :cond_5
    iget v0, p5, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->homePhoneIndex:I

    if-ne v0, v2, :cond_4

    .line 589
    const v0, 0xdd0f

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_3

    .line 594
    :pswitch_7
    const v0, 0xdd17

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 597
    :pswitch_8
    const v0, 0xdd18

    const/16 v1, 0x4004

    invoke-virtual {p3, p1, v0, v1, p4}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private addRelationInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "subType"    # I
    .param p3, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 749
    sparse-switch p2, :sswitch_data_0

    .line 760
    :goto_0
    return-void

    .line 751
    :sswitch_0
    const v0, 0xdd39

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 754
    :sswitch_1
    const v0, 0xdd3a

    invoke-virtual {p3, p1, v0, p4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_0

    .line 749
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private addStructuredPostalInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "subType"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "props":Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    packed-switch p2, :pswitch_data_0

    .line 695
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/mtp/MtpContactServiceDB;->addStructuredPostalProps(ILandroid/mtp/MtpContactServiceDB$StructuredPostalProperties;Landroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V

    .line 696
    :cond_0
    return-void

    .line 665
    :pswitch_0
    new-instance v0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;

    .end local v0    # "props":Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    const v1, 0xdd1f

    const v2, 0xdd25

    const v3, 0xdd23

    const v4, 0xdd22

    const v5, 0xdd20

    const v6, 0xdd24

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;-><init>(IIIIII)V

    .line 672
    .restart local v0    # "props":Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    goto :goto_0

    .line 674
    :pswitch_1
    new-instance v0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;

    .end local v0    # "props":Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    const v1, 0xdd26

    const v2, 0xdd2c

    const v3, 0xdd2a

    const v4, 0xdd29

    const v5, 0xdd27

    const v6, 0xdd2b

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;-><init>(IIIIII)V

    .line 681
    .restart local v0    # "props":Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    goto :goto_0

    .line 683
    :pswitch_2
    new-instance v0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;

    .end local v0    # "props":Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    const v1, 0xdd2d

    const v2, 0xdd33

    const v3, 0xdd31

    const v4, 0xdd30

    const v5, 0xdd2e

    const v6, 0xdd32

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;-><init>(IIIIII)V

    .line 690
    .restart local v0    # "props":Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addStructuredPostalProps(ILandroid/mtp/MtpContactServiceDB$StructuredPostalProperties;Landroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "props"    # Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 700
    iget v0, p2, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->addressFull:I

    const/16 v1, 0x4004

    const-string v2, "data1"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    .line 702
    iget v0, p2, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->city:I

    const-string v1, "data7"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 704
    iget v0, p2, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->country:I

    const-string v1, "data10"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 706
    iget v0, p2, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->street:I

    const-string v1, "data4"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 708
    iget v0, p2, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->postalCode:I

    const-string v1, "data9"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 710
    iget v0, p2, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->region:I

    const-string v1, "data8"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 712
    return-void
.end method

.method private getContentValues(Ljava/util/HashMap;ILjava/lang/String;I)Landroid/content/ContentValues;
    .locals 4
    .param p2, "rawContactId"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;I",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 300
    :goto_0
    return-object v2

    .line 295
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "_index"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 300
    goto :goto_0
.end method

.method private getContentValues(Ljava/util/HashMap;ILjava/lang/String;II)Landroid/content/ContentValues;
    .locals 4
    .param p2, "rawContactId"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "subType"    # I
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;I",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 285
    :goto_0
    return-object v2

    .line 279
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "data2"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v2, "_index"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 285
    goto :goto_0
.end method

.method private getDataId(Landroid/content/ContentValues;I)I
    .locals 10
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    const-string/jumbo v0, "mimetype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "contactId":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object v6, v4, v1

    aput-object v9, v4, v2

    .line 249
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "raw_contact_id= ? AND mimetype = ? "

    .line 250
    .local v3, "queryStr":Ljava/lang/String;
    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object v6, v4, v1

    aput-object v9, v4, v2

    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 252
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "raw_contact_id= ? AND mimetype = ? AND data2 = ? "

    .line 254
    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpContactServiceDB;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 256
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 257
    .local v8, "dataId":I
    if-eqz v7, :cond_2

    .line 259
    add-int/lit8 v0, p2, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 263
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_2
    return v8

    .line 263
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateModifyTime(ILjava/lang/String;)V
    .locals 7
    .param p1, "contactId"    # I
    .param p2, "modifyTime"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 215
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "data_sync4"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "raw_contact_id= ? AND mimetype = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vnd.android.cursor.item/name"

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    return-void
.end method


# virtual methods
.method public deleteObject(I)I
    .locals 7
    .param p1, "handle"    # I

    .prologue
    .line 234
    invoke-static {p1}, Landroid/mtp/MtpContactServiceDB;->decodeHandle(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "strHandle":Ljava/lang/String;
    iget-object v2, p0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "result":I
    if-lez v0, :cond_0

    const/16 v2, 0x2001

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x2009

    goto :goto_0
.end method

.method protected getChangedItems()[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .locals 7

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/mtp/MtpContactServiceDB;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpContactServiceDB;->ID_DIRTY_DELETED_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=? AND (dirty!=0 OR deleted!=0)"

    sget-object v4, Landroid/mtp/MtpContactServiceDB;->ACCOUNT_SELECTION_ARGS:[Ljava/lang/String;

    const-string v5, "deleted"

    const-string v6, "dirty"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/mtp/MtpContactServiceDB;->getChangedItems(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/mtp/MtpServiceDatabase$ChangeItem;

    move-result-object v0

    return-object v0
.end method

.method protected getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 764
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getNumObjects()I
    .locals 3

    .prologue
    .line 229
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "deleted = 0 AND account_type = \'com.sonyericsson.localcontacts\'"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/mtp/MtpContactServiceDB;->getNumObjects(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObjectHandles()[I
    .locals 4

    .prologue
    .line 223
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "deleted = 0 AND account_type = \'com.sonyericsson.localcontacts\'"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/mtp/MtpContactServiceDB;->getObjectHandles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 20
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    .prologue
    .line 458
    invoke-static/range {p1 .. p1}, Landroid/mtp/MtpContactServiceDB;->decodeHandle(I)I

    move-result v16

    .line 459
    .local v16, "actualHandle":I
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    const v4, 0xdd80

    move/from16 v0, p3

    if-ne v0, v4, :cond_1

    .line 460
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/mtp/MtpContactServiceDB;->getObjectsPUID(I)Landroid/mtp/MtpPropertyList;

    move-result-object v3

    .line 526
    :cond_0
    :goto_0
    return-object v3

    .line 462
    :cond_1
    const/16 v18, 0x0

    .line 463
    .local v18, "cursor":Landroid/database/Cursor;
    new-instance v3, Landroid/mtp/MtpPropertyList;

    const/16 v4, 0x50

    const/16 v5, 0x2001

    invoke-direct {v3, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 465
    .local v3, "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    const v5, 0xdd80

    const/16 v6, 0xa

    move/from16 v0, p1

    int-to-long v7, v0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 468
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string/jumbo v7, "raw_contact_id= ? "

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 470
    if-eqz v18, :cond_f

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 471
    new-instance v9, Landroid/mtp/MtpContactServiceDB$PropertyIndex;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Landroid/mtp/MtpContactServiceDB$PropertyIndex;-><init>(Landroid/mtp/MtpContactServiceDB$1;)V

    .line 472
    .local v9, "propIndex":Landroid/mtp/MtpContactServiceDB$PropertyIndex;
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 473
    const-string/jumbo v4, "mimetype"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 474
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 475
    const-string v4, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 476
    .local v8, "value":Ljava/lang/String;
    const-string v4, "data2"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 477
    .local v6, "subType":I
    const-string/jumbo v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 478
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/mtp/MtpContactServiceDB;->addBaseInfo(ILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 524
    .end local v3    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    .end local v6    # "subType":I
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "propIndex":Landroid/mtp/MtpContactServiceDB$PropertyIndex;
    .end local v19    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 479
    .restart local v3    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    .restart local v6    # "subType":I
    .restart local v8    # "value":Ljava/lang/String;
    .restart local v9    # "propIndex":Landroid/mtp/MtpContactServiceDB$PropertyIndex;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object v7, v3

    .line 480
    invoke-direct/range {v4 .. v9}, Landroid/mtp/MtpContactServiceDB;->addPhoneInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;Landroid/mtp/MtpContactServiceDB$PropertyIndex;)V

    goto :goto_1

    .line 481
    :cond_5
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object v7, v3

    .line 482
    invoke-direct/range {v4 .. v9}, Landroid/mtp/MtpContactServiceDB;->addEmailInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;Landroid/mtp/MtpContactServiceDB$PropertyIndex;)V

    goto :goto_1

    .line 483
    :cond_6
    const-string/jumbo v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 484
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v8, v9}, Landroid/mtp/MtpContactServiceDB;->addIMInfo(ILandroid/mtp/MtpPropertyList;Ljava/lang/String;Landroid/mtp/MtpContactServiceDB$PropertyIndex;)V

    goto/16 :goto_1

    .line 485
    :cond_7
    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 486
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/mtp/MtpContactServiceDB;->addOrganizationInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V

    goto/16 :goto_1

    .line 487
    :cond_8
    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 488
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/mtp/MtpContactServiceDB;->addStructuredPostalInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V

    goto/16 :goto_1

    .line 489
    :cond_9
    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 490
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6, v3, v8}, Landroid/mtp/MtpContactServiceDB;->addEventInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    :cond_a
    const-string/jumbo v4, "vnd.android.cursor.item/website"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 492
    iget v4, v9, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->webSiteIndex:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 493
    const-string v4, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 494
    const v4, 0xdd19

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 495
    iget v4, v9, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->webSiteIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v9, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->webSiteIndex:I

    goto/16 :goto_1

    .line 497
    :cond_b
    const-string/jumbo v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 498
    const v4, 0xdd3b

    const/16 v5, 0x4004

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4, v5, v8}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    goto/16 :goto_1

    .line 500
    :cond_c
    const-string/jumbo v4, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 501
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6, v3, v8}, Landroid/mtp/MtpContactServiceDB;->addRelationInfo(IILandroid/mtp/MtpPropertyList;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 502
    :cond_d
    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    const-string v4, "data15"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 504
    .local v17, "byteArray":[B
    if-eqz v17, :cond_2

    .line 505
    const v4, 0xdd3c

    const/16 v5, 0x4002

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4, v5, v7}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    goto/16 :goto_1

    .line 510
    .end local v6    # "subType":I
    .end local v8    # "value":Ljava/lang/String;
    .end local v17    # "byteArray":[B
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_e
    const v12, 0xdc02

    const/4 v13, 0x4

    const-wide/32 v14, 0xff04

    move-object v10, v3

    move/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 513
    const v12, 0xdc04

    const/16 v13, 0x8

    const-wide/16 v14, 0x0

    move-object v10, v3

    move/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 515
    const v12, 0xdc01

    const/4 v13, 0x6

    const-wide/32 v14, 0x10002

    move-object v10, v3

    move/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 518
    invoke-static {v3}, Landroid/mtp/MtpPropertyListHelper;->filterNullProperty(Landroid/mtp/MtpPropertyList;)Landroid/mtp/MtpPropertyList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 524
    .end local v9    # "propIndex":Landroid/mtp/MtpContactServiceDB$PropertyIndex;
    :goto_2
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 520
    :cond_f
    :try_start_2
    new-instance v3, Landroid/mtp/MtpPropertyList;

    .end local v3    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    const/4 v4, 0x0

    const/16 v5, 0x2009

    invoke-direct {v3, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v3    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    goto :goto_2
.end method

.method protected getServiceId()I
    .locals 1

    .prologue
    .line 769
    const/16 v0, 0x20

    return v0
.end method

.method public handleData(ILandroid/mtp/MtpPropertyList;)[I
    .locals 25
    .param p1, "handle"    # I
    .param p2, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 328
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 329
    .local v20, "result":[I
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    const/16 v16, 0x1

    .line 330
    .local v16, "isNew":Z
    :goto_0
    move/from16 v4, p1

    .line 331
    .local v4, "rawContactId":I
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v8, "accountValue":Landroid/content/ContentValues;
    const-string v2, "dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    if-eqz v16, :cond_2

    .line 334
    const-string v2, "account_name"

    const-string v5, "Phone contacts"

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v2, "account_type"

    const-string v5, "com.sonyericsson.localcontacts"

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 337
    .local v19, "rawContactUri":Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    long-to-int v4, v5

    .line 342
    .end local v19    # "rawContactUri":Landroid/net/Uri;
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_7

    .line 344
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v2, :cond_3

    const/16 v21, 0x0

    .line 346
    .local v21, "strValue":Ljava/lang/String;
    :goto_3
    sget-object v2, Landroid/mtp/MtpContactServiceDB;->PROPS_MAPPER:Landroid/util/SparseArray;

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v5, v5, v13

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;

    .line 347
    .local v9, "c":Landroid/mtp/MtpContactServiceDB$ContactMapper;
    if-eqz v9, :cond_5

    .line 348
    iget v2, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mSubType:I

    if-nez v2, :cond_4

    .line 349
    iget-object v2, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mType:Ljava/lang/String;

    iget v5, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/mtp/MtpContactServiceDB;->getContentValues(Ljava/util/HashMap;ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v5, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mDataName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 329
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v4    # "rawContactId":I
    .end local v8    # "accountValue":Landroid/content/ContentValues;
    .end local v9    # "c":Landroid/mtp/MtpContactServiceDB$ContactMapper;
    .end local v13    # "i":I
    .end local v16    # "isNew":Z
    .end local v21    # "strValue":Ljava/lang/String;
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 339
    .restart local v4    # "rawContactId":I
    .restart local v8    # "accountValue":Landroid/content/ContentValues;
    .restart local v16    # "isNew":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id= ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v23, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v23

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 344
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v13    # "i":I
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aget-object v21, v2, v13

    goto :goto_3

    .line 352
    .restart local v9    # "c":Landroid/mtp/MtpContactServiceDB$ContactMapper;
    .restart local v21    # "strValue":Ljava/lang/String;
    :cond_4
    iget-object v5, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mType:Ljava/lang/String;

    iget v6, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mSubType:I

    iget v7, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mIndex:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/mtp/MtpContactServiceDB;->getContentValues(Ljava/util/HashMap;ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v5, v9, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mDataName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 356
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v2, v2, v13

    const v5, 0xdd3c

    if-ne v2, v5, :cond_0

    .line 357
    if-nez v21, :cond_6

    .line 358
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/mtp/MtpContactServiceDB;->getContentValues(Ljava/util/HashMap;ILjava/lang/String;I)Landroid/content/ContentValues;

    goto :goto_4

    .line 360
    :cond_6
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/mtp/MtpContactServiceDB;->getContentValues(Ljava/util/HashMap;ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    const-string v5, "data15"

    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 362
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/mtp/MtpContactServiceDB;->getContentValues(Ljava/util/HashMap;ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    const-string v5, "data1"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 368
    .end local v9    # "c":Landroid/mtp/MtpContactServiceDB$ContactMapper;
    .end local v21    # "strValue":Ljava/lang/String;
    :cond_7
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 369
    .local v17, "mapValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v2, Landroid/mtp/MtpContactServiceDB$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/mtp/MtpContactServiceDB$1;-><init>(Landroid/mtp/MtpContactServiceDB;)V

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 374
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v18, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v10, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ContentValues;

    .line 377
    .local v22, "value":Landroid/content/ContentValues;
    const-string v2, "_index"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 378
    .local v15, "index":I
    const-string v2, "_index"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 379
    if-nez v16, :cond_d

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Landroid/mtp/MtpContactServiceDB;->getDataId(Landroid/content/ContentValues;I)I

    move-result v12

    .line 386
    .local v12, "dataId":I
    const-string v2, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 387
    if-ltz v12, :cond_8

    .line 388
    const-string/jumbo v2, "mimetype"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 390
    const-string v2, "data_sync4"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 395
    :cond_9
    const-string/jumbo v2, "mimetype"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 397
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 401
    :cond_a
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 407
    :cond_b
    if-gez v12, :cond_c

    .line 408
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 410
    :cond_c
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 416
    .end local v12    # "dataId":I
    :cond_d
    const-string/jumbo v2, "mimetype"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 417
    const-string v2, "data_sync4"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_e
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 424
    .end local v15    # "index":I
    .end local v22    # "value":Landroid/content/ContentValues;
    :cond_f
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    move-object/from16 v0, v18

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 427
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 428
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v11, v2, [Landroid/content/ContentValues;

    .line 429
    .local v11, "cvArray":[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpContactServiceDB;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 431
    .end local v11    # "cvArray":[Landroid/content/ContentValues;
    :cond_11
    const/4 v2, 0x0

    const/16 v5, 0x2001

    aput v5, v20, v2

    .line 432
    const/4 v2, 0x1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/mtp/MtpContactServiceDB;->encodeHandle(II)I

    move-result v5

    aput v5, v20, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_6
    return-object v20

    .line 436
    :catch_0
    move-exception v2

    .line 441
    :goto_7
    const/4 v2, 0x0

    const/16 v5, 0x2002

    aput v5, v20, v2

    goto :goto_6

    .line 434
    :catch_1
    move-exception v2

    goto :goto_7
.end method

.method protected processUpdatedData([Landroid/mtp/MtpServiceDatabase$ChangeItem;)V
    .locals 6
    .param p1, "changedItems"    # [Landroid/mtp/MtpServiceDatabase$ChangeItem;

    .prologue
    .line 782
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "caller_is_syncadapter"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 784
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "account_name=? AND account_type=? AND deleted!=0"

    sget-object v2, Landroid/mtp/MtpContactServiceDB;->ACCOUNT_SELECTION_ARGS:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Landroid/mtp/MtpContactServiceDB;->cleanDeletedItems(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 786
    const-string v3, "dirty"

    const-string v4, "_id = ?"

    const-string v5, "com.android.contacts"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpContactServiceDB;->updateDirtyData(Landroid/net/Uri;[Landroid/mtp/MtpServiceDatabase$ChangeItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method
