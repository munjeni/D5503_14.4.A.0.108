.class Landroid/mtp/MtpDeviceServiceConstants;
.super Ljava/lang/Object;
.source "MtpDeviceServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;,
        Landroid/mtp/MtpDeviceServiceConstants$CalendarConstants;,
        Landroid/mtp/MtpDeviceServiceConstants$ContactConstants;
    }
.end annotation


# static fields
.field private static final ABSTRACT_APPOINTMENT:Ljava/lang/String; = "BF70E114-3901-4449-BEE7-D9EA1493C309"

.field private static final ABSTRACT_CONTACT_FILE_FORMAT:Ljava/lang/String; = "BB810000-AE6C-4804-98BA-C57B46965FE7"

.field protected static final ALL_PROPERTISE_CODE:I = 0x0

.field public static final ANCHOR_CURRENT_ANCHOR:I = 0x39

.field public static final ANCHOR_KNOWLEAGE_OBJECT_ID:I = 0x37

.field public static final ANCHOR_LAST_SYNC_PROXY_ID:I = 0x38

.field public static final ANCHOR_PROPERTIES_COUNT:I = 0x2

.field public static final ANCHOR_PROPERTY_ANCHOR:I = 0x2345

.field public static final ANCHOR_PROPERTY_ANCHOR_RESULT_OBJECT:I = 0x2347

.field public static final ANCHOR_PROPERTY_STATE:I = 0x2346

.field public static final ANCHOR_PROVIDER_VERSION:I = 0x3a

.field public static final ANCHOR_REPLICAID:I = 0x36

.field public static final ANCHOR_VERSION_PROPS:I = 0x35

.field private static final CALENDAR_DEFAULT_NAME:Ljava/lang/String; = "Calendar"

.field private static final CALENDAR_DEFAULT_REFERENCES:I = 0xff

.field public static final CALENDAR_OBJECT_FORMAT_VALUE:I = 0xff05

.field public static final CALENDAR_OBJECT_FORMAT_VALUE_2:I = 0xff06

.field public static final CALENDAR_SERVICE_ID:I = 0x3f

.field public static final CALENDAR_STORAGE_ID_VALUE:I = 0x10003

.field private static final CONTACT_DEFAULT_NAME:Ljava/lang/String; = "Contacts"

.field public static final CONTACT_OBJECT_FORMAT_VALUE:I = 0xff04

.field public static final CONTACT_SERVICE_ID:I = 0x20

.field public static final CONTACT_STORAGE_ID_VALUE:I = 0x10002

.field public static final DEBUG:Z = false

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en_US"

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final FULL_ENUMVERSION_PROPS:I = 0x13

.field public static final HUMAN_READABLE_NAME:I = 0x22

.field public static final LANGUAGE_NAME:I = 0x24

.field public static final METHOD_GET_CHANGES_SINCE_ANCHOR:I = 0xfe01

.field public static final OBJECT_FORMAT:I = 0xdc02

.field public static final OBJECT_SIZE:I = 0xdc04

.field public static final PARENT_ID:I = 0xdc0b

.field private static final SERVICE_VERSION_PROPS_VALUE:Ljava/lang/String; = "0100000000000000000000000000000000000000000000000100000001DF0000919392478D9230FCCB33D9DD01000000"

.field public static final STORAGE_ID:I = 0xdc01

.field public static final SYNC_FORMAT:I = 0x21

.field public static final SYNC_OBJECT_REFERENCES:I = 0x42

.field protected static final sCalendarValues:[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

.field protected static final sContactValues:[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const v5, 0xffff

    const/16 v6, 0x4002

    .line 250
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    new-instance v1, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v2, 0x22

    const-string v3, "Contacts"

    invoke-direct {v1, v2, v5, v3}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v2, 0x24

    const-string v3, "en_US"

    invoke-direct {v1, v2, v5, v3}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v2, 0x21

    const v3, 0xfffe

    const-string v4, "BB810000-AE6C-4804-98BA-C57B46965FE7"

    invoke-direct {v1, v2, v3, v4}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-instance v2, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v3, 0x13

    const-string v4, "0100000000000000000000000000000000000000000000000100000001DF0000919392478D9230FCCB33D9DD01000000"

    invoke-direct {v2, v3, v6, v4}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v3, 0x35

    const-string v4, "0100000000000000000000000000000000000000000000000100000001DF0000919392478D9230FCCB33D9DD01000000"

    invoke-direct {v2, v3, v6, v4}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDeviceServiceConstants;->sContactValues:[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    .line 260
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    new-instance v1, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v2, 0x22

    const-string v3, "Calendar"

    invoke-direct {v1, v2, v5, v3}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v2, 0x24

    const-string v3, "en_US"

    invoke-direct {v1, v2, v5, v3}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v2, 0x21

    const v3, 0xfffe

    const-string v4, "BF70E114-3901-4449-BEE7-D9EA1493C309"

    invoke-direct {v1, v2, v3, v4}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-instance v2, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v3, 0x42

    const-wide/16 v4, 0xff

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IIJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v3, 0x13

    const-string v4, "0100000000000000000000000000000000000000000000000100000001DF0000919392478D9230FCCB33D9DD01000000"

    invoke-direct {v2, v3, v6, v4}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    const/16 v3, 0x35

    const-string v4, "0100000000000000000000000000000000000000000000000100000001DF0000919392478D9230FCCB33D9DD01000000"

    invoke-direct {v2, v3, v6, v4}, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDeviceServiceConstants;->sCalendarValues:[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
