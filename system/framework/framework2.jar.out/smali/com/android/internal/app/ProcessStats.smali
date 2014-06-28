.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/ProcessStats$PackageState;,
        Lcom/android/internal/app/ProcessStats$ServiceState;,
        Lcom/android/internal/app/ProcessStats$ProcessState;,
        Lcom/android/internal/app/ProcessStats$DurationsTable;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field static final LONGS_SIZE:I = 0x1000

.field private static final MAGIC:I = 0x50535453

.field public static final NON_CACHED_PROC_STATES:[I

.field static OFFSET_ARRAY_MASK:I = 0x0

.field static OFFSET_ARRAY_SHIFT:I = 0x0

.field static OFFSET_INDEX_MASK:I = 0x0

.field static OFFSET_INDEX_SHIFT:I = 0x0

.field static OFFSET_TYPE_MASK:I = 0x0

.field static OFFSET_TYPE_SHIFT:I = 0x0

.field private static final PARCEL_VERSION:I = 0xd

.field static final PROCESS_STATE_TO_STATE:[I

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field static final STATE_TAGS:[Ljava/lang/String;

.field public static final STATE_TOP:I = 0x1

.field static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field mAddLongTable:[I

.field mAddLongTableSize:I

.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field mNextLong:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$PackageState;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field mWebView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 59
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    .line 102
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 105
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 119
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    .line 136
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 143
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Persist"

    aput-object v1, v0, v3

    const-string v1, "Top    "

    aput-object v1, v0, v5

    const-string v1, "ImpFg  "

    aput-object v1, v0, v4

    const-string v1, "ImpBg  "

    aput-object v1, v0, v7

    const-string v1, "Backup "

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "HeavyWt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ServRst"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Receivr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Home   "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LastAct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CchAct "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CchCAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CchEmty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "off"

    aput-object v1, v0, v3

    const-string v1, "on"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 154
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "norm"

    aput-object v1, v0, v3

    const-string v1, "mod"

    aput-object v1, v0, v5

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "crit"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 158
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pers"

    aput-object v1, v0, v3

    const-string v1, "top"

    aput-object v1, v0, v5

    const-string v1, "impfg"

    aput-object v1, v0, v4

    const-string v1, "impbg"

    aput-object v1, v0, v7

    const-string v1, "backup"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "heavy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "service-rs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "receiver"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "home"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lastact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cch-activity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cch-aclient"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cch-empty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 164
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 168
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "n"

    aput-object v1, v0, v3

    const-string v1, "m"

    aput-object v1, v0, v5

    const-string v1, "l"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 172
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "p"

    aput-object v1, v0, v3

    const-string v1, "t"

    aput-object v1, v0, v5

    const-string v1, "f"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string v1, "u"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    .line 185
    sput v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    .line 186
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    .line 188
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    .line 189
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    .line 191
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    .line 192
    const v0, 0xffff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    .line 309
    new-instance v0, Lcom/android/internal/app/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1106
    new-array v0, v3, [I

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    return-void

    .line 102
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 105
    :array_1
    .array-data 4
        0x0
        0x4
    .end array-data

    .line 107
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 113
    :array_3
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 119
    :array_4
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 136
    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 199
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 201
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 199
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 201
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 226
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 228
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ProcessStats;
    .param p1, "x1"    # Landroid/os/Parcel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static binarySearch([III)I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 1646
    const/4 v1, 0x0

    .line 1647
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 1649
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1650
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 1651
    .local v2, "mid":I
    aget v4, p0, v2

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int/2addr v4, v5

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 1653
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 1654
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 1655
    :cond_0
    if-le v3, p2, :cond_2

    .line 1656
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 1661
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 3

    .prologue
    .line 1102
    const-string v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1104
    return-void
.end method

.method public static computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V
    .locals 27
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .prologue
    .line 486
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 487
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 489
    const/4 v10, 0x0

    .local v10, "is":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_8

    .line 490
    const/4 v8, 0x0

    .local v8, "im":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_7

    .line 491
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    .line 492
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v21, v0

    aget v21, v21, v10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0xe

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v9

    add-int v7, v21, v22

    .line 494
    .local v7, "bucket":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v23

    add-long v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v19

    .line 496
    .local v19, "samples":J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-lez v21, :cond_1

    .line 497
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v15

    .line 498
    .local v15, "minPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v3

    .line 499
    .local v3, "avgPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v11

    .line 500
    .local v11, "maxPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v17

    .line 501
    .local v17, "minUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v5

    .line 502
    .local v5, "avgUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v13

    .line 503
    .local v13, "maxUss":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_2

    .line 504
    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 505
    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 506
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 507
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 508
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 509
    move-object/from16 v0, p1

    iput-wide v13, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 528
    :cond_0
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v21, v0

    add-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 491
    .end local v3    # "avgPss":J
    .end local v5    # "avgUss":J
    .end local v11    # "maxPss":J
    .end local v13    # "maxUss":J
    .end local v15    # "minPss":J
    .end local v17    # "minUss":J
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 511
    .restart local v3    # "avgPss":J
    .restart local v5    # "avgUss":J
    .restart local v11    # "maxPss":J
    .restart local v13    # "maxUss":J
    .restart local v15    # "minPss":J
    .restart local v17    # "minUss":J
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v21, v0

    cmp-long v21, v15, v21

    if-gez v21, :cond_3

    .line 512
    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 514
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    long-to-double v0, v3

    move-wide/from16 v23, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    add-long v23, v23, v19

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 516
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v21, v0

    cmp-long v21, v11, v21

    if-lez v21, :cond_4

    .line 517
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 519
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v21, v0

    cmp-long v21, v17, v21

    if-gez v21, :cond_5

    .line 520
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 522
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    long-to-double v0, v5

    move-wide/from16 v23, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    add-long v23, v23, v19

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 524
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v21, v0

    cmp-long v21, v13, v21

    if-lez v21, :cond_0

    .line 525
    move-object/from16 v0, p1

    iput-wide v13, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_3

    .line 490
    .end local v3    # "avgPss":J
    .end local v5    # "avgUss":J
    .end local v7    # "bucket":I
    .end local v11    # "maxPss":J
    .end local v13    # "maxUss":J
    .end local v15    # "minPss":J
    .end local v17    # "minUss":J
    .end local v19    # "samples":J
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 489
    .end local v9    # "ip":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 533
    .end local v8    # "im":I
    :cond_8
    return-void
.end method

.method static computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J
    .locals 8
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .prologue
    .line 537
    const-wide/16 v4, 0x0

    .line 547
    .local v4, "totalTime":J
    const/4 v3, 0x0

    .local v3, "is":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 548
    const/4 v1, 0x0

    .local v1, "im":I
    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 549
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_2
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 550
    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v2

    add-int v0, v6, v7

    .line 552
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 548
    .end local v0    # "bucket":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 547
    .end local v2    # "ip":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    .end local v1    # "im":I
    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    .line 557
    return-wide v4
.end method

.method static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 434
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_3

    .line 435
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_2

    .line 436
    add-int v2, v0, v1

    .line 437
    .local v2, "state":I
    aget-wide v3, p2, v2

    .line 438
    .local v3, "time":J
    if-ne p3, v2, :cond_0

    .line 439
    sub-long v5, p6, p4

    add-long/2addr v3, v5

    .line 441
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 442
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 435
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    .end local v2    # "state":I
    .end local v3    # "time":J
    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 446
    .end local v0    # "imem":I
    :cond_3
    return-void
.end method

.method static dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 22
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 946
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_0

    .line 947
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    move-object/from16 v20, v0

    aget v12, v20, v7

    .line 948
    .local v12, "off":I
    sget v20, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v20, v12, v20

    sget v21, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v13, v20, v21

    .line 949
    .local v13, "type":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v5

    .line 950
    .local v5, "count":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    .line 951
    .local v10, "min":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    .line 952
    .local v3, "avg":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v8

    .line 953
    .local v8, "max":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v18

    .line 954
    .local v18, "umin":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v14

    .line 955
    .local v14, "uavg":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v16

    .line 956
    .local v16, "umax":J
    const/16 v20, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 957
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 958
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 959
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 960
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 961
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 962
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 963
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 964
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 965
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 966
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 967
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 968
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 969
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 970
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 971
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 946
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 973
    .end local v3    # "avg":J
    .end local v5    # "count":J
    .end local v8    # "max":J
    .end local v10    # "min":J
    .end local v12    # "off":I
    .end local v13    # "type":I
    .end local v14    # "uavg":J
    .end local v16    # "umax":J
    .end local v18    # "umin":J
    :cond_0
    return-void
.end method

.method static dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "now"    # J

    .prologue
    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v1, v6, :cond_1

    .line 931
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v2, v6, v1

    .line 932
    .local v2, "off":I
    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v6, v2, v6

    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v5, v6, v7

    .line 933
    .local v5, "type":I
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    .line 934
    .local v3, "time":J
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v6, v5, :cond_0

    .line 935
    const/4 v0, 0x1

    .line 936
    iget-wide v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v3, v6

    .line 938
    :cond_0
    invoke-static {p0, v5, v3, v4}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 930
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    .end local v2    # "off":I
    .end local v3    # "time":J
    .end local v5    # "type":I
    :cond_1
    if-nez v0, :cond_2

    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 941
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iget-wide v7, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v7, p2, v7

    invoke-static {p0, v6, v7, v8}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 943
    :cond_2
    return-void
.end method

.method private dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p4, "dumpAll"    # Z

    .prologue
    .line 1761
    if-eqz p4, :cond_1

    .line 1762
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1764
    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1765
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1770
    :cond_0
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq p3, v0, :cond_1

    .line 1771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1772
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1773
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    :cond_1
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-eqz v0, :cond_2

    .line 1777
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1779
    :cond_2
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v0, :cond_3

    .line 1780
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1782
    :cond_3
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_4

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_5

    .line 1783
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1784
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1787
    :cond_5
    return-void
.end method

.method static dumpProcessList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJ)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJ)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 746
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 747
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    iget-object v0, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 751
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    iget v0, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 753
    const-string v0, " entries)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 754
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 755
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 756
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 757
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 745
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 760
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .prologue
    .line 875
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const-string v0, "process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    const-string v4, "\t"

    if-eqz p2, :cond_0

    move-object v3, p3

    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v2, p5

    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    :goto_2
    invoke-static {p0, v4, v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 881
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 882
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_3

    .line 883
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 884
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    .line 887
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V

    .line 889
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 882
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 878
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "i":I
    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 891
    .restart local v10    # "i":I
    :cond_3
    return-void
.end method

.method static dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V
    .locals 16
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    .prologue
    .line 610
    const/4 v9, 0x0

    .line 611
    .local v9, "printedHeader":Z
    const/4 v11, -0x1

    .line 612
    .local v11, "printedScreen":I
    const/4 v7, 0x0

    .local v7, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v7, v12, :cond_8

    .line 613
    const/4 v10, -0x1

    .line 614
    .local v10, "printedMem":I
    const/4 v4, 0x0

    .local v4, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v12, v0

    if-ge v4, v12, :cond_7

    .line 615
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v12, v0

    if-ge v6, v12, :cond_6

    .line 616
    aget v8, p3, v7

    .line 617
    .local v8, "iscreen":I
    aget v5, p4, v4

    .line 618
    .local v5, "imem":I
    add-int v12, v8, v5

    mul-int/lit8 v12, v12, 0xe

    aget v13, p5, v6

    add-int v1, v12, v13

    .line 619
    .local v1, "bucket":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v2

    .line 620
    .local v2, "count":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_3

    .line 621
    if-nez v9, :cond_0

    .line 622
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const-string v12, "PSS/USS ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 625
    const-string v12, " entries):"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const/4 v9, 0x1

    .line 628
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    const-string v12, "  "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    .line 631
    if-eq v11, v8, :cond_4

    move v12, v8

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 633
    move v11, v8

    .line 635
    :cond_1
    move-object/from16 v0, p4

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    .line 636
    if-eq v10, v5, :cond_5

    move v12, v5

    :goto_4
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 637
    move v10, v5

    .line 639
    :cond_2
    sget-object v12, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v13, p5, v6

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 641
    const-string v12, " samples "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 643
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 645
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 647
    const-string v12, " / "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 649
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 651
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 615
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 631
    :cond_4
    const/4 v12, -0x1

    goto/16 :goto_3

    .line 636
    :cond_5
    const/4 v12, -0x1

    goto/16 :goto_4

    .line 614
    .end local v1    # "bucket":I
    .end local v2    # "count":J
    .end local v5    # "imem":I
    .end local v8    # "iscreen":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 612
    .end local v6    # "ip":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 658
    .end local v4    # "im":I
    .end local v10    # "printedMem":I
    :cond_8
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-eqz v12, :cond_9

    .line 659
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed for excessive wake locks: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    :cond_9
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-eqz v12, :cond_a

    .line 663
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed for excessive CPU use: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :cond_a
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-eqz v12, :cond_b

    .line 667
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed from cached state: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times from pss "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v12, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v12, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 673
    :cond_b
    return-void
.end method

.method static dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .prologue
    .line 562
    const-wide/16 v14, 0x0

    .line 563
    .local v14, "totalTime":J
    const/4 v10, -0x1

    .line 564
    .local v10, "printedScreen":I
    const/4 v7, 0x0

    .local v7, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    .line 565
    const/4 v9, -0x1

    .line 566
    .local v9, "printedMem":I
    const/4 v4, 0x0

    .local v4, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_7

    .line 567
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_6

    .line 568
    aget v8, p3, v7

    .line 569
    .local v8, "iscreen":I
    aget v5, p4, v4

    .line 570
    .local v5, "imem":I
    add-int v16, v8, v5

    mul-int/lit8 v16, v16, 0xe

    aget v17, p5, v6

    add-int v3, v16, v17

    .line 571
    .local v3, "bucket":I
    move-object/from16 v0, p2

    move-wide/from16 v1, p6

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v12

    .line 572
    .local v12, "time":J
    const-string v11, ""

    .line 573
    .local v11, "running":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 574
    const-string v11, " (running)"

    .line 576
    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-eqz v16, :cond_3

    .line 577
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 579
    if-eq v10, v8, :cond_4

    move/from16 v16, v8

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 581
    move v10, v8

    .line 583
    :cond_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 584
    if-eq v9, v5, :cond_5

    move/from16 v16, v5

    :goto_4
    const/16 v17, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 585
    move v9, v5

    .line 587
    :cond_2
    sget-object v16, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v17, p5, v6

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v16, ": "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    add-long/2addr v14, v12

    .line 567
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 579
    :cond_4
    const/16 v16, -0x1

    goto :goto_3

    .line 584
    :cond_5
    const/16 v16, -0x1

    goto :goto_4

    .line 566
    .end local v3    # "bucket":I
    .end local v5    # "imem":I
    .end local v8    # "iscreen":I
    .end local v11    # "running":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 564
    .end local v6    # "ip":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 594
    .end local v4    # "im":I
    .end local v9    # "printedMem":I
    :cond_8
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_b

    .line 595
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 597
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 599
    :cond_9
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 600
    const/16 v16, -0x1

    const/16 v17, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 602
    :cond_a
    const-string v16, "TOTAL  : "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 606
    :cond_b
    return-void
.end method

.method static dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V
    .locals 26
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .prologue
    .line 710
    if-eqz p2, :cond_0

    move-object/from16 v0, p3

    array-length v8, v0

    .line 711
    .local v8, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p5

    array-length v4, v0

    .line 712
    .local v4, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    array-length v6, v0

    .line 713
    .local v6, "NPS":I
    :goto_2
    const/4 v15, 0x0

    .local v15, "iss":I
    :goto_3
    if-ge v15, v8, :cond_11

    .line 714
    const/4 v11, 0x0

    .local v11, "ims":I
    :goto_4
    if-ge v11, v4, :cond_10

    .line 715
    const/4 v13, 0x0

    .local v13, "ips":I
    :goto_5
    if-ge v13, v6, :cond_f

    .line 716
    if-eqz p2, :cond_3

    aget v23, p3, v15

    .line 717
    .local v23, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    aget v21, p5, v11

    .line 718
    .local v21, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    aget v22, p7, v13

    .line 719
    .local v22, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v7, 0x1

    .line 720
    .local v7, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v3, 0x1

    .line 721
    .local v3, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    const/4 v5, 0x1

    .line 722
    .local v5, "NPA":I
    :goto_b
    const-wide/16 v16, 0x0

    .line 723
    .local v16, "totalTime":J
    const/4 v14, 0x0

    .local v14, "isa":I
    :goto_c
    if-ge v14, v7, :cond_e

    .line 724
    const/4 v10, 0x0

    .local v10, "ima":I
    :goto_d
    if-ge v10, v3, :cond_d

    .line 725
    const/4 v12, 0x0

    .local v12, "ipa":I
    :goto_e
    if-ge v12, v5, :cond_c

    .line 726
    if-eqz p2, :cond_9

    const/16 v20, 0x0

    .line 727
    .local v20, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v18, 0x0

    .line 728
    .local v18, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v19, 0x0

    .line 729
    .local v19, "vaproc":I
    :goto_11
    add-int v24, v23, v20

    add-int v24, v24, v21

    add-int v24, v24, v18

    mul-int/lit8 v24, v24, 0xe

    add-int v24, v24, v22

    add-int v9, v24, v19

    .line 731
    .local v9, "bucket":I
    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v16, v16, v24

    .line 725
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 710
    .end local v3    # "NMA":I
    .end local v4    # "NMS":I
    .end local v5    # "NPA":I
    .end local v6    # "NPS":I
    .end local v7    # "NSA":I
    .end local v8    # "NSS":I
    .end local v9    # "bucket":I
    .end local v10    # "ima":I
    .end local v11    # "ims":I
    .end local v12    # "ipa":I
    .end local v13    # "ips":I
    .end local v14    # "isa":I
    .end local v15    # "iss":I
    .end local v16    # "totalTime":J
    .end local v18    # "vamem":I
    .end local v19    # "vaproc":I
    .end local v20    # "vascreen":I
    .end local v21    # "vsmem":I
    .end local v22    # "vsproc":I
    .end local v23    # "vsscreen":I
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 711
    .restart local v8    # "NSS":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 712
    .restart local v4    # "NMS":I
    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    .line 716
    .restart local v6    # "NPS":I
    .restart local v11    # "ims":I
    .restart local v13    # "ips":I
    .restart local v15    # "iss":I
    :cond_3
    const/16 v23, 0x0

    goto :goto_6

    .line 717
    .restart local v23    # "vsscreen":I
    :cond_4
    const/16 v21, 0x0

    goto :goto_7

    .line 718
    .restart local v21    # "vsmem":I
    :cond_5
    const/16 v22, 0x0

    goto :goto_8

    .line 719
    .restart local v22    # "vsproc":I
    :cond_6
    move-object/from16 v0, p3

    array-length v7, v0

    goto :goto_9

    .line 720
    .restart local v7    # "NSA":I
    :cond_7
    move-object/from16 v0, p5

    array-length v3, v0

    goto :goto_a

    .line 721
    .restart local v3    # "NMA":I
    :cond_8
    move-object/from16 v0, p7

    array-length v5, v0

    goto :goto_b

    .line 726
    .restart local v5    # "NPA":I
    .restart local v10    # "ima":I
    .restart local v12    # "ipa":I
    .restart local v14    # "isa":I
    .restart local v16    # "totalTime":J
    :cond_9
    aget v20, p3, v14

    goto :goto_f

    .line 727
    .restart local v20    # "vascreen":I
    :cond_a
    aget v18, p5, v10

    goto :goto_10

    .line 728
    .restart local v18    # "vamem":I
    :cond_b
    aget v19, p7, v12

    goto :goto_11

    .line 724
    .end local v18    # "vamem":I
    .end local v20    # "vascreen":I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 723
    .end local v12    # "ipa":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 735
    .end local v10    # "ima":I
    :cond_e
    const-string v24, "\t"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 715
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 714
    .end local v3    # "NMA":I
    .end local v5    # "NPA":I
    .end local v7    # "NSA":I
    .end local v14    # "isa":I
    .end local v16    # "totalTime":J
    .end local v21    # "vsmem":I
    .end local v22    # "vsproc":I
    .end local v23    # "vsscreen":I
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 713
    .end local v13    # "ips":I
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 740
    .end local v11    # "ims":I
    :cond_11
    return-void
.end method

.method static dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .prologue
    .line 765
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    invoke-direct {v3, p4, p5, p6}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 767
    .local v3, "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide v0, p7

    invoke-static {p1, v3, v0, v1}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 768
    iget-wide v4, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 769
    :cond_0
    if-eqz p2, :cond_1

    .line 770
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    :cond_1
    if-eqz p3, :cond_2

    .line 773
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    :cond_2
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 776
    if-eqz p2, :cond_3

    .line 777
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 780
    :cond_3
    return-void
.end method

.method static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .param p8, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_0

    .line 786
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 787
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    const-string v0, "* "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 792
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    const-string v3, "         TOTAL: "

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 795
    const-string v3, "    Persistent: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 797
    const-string v3, "           Top: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 799
    const-string v3, "        Imp Fg: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x2

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 801
    const-string v3, "        Imp Bg: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x3

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 803
    const-string v3, "        Backup: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x4

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 805
    const-string v3, "     Heavy Wgt: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x5

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 807
    const-string v3, "       Service: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x6

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 809
    const-string v3, "    Service Rs: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x7

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 811
    const-string v3, "      Receiver: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x8

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 813
    const-string v3, "        (Home): "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x9

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 815
    const-string v3, "    (Last Act): "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0xa

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 817
    const-string v3, "      (Cached): "

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 785
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 821
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    return-void

    .line 817
    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method static dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "svc"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p6, "serviceType"    # I
    .param p7, "opCount"    # I
    .param p8, "curState"    # I
    .param p9, "curStartTime"    # J
    .param p11, "now"    # J

    .prologue
    .line 451
    if-gtz p7, :cond_0

    .line 483
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 459
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "didCurState":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v2, v8, :cond_3

    .line 465
    iget-object v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v4, v8, v2

    .line 466
    .local v4, "off":I
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v8, v4, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v7, v8, v9

    .line 467
    .local v7, "type":I
    div-int/lit8 v3, v7, 0x4

    .line 468
    .local v3, "memFactor":I
    rem-int/lit8 v7, v7, 0x4

    .line 469
    move/from16 v0, p6

    if-eq v7, v0, :cond_1

    .line 464
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 472
    :cond_1
    iget-object v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v5

    .line 473
    .local v5, "time":J
    move/from16 v0, p8

    if-ne v0, v3, :cond_2

    .line 474
    const/4 v1, 0x1

    .line 475
    sub-long v8, p11, p9

    add-long/2addr v5, v8

    .line 477
    :cond_2
    invoke-static {p0, v3, v5, v6}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    goto :goto_2

    .line 479
    .end local v3    # "memFactor":I
    .end local v4    # "off":I
    .end local v5    # "time":J
    .end local v7    # "type":I
    :cond_3
    if-nez v1, :cond_4

    const/4 v8, -0x1

    move/from16 v0, p8

    if-eq v0, v8, :cond_4

    .line 480
    sub-long v8, p11, p9

    move/from16 v0, p8

    invoke-static {p0, v0, v8, v9}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 482
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public static dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    .prologue
    .line 1984
    const-wide/16 v16, 0x0

    .line 1985
    .local v16, "totalTime":J
    const/4 v12, -0x1

    .line 1986
    .local v12, "printedScreen":I
    const/4 v10, 0x0

    .local v10, "iscreen":I
    :goto_0
    const/16 v1, 0x8

    if-ge v10, v1, :cond_6

    .line 1987
    const/4 v11, -0x1

    .line 1988
    .local v11, "printedMem":I
    const/4 v9, 0x0

    .local v9, "imem":I
    :goto_1
    const/4 v1, 0x4

    if-ge v9, v1, :cond_5

    .line 1989
    add-int v6, v9, v10

    .local v6, "state":I
    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v7, p7

    .line 1990
    # invokes: Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/ProcessStats$ServiceState;->access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J

    move-result-wide v14

    .line 1992
    .local v14, "time":J
    const-string v13, ""

    .line 1993
    .local v13, "running":Ljava/lang/String;
    move/from16 v0, p4

    if-ne v0, v6, :cond_0

    if-eqz p0, :cond_0

    .line 1994
    const-string v13, " (running)"

    .line 1996
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-eqz v1, :cond_2

    .line 1997
    if-eqz p0, :cond_1

    .line 1998
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1999
    if-eq v12, v10, :cond_3

    move v1, v10

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 2001
    move v12, v10

    .line 2002
    if-eq v11, v9, :cond_4

    move v1, v9

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 2003
    move v11, v9

    .line 2004
    const-string v1, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2005
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    :cond_1
    add-long v16, v16, v14

    .line 1988
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1999
    :cond_3
    const/4 v1, -0x1

    goto :goto_2

    .line 2002
    :cond_4
    const/4 v1, -0x1

    goto :goto_3

    .line 1986
    .end local v6    # "state":I
    .end local v13    # "running":Ljava/lang/String;
    .end local v14    # "time":J
    :cond_5
    add-int/lit8 v10, v10, 0x4

    goto :goto_0

    .line 2011
    .end local v9    # "imem":I
    .end local v11    # "printedMem":I
    :cond_6
    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    .line 2012
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    const-string v1, "    TOTAL: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    invoke-static/range {v16 .. v18}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 2017
    :cond_7
    return-wide v16
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 394
    const-wide/16 v8, 0x0

    .line 395
    .local v8, "totalTime":J
    const/4 v3, -0x1

    .line 396
    .local v3, "printedScreen":I
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_0
    const/16 v10, 0x8

    if-ge v1, v10, :cond_6

    .line 397
    const/4 v2, -0x1

    .line 398
    .local v2, "printedMem":I
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_1
    const/4 v10, 0x4

    if-ge v0, v10, :cond_5

    .line 399
    add-int v5, v0, v1

    .line 400
    .local v5, "state":I
    aget-wide v6, p2, v5

    .line 401
    .local v6, "time":J
    const-string v4, ""

    .line 402
    .local v4, "running":Ljava/lang/String;
    if-ne p3, v5, :cond_0

    .line 403
    sub-long v10, p6, p4

    add-long/2addr v6, v10

    .line 404
    if-eqz p0, :cond_0

    .line 405
    const-string v4, " (running)"

    .line 408
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_2

    .line 409
    if-eqz p0, :cond_1

    .line 410
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    if-eq v3, v1, :cond_3

    move v10, v1

    :goto_2
    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 413
    move v3, v1

    .line 414
    if-eq v2, v0, :cond_4

    move v10, v0

    :goto_3
    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 415
    move v2, v0

    .line 416
    const-string v10, ": "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    :cond_1
    add-long/2addr v8, v6

    .line 398
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 411
    :cond_3
    const/4 v10, -0x1

    goto :goto_2

    .line 414
    :cond_4
    const/4 v10, -0x1

    goto :goto_3

    .line 396
    .end local v4    # "running":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "time":J
    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 423
    .end local v0    # "imem":I
    .end local v2    # "printedMem":I
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_7

    if-eqz p0, :cond_7

    .line 424
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    const-string v10, "    TOTAL: "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 427
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 429
    :cond_7
    return-wide v8
.end method

.method static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    .prologue
    const/4 v7, 0x1

    .line 677
    if-eqz p2, :cond_5

    array-length v2, p2

    .line 678
    .local v2, "NS":I
    :goto_0
    if-eqz p3, :cond_6

    array-length v0, p3

    .line 679
    .local v0, "NM":I
    :goto_1
    if-eqz p4, :cond_7

    array-length v1, p4

    .line 680
    .local v1, "NP":I
    :goto_2
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_3
    if-ge v5, v2, :cond_a

    .line 681
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_4
    if-ge v3, v0, :cond_9

    .line 682
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_5
    if-ge v4, v1, :cond_8

    .line 683
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    const/4 v6, 0x0

    .line 685
    .local v6, "printed":Z
    if-eqz p2, :cond_0

    array-length v8, p2

    if-le v8, v7, :cond_0

    .line 686
    aget v8, p2, v5

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 687
    const/4 v6, 0x1

    .line 689
    :cond_0
    if-eqz p3, :cond_2

    array-length v8, p3

    if-le v8, v7, :cond_2

    .line 690
    if-eqz v6, :cond_1

    .line 691
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    :cond_1
    aget v8, p3, v3

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 694
    const/4 v6, 0x1

    .line 696
    :cond_2
    if-eqz p4, :cond_4

    array-length v8, p4

    if-le v8, v7, :cond_4

    .line 697
    if-eqz v6, :cond_3

    .line 698
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    :cond_3
    sget-object v8, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v9, p4, v4

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 682
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v0    # "NM":I
    .end local v1    # "NP":I
    .end local v2    # "NS":I
    .end local v3    # "im":I
    .end local v4    # "ip":I
    .end local v5    # "is":I
    .end local v6    # "printed":Z
    :cond_5
    move v2, v7

    .line 677
    goto :goto_0

    .restart local v2    # "NS":I
    :cond_6
    move v0, v7

    .line 678
    goto :goto_1

    .restart local v0    # "NM":I
    :cond_7
    move v1, v7

    .line 679
    goto :goto_2

    .line 681
    .restart local v1    # "NP":I
    .restart local v3    # "im":I
    .restart local v4    # "ip":I
    .restart local v5    # "is":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 680
    .end local v4    # "ip":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 705
    .end local v3    # "im":I
    :cond_a
    return-void
.end method

.method static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 910
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 911
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 912
    return-void
.end method

.method static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 922
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 923
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 924
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 925
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 926
    return-void
.end method

.method static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    .prologue
    .line 894
    div-int v0, p2, p3

    .line 895
    .local v0, "index":I
    if-ltz v0, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 896
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 900
    :goto_0
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1

    .line 898
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method

.method static printLongOffset(I)Ljava/lang/String;
    .locals 3
    .param p0, "off"    # I

    .prologue
    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1629
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1630
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1631
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1632
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 376
    const-string v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 356
    :pswitch_0
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    if-eqz p2, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 360
    :pswitch_1
    const-string v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 364
    :pswitch_2
    const-string v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 368
    :pswitch_3
    const-string v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 372
    :pswitch_4
    const-string v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 383
    if-ltz p1, :cond_0

    .line 384
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 385
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printPercent(Ljava/io/PrintWriter;D)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 824
    const-wide/high16 v0, 0x4059000000000000L

    mul-double/2addr p1, v0

    .line 825
    const-wide/high16 v0, 0x3ff0000000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 826
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    :goto_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    return-void

    .line 827
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 828
    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_1
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 904
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 905
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 906
    sget-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 907
    return-void
.end method

.method static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 915
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 916
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 917
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 918
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 919
    return-void
.end method

.method private static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 321
    packed-switch p1, :pswitch_data_0

    .line 332
    :pswitch_0
    const-string v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 323
    :pswitch_1
    const-string v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_3
    const-string v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_0

    .line 348
    :pswitch_0
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    :goto_0
    :pswitch_1
    return-void

    .line 342
    :pswitch_2
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :pswitch_3
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "number"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x44800000

    const/high16 v4, 0x44610000

    .line 836
    long-to-float v0, p1

    .line 837
    .local v0, "result":F
    const-string v1, ""

    .line 838
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    .line 839
    const-string v1, "KB"

    .line 840
    div-float/2addr v0, v5

    .line 842
    :cond_0
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 843
    const-string v1, "MB"

    .line 844
    div-float/2addr v0, v5

    .line 846
    :cond_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    .line 847
    const-string v1, "GB"

    .line 848
    div-float/2addr v0, v5

    .line 850
    :cond_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 851
    const-string v1, "TB"

    .line 852
    div-float/2addr v0, v5

    .line 854
    :cond_3
    cmpl-float v3, v0, v4

    if-lez v3, :cond_4

    .line 855
    const-string v1, "PB"

    .line 856
    div-float/2addr v0, v5

    .line 859
    :cond_4
    const/high16 v3, 0x3f800000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    .line 860
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    return-void

    .line 861
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v3, 0x41200000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 862
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 863
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x42c80000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7

    .line 864
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 866
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 1325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "got":I
    if-eq v0, p2, :cond_0

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1327
    const/4 v1, 0x0

    .line 1329
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 1187
    const/16 v2, 0x9

    if-gt p2, v2, :cond_0

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1200
    :goto_0
    return-object v2

    .line 1190
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1191
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1192
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1194
    :cond_1
    xor-int/lit8 v0, v0, -0x1

    .line 1195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "name":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 1197
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1199
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1200
    goto :goto_0
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .prologue
    .line 1150
    const/16 v4, 0xa

    if-gt p2, v4, :cond_1

    .line 1151
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 1172
    :cond_0
    return-void

    .line 1154
    :cond_1
    array-length v0, p3

    .line 1155
    .local v0, "alen":I
    if-le p4, v0, :cond_2

    .line 1156
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1159
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_4

    .line 1160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1161
    .local v3, "val":I
    if-ltz v3, :cond_3

    .line 1162
    int-to-long v4, v3

    aput-wide v4, p3, v2

    .line 1159
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1164
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1165
    .local v1, "bottom":I
    xor-int/lit8 v4, v3, -0x1

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_1

    .line 1168
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_4
    :goto_2
    if-ge v2, v0, :cond_0

    .line 1169
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 1170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1333
    const/4 v4, 0x0

    .line 1334
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1335
    .local v2, "initialAvail":I
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    :goto_0
    new-array v1, v5, [B

    .line 1337
    .local v1, "data":[B
    :cond_0
    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1340
    .local v0, "amt":I
    if-gez v0, :cond_2

    .line 1343
    aput v4, p1, v6

    .line 1344
    return-object v1

    .line 1335
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_1
    const/16 v5, 0x4000

    goto :goto_0

    .line 1346
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_2
    add-int/2addr v4, v0

    .line 1347
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 1348
    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    .line 1351
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1352
    move-object v1, v3

    goto :goto_1
.end method

.method private readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1110
    .local v1, "size":I
    if-gez v1, :cond_1

    .line 1111
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    .line 1128
    :cond_0
    :goto_0
    return-object v2

    .line 1114
    :cond_1
    if-nez v1, :cond_2

    move-object v2, v3

    .line 1115
    goto :goto_0

    .line 1117
    :cond_2
    new-array v2, v1, [I

    .line 1118
    .local v2, "table":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 1122
    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ProcessStats;->validateLongOffset(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1123
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring existing stats; bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " table entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-static {v6}, Lcom/android/internal/app/ProcessStats;->printLongOffset(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1125
    goto :goto_0

    .line 1118
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private resetCommon()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1069
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1071
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1074
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 1075
    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1077
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 1079
    return-void
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1175
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1176
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1181
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 1132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 1133
    aget-wide v3, p2, v1

    .line 1134
    .local v3, "val":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 1135
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-wide/16 v3, 0x0

    .line 1138
    :cond_0
    cmp-long v5, v3, v8

    if-gtz v5, :cond_1

    .line 1139
    long-to-int v5, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    :cond_1
    const/16 v5, 0x20

    shr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    xor-int/lit8 v2, v5, -0x1

    .line 1142
    .local v2, "top":I
    const-wide/32 v5, 0xfffffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    .line 1143
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1147
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v3    # "val":J
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/ProcessStats;)V
    .locals 33
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats;

    .prologue
    .line 236
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 237
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_5

    .line 238
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 239
    .local v18, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 240
    .local v25, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/4 v11, 0x0

    .local v11, "iu":I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_4

    .line 241
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 242
    .local v24, "uid":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 243
    .local v15, "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 244
    .local v5, "NPROCS":I
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 245
    .local v6, "NSRVS":I
    const/4 v9, 0x0

    .local v9, "iproc":I
    :goto_2
    if-ge v9, v5, :cond_2

    .line 246
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 247
    .local v14, "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v14, :cond_1

    .line 250
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v21

    .line 252
    .local v21, "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 254
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 256
    .local v12, "now":J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v19

    .line 257
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v21

    .line 258
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v12    # "now":J
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 245
    .end local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 263
    .end local v14    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/4 v10, 0x0

    .local v10, "isvc":I
    :goto_3
    if-ge v10, v6, :cond_3

    .line 264
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 267
    .local v16, "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v23

    .line 269
    .local v23, "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->add(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 263
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 240
    .end local v16    # "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v23    # "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 237
    .end local v5    # "NPROCS":I
    .end local v6    # "NSRVS":I
    .end local v9    # "iproc":I
    .end local v10    # "isvc":I
    .end local v15    # "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v24    # "uid":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 274
    .end local v11    # "iu":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v25    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v20

    .line 275
    .local v20, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/4 v8, 0x0

    :goto_4
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_8

    .line 276
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/SparseArray;

    .line 277
    .local v26, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v11, 0x0

    .restart local v11    # "iu":I
    :goto_5
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_7

    .line 278
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 279
    .restart local v24    # "uid":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 280
    .restart local v14    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 282
    .restart local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v21, :cond_6

    .line 284
    new-instance v21, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move/from16 v3, v24

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    .restart local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v22

    .line 287
    .local v22, "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 288
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v22    # "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 277
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 275
    .end local v14    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v21    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v24    # "uid":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 295
    .end local v11    # "iu":I
    .end local v26    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_8
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    const/16 v27, 0x8

    move/from16 v0, v27

    if-ge v7, v0, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v27, v0

    aget-wide v28, v27, v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    add-long v28, v28, v30

    aput-wide v28, v27, v7

    .line 295
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 302
    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-gez v27, :cond_a

    .line 303
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 304
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 306
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v31, v0

    sub-long v29, v29, v31

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 307
    return-void
.end method

.method addLongData(III)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "num"    # I

    .prologue
    const/4 v4, 0x0

    .line 1580
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    array-length v3, v5

    .line 1581
    .local v3, "tableLen":I
    :goto_0
    iget v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    if-lt v5, v3, :cond_1

    .line 1582
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 1583
    .local v0, "newSize":I
    new-array v1, v0, [I

    .line 1584
    .local v1, "newTable":[I
    if-lez v3, :cond_0

    .line 1585
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    invoke-static {v5, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1587
    :cond_0
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 1589
    .end local v0    # "newSize":I
    .end local v1    # "newTable":[I
    :cond_1
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    sub-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 1590
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    add-int/lit8 v6, p1, 0x1

    iget v7, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, p1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1593
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ProcessStats;->allocLongData(I)I

    move-result v2

    .line 1594
    .local v2, "off":I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v5, p2, v2

    aput v5, v4, p1

    .line 1595
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 1596
    return v2

    .end local v2    # "off":I
    .end local v3    # "tableLen":I
    :cond_3
    move v3, v4

    .line 1580
    goto :goto_0
.end method

.method allocLongData(I)I
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 1600
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1601
    .local v2, "whichLongs":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1602
    .local v0, "longs":[J
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    array-length v4, v0

    if-le v3, v4, :cond_0

    .line 1603
    const/16 v3, 0x1000

    new-array v0, v3, [J

    .line 1604
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    add-int/lit8 v2, v2, 0x1

    .line 1606
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1608
    :cond_0
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shl-int v3, v2, v3

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shl-int/2addr v4, v5

    or-int v1, v3, v4

    .line 1609
    .local v1, "off":I
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1610
    return v1
.end method

.method collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    .prologue
    .line 2149
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2150
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2151
    .local v0, "ITEMLEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2152
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_1

    .line 2153
    const-string p2, ""

    .line 2160
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    .end local p2    # "itemName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 2154
    .restart local v0    # "ITEMLEN":I
    .restart local v1    # "PKGLEN":I
    .restart local p2    # "itemName":Ljava/lang/String;
    :cond_1
    if-lt v0, v1, :cond_0

    .line 2155
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 2156
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 20
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2103
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 2104
    .local v9, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    .line 2105
    .local v15, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_0
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v11, v3, :cond_7

    .line 2106
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2107
    .local v17, "pkgName":Ljava/lang/String;
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 2108
    .local v18, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/4 v13, 0x0

    .local v13, "iu":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_6

    .line 2109
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2110
    .local v19, "state":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 2111
    .local v8, "NPROCS":I
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 2112
    .local v16, "pkgMatch":Z
    :goto_2
    const/4 v12, 0x0

    .local v12, "iproc":I
    :goto_3
    if-ge v12, v8, :cond_5

    .line 2113
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2114
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v16, :cond_3

    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2112
    :cond_1
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2111
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v12    # "iproc":I
    .end local v16    # "pkgMatch":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 2117
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v12    # "iproc":I
    .restart local v16    # "pkgMatch":Z
    :cond_3
    if-eqz p8, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2120
    :cond_4
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2108
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2105
    .end local v8    # "NPROCS":I
    .end local v12    # "iproc":I
    .end local v16    # "pkgMatch":Z
    .end local v19    # "state":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2124
    .end local v13    # "iu":I
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2125
    .local v14, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v10, v3, :cond_9

    .line 2126
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    .line 2127
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    .line 2128
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 2130
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    .line 2125
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2134
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_9
    new-instance v3, Lcom/android/internal/app/ProcessStats$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ProcessStats$2;-><init>(Lcom/android/internal/app/ProcessStats;)V

    invoke-static {v14, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2145
    return-object v14
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 38
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 2164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2165
    .local v13, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    .line 2166
    .local v30, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const-string v2, "vers,3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    const-string v2, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2169
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2170
    const/16 v29, 0x1

    .line 2171
    .local v29, "partial":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 2172
    const-string v2, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    const/16 v29, 0x0

    .line 2175
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 2176
    const-string v2, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    const/16 v29, 0x0

    .line 2179
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2180
    const-string v2, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    const/16 v29, 0x0

    .line 2183
    :cond_2
    if-eqz v29, :cond_3

    .line 2184
    const-string v2, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2186
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2187
    const-string v2, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2188
    const/16 v25, 0x0

    .local v25, "ip":I
    :goto_1
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_c

    .line 2189
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2190
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2188
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 2169
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v25    # "ip":I
    .end local v29    # "partial":Z
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto/16 :goto_0

    .line 2193
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v25    # "ip":I
    .restart local v29    # "partial":Z
    :cond_6
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/util/SparseArray;

    .line 2194
    .local v36, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v28, 0x0

    .local v28, "iu":I
    :goto_2
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_4

    .line 2195
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2196
    .local v5, "uid":I
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2197
    .local v31, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v23

    .line 2198
    .local v23, "NPROCS":I
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v24

    .line 2199
    .local v24, "NSRVS":I
    const/16 v26, 0x0

    .local v26, "iproc":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 2200
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2201
    .local v32, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-string v2, "pkgproc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2205
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2208
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2209
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v2, :cond_7

    .line 2210
    const-string v2, "pkgpss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2211
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2214
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2217
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2219
    :cond_7
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v2, :cond_8

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v2, :cond_8

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_9

    .line 2221
    :cond_8
    const-string v2, "pkgkills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2222
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2224
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2225
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2227
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2228
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2229
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2231
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2233
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2235
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2237
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2239
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2199
    :cond_9
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 2242
    .end local v32    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_a
    const/16 v27, 0x0

    .local v27, "isvc":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 2243
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2245
    .local v6, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2246
    .local v7, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    const-string v3, "pkgsvc-run"

    const/4 v8, 0x0

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2249
    const-string v3, "pkgsvc-start"

    const/4 v8, 0x1

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2252
    const-string v3, "pkgsvc-bound"

    const/4 v8, 0x2

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2255
    const-string v3, "pkgsvc-exec"

    const/4 v8, 0x3

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2242
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 2194
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 2262
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v23    # "NPROCS":I
    .end local v24    # "NSRVS":I
    .end local v26    # "iproc":I
    .end local v27    # "isvc":I
    .end local v28    # "iu":I
    .end local v31    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v36    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v33

    .line 2263
    .local v33, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v25, 0x0

    :goto_5
    invoke-virtual/range {v33 .. v33}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_12

    .line 2264
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 2265
    .local v34, "procName":Ljava/lang/String;
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/SparseArray;

    .line 2266
    .local v37, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v28, 0x0

    .restart local v28    # "iu":I
    :goto_6
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_11

    .line 2267
    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2268
    .restart local v5    # "uid":I
    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2269
    .local v35, "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-lez v2, :cond_d

    .line 2270
    const-string v2, "proc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2272
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2273
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2274
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2275
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2277
    :cond_d
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v2, :cond_e

    .line 2278
    const-string v2, "pss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2279
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2281
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2282
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2283
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2285
    :cond_e
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v2, :cond_f

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v2, :cond_f

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_10

    .line 2287
    :cond_f
    const-string v2, "kills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2288
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2290
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2291
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2292
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2293
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2294
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2295
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2296
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2297
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2299
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2300
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2301
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2302
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2303
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2266
    :cond_10
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 2263
    .end local v5    # "uid":I
    .end local v35    # "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_11
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_5

    .line 2307
    .end local v28    # "iu":I
    .end local v34    # "procName":Ljava/lang/String;
    .end local v37    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_12
    const-string v2, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2308
    const-string v16, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v19, v0

    move-object/from16 v15, p1

    move-wide/from16 v21, v13

    invoke-static/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2310
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2311
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    .prologue
    .line 2088
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p8

    move-object/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 2090
    .local v2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2091
    if-eqz p2, :cond_0

    .line 2092
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2093
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 2095
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 2098
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 54
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    .prologue
    .line 1791
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v15

    .line 1793
    .local v15, "totalTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v42

    .line 1794
    .local v42, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v46, 0x0

    .line 1795
    .local v46, "printedHeader":Z
    const/16 v50, 0x0

    .line 1796
    .local v50, "sepNeeded":Z
    const/16 v36, 0x0

    .local v36, "ip":I
    :goto_0
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_22

    .line 1797
    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 1798
    .local v44, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/util/SparseArray;

    .line 1799
    .local v52, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v39, 0x0

    .local v39, "iu":I
    :goto_1
    invoke-virtual/range {v52 .. v52}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_21

    .line 1800
    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v51

    .line 1801
    .local v51, "uid":I
    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1802
    .local v45, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v34

    .line 1803
    .local v34, "NPROCS":I
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v35

    .line 1804
    .local v35, "NSRVS":I
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/16 v43, 0x1

    .line 1805
    .local v43, "pkgMatch":Z
    :goto_2
    if-nez v43, :cond_5

    .line 1806
    const/16 v48, 0x0

    .line 1807
    .local v48, "procMatch":Z
    const/16 v37, 0x0

    .local v37, "iproc":I
    :goto_3
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 1808
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1809
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1810
    const/16 v48, 0x1

    .line 1814
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    if-nez v48, :cond_5

    .line 1799
    .end local v48    # "procMatch":Z
    :cond_2
    add-int/lit8 v39, v39, 0x1

    goto :goto_1

    .line 1804
    .end local v37    # "iproc":I
    .end local v43    # "pkgMatch":Z
    :cond_3
    const/16 v43, 0x0

    goto :goto_2

    .line 1807
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v37    # "iproc":I
    .restart local v43    # "pkgMatch":Z
    .restart local v48    # "procMatch":Z
    :cond_4
    add-int/lit8 v37, v37, 0x1

    goto :goto_3

    .line 1818
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v37    # "iproc":I
    .end local v48    # "procMatch":Z
    :cond_5
    if-gtz v34, :cond_6

    if-lez v35, :cond_8

    .line 1819
    :cond_6
    if-nez v46, :cond_7

    .line 1820
    const-string v4, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1821
    const/16 v46, 0x1

    .line 1822
    const/16 v50, 0x1

    .line 1824
    :cond_7
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    :cond_8
    if-eqz p5, :cond_9

    if-eqz p6, :cond_d

    .line 1828
    :cond_9
    const/16 v37, 0x0

    .restart local v37    # "iproc":I
    :goto_4
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_12

    .line 1829
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1830
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v43, :cond_a

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1828
    :goto_5
    add-int/lit8 v37, v37, 0x1

    goto :goto_4

    .line 1833
    :cond_a
    if-eqz p7, :cond_b

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1834
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1838
    :cond_b
    const-string v4, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1839
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1840
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v4, v4, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_c

    .line 1841
    const-string v4, " (multi, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    :goto_6
    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1846
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1850
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1852
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_5

    .line 1843
    :cond_c
    const-string v4, " (unique, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 1855
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v37    # "iproc":I
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v37, 0x0

    .restart local v37    # "iproc":I
    :goto_7
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_11

    .line 1857
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1858
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v43, :cond_f

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1856
    :cond_e
    :goto_8
    add-int/lit8 v37, v37, 0x1

    goto :goto_7

    .line 1861
    :cond_f
    if-eqz p7, :cond_10

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1864
    :cond_10
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1866
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_11
    const-string v8, "      "

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v12, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v7, p1

    move-wide/from16 v13, p3

    invoke-static/range {v7 .. v16}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 1869
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_12
    const/16 v38, 0x0

    .local v38, "isvc":I
    :goto_9
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    .line 1870
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1871
    .local v23, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-nez v43, :cond_14

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1869
    :cond_13
    :goto_a
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 1874
    :cond_14
    if-eqz p7, :cond_15

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1875
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 1879
    :cond_15
    if-eqz p6, :cond_1c

    .line 1880
    const-string v4, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1884
    :goto_b
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1885
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    const-string v4, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "    "

    const-string v22, "Running"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_16

    if-eqz p6, :cond_1d

    :cond_16
    const/16 v33, 0x1

    :goto_c
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1890
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "    "

    const-string v22, "Started"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_17

    if-eqz p6, :cond_1e

    :cond_17
    const/16 v33, 0x1

    :goto_d
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1893
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "      "

    const-string v22, "Bound"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_18

    if-eqz p6, :cond_1f

    :cond_18
    const/16 v33, 0x1

    :goto_e
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1896
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "  "

    const-string v22, "Executing"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_19

    if-eqz p6, :cond_20

    :cond_19
    const/16 v33, 0x1

    :goto_f
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1899
    if-eqz p6, :cond_13

    .line 1900
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v4, :cond_1a

    .line 1901
    const-string v4, "        mOwner="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1903
    :cond_1a
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v4, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v4, :cond_13

    .line 1904
    :cond_1b
    const-string v4, "        mStarted="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1905
    const-string v4, " mRestarting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_a

    .line 1882
    :cond_1c
    const-string v4, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1887
    :cond_1d
    const/16 v33, 0x0

    goto/16 :goto_c

    .line 1890
    :cond_1e
    const/16 v33, 0x0

    goto/16 :goto_d

    .line 1893
    :cond_1f
    const/16 v33, 0x0

    goto/16 :goto_e

    .line 1896
    :cond_20
    const/16 v33, 0x0

    goto :goto_f

    .line 1796
    .end local v23    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v34    # "NPROCS":I
    .end local v35    # "NSRVS":I
    .end local v37    # "iproc":I
    .end local v38    # "isvc":I
    .end local v43    # "pkgMatch":Z
    .end local v45    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v51    # "uid":I
    :cond_21
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_0

    .line 1912
    .end local v39    # "iu":I
    .end local v44    # "pkgName":Ljava/lang/String;
    .end local v52    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v47

    .line 1913
    .local v47, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v46, 0x0

    .line 1914
    const/16 v40, 0x0

    .local v40, "numShownProcs":I
    const/16 v41, 0x0

    .line 1915
    .local v41, "numTotalProcs":I
    const/16 v36, 0x0

    :goto_10
    invoke-virtual/range {v47 .. v47}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_2a

    .line 1916
    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 1917
    .local v49, "procName":Ljava/lang/String;
    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/util/SparseArray;

    .line 1918
    .local v53, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v39, 0x0

    .restart local v39    # "iu":I
    :goto_11
    invoke-virtual/range {v53 .. v53}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_29

    .line 1919
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v51

    .line 1920
    .restart local v51    # "uid":I
    add-int/lit8 v41, v41, 0x1

    .line 1921
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1922
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-nez v4, :cond_24

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-nez v4, :cond_24

    .line 1918
    :cond_23
    :goto_12
    add-int/lit8 v39, v39, 0x1

    goto :goto_11

    .line 1926
    :cond_24
    iget-boolean v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_23

    .line 1929
    if-eqz p2, :cond_25

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1933
    :cond_25
    add-int/lit8 v40, v40, 0x1

    .line 1934
    if-eqz v50, :cond_26

    .line 1935
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1937
    :cond_26
    const/16 v50, 0x1

    .line 1938
    if-nez v46, :cond_27

    .line 1939
    const-string v4, "Multi-Package Common Processes:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    const/16 v46, 0x1

    .line 1942
    :cond_27
    if-eqz p7, :cond_28

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1943
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1946
    :cond_28
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1948
    const-string v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1949
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    const-string v25, "        "

    sget-object v27, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v28, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v29, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v24, p1

    move-object/from16 v26, v6

    move-wide/from16 v30, p3

    invoke-static/range {v24 .. v31}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1952
    const-string v18, "        "

    sget-object v20, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v21, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v22, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v17, p1

    move-object/from16 v19, v6

    invoke-static/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1954
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_12

    .line 1915
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v51    # "uid":I
    :cond_29
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_10

    .line 1957
    .end local v39    # "iu":I
    .end local v49    # "procName":Ljava/lang/String;
    .end local v53    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_2a
    if-eqz p6, :cond_2b

    .line 1958
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1959
    const-string v4, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1960
    const-string v4, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1963
    :cond_2b
    if-eqz v50, :cond_2c

    .line 1964
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1966
    :cond_2c
    if-eqz p5, :cond_2e

    .line 1967
    const-string v4, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-wide/from16 v20, p3

    move/from16 v22, p7

    .line 1968
    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1973
    :goto_13
    if-eqz p6, :cond_2d

    .line 1974
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1975
    const-string v4, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    const-string v4, "  Num long arrays: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1977
    const-string v4, "  Next long entry: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1978
    const-string v4, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 1980
    :cond_2d
    return-void

    .line 1970
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_13
.end method

.method dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "count"    # I
    .param p8, "serviceType"    # I
    .param p9, "state"    # I
    .param p10, "startTime"    # J
    .param p12, "now"    # J
    .param p14, "totalTime"    # J
    .param p16, "dumpAll"    # Z

    .prologue
    .line 2024
    if-eqz p7, :cond_0

    .line 2025
    if-eqz p16, :cond_1

    .line 2026
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2027
    const-string v2, " op count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-wide/from16 v7, p10

    move-wide/from16 v9, p12

    .line 2028
    invoke-static/range {v2 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    .line 2040
    :cond_0
    :goto_0
    return-void

    .line 2031
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-wide/from16 v7, p10

    move-wide/from16 v9, p12

    invoke-static/range {v2 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v11

    .line 2033
    .local v11, "myTime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2034
    const-string v2, " count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2035
    const-string v2, " / time "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2036
    long-to-double v2, v11

    move-wide/from16 v0, p14

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    .line 2037
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    .prologue
    .line 2043
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 2045
    .local v14, "totalTime":J
    const/4 v6, 0x0

    const-string v7, "  "

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 2047
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2048
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 2049
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .prologue
    const/16 v9, 0x20

    .line 2052
    const-string v0, "Run time Stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    const-string v1, "  "

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    iget-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-object v0, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 2054
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2055
    const-string v0, "          Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2056
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2057
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2058
    const-string v0, "  Total elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2059
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2062
    const/4 v8, 0x1

    .line 2063
    .local v8, "partial":Z
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2064
    const-string v0, " (shutdown)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2065
    const/4 v8, 0x0

    .line 2067
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2068
    const-string v0, " (sysprops)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2069
    const/4 v8, 0x0

    .line 2071
    :cond_1
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2072
    const-string v0, " (complete)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2073
    const/4 v8, 0x0

    .line 2075
    :cond_2
    if-eqz v8, :cond_3

    .line 2076
    const-string v0, " (partial)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2078
    :cond_3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2079
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2081
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2083
    return-void

    .line 2059
    .end local v8    # "partial":Z
    :cond_4
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_0
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 5
    .param p1, "update"    # Z

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, "changed":Z
    const-string v3, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "runtime":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1086
    const/4 v0, 0x1

    .line 1087
    if-eqz p1, :cond_0

    .line 1088
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1091
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->useExperimentalWebView()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "chromeview"

    .line 1092
    .local v2, "webview":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1093
    const/4 v0, 0x1

    .line 1094
    if-eqz p1, :cond_1

    .line 1095
    iput-object v2, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    .line 1098
    :cond_1
    return v0

    .line 1091
    .end local v2    # "webview":Ljava/lang/String;
    :cond_2
    const-string v2, "webview"

    goto :goto_0
.end method

.method getLong(II)J
    .locals 4
    .param p1, "off"    # I
    .param p2, "index"    # I

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1642
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1665
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1666
    .local v0, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1671
    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    .local v1, "as":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1669
    .end local v1    # "as":Ljava/lang/Object;
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_0
    new-instance v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1670
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1671
    .restart local v1    # "as":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 1675
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v21

    .line 1676
    .local v21, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1677
    .local v4, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v4, :cond_0

    move-object/from16 v22, v4

    .line 1740
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v22, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_0
    return-object v22

    .line 1680
    .end local v22    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1681
    .local v5, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v5, :cond_1

    .line 1682
    new-instance v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 1683
    .restart local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1686
    :cond_1
    iget-boolean v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v6, :cond_6

    .line 1687
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1690
    move-object v4, v5

    .line 1738
    :goto_1
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v4

    .line 1740
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v22    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_0

    .line 1697
    .end local v22    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 1702
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1705
    .local v9, "now":J
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v19

    .line 1706
    .local v19, "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v19, :cond_4

    .line 1707
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v18

    .line 1710
    .local v18, "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v20, v6, -0x1

    .local v20, "i":I
    :goto_2
    if-ltz v20, :cond_5

    .line 1714
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1715
    .local v23, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v6, v5, :cond_3

    .line 1718
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1713
    :cond_3
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 1724
    .end local v18    # "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v20    # "i":I
    .end local v23    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_4
    const-string v6, "ProcessStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cloning proc state: no package state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_5
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1730
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_1

    .line 1734
    .end local v9    # "now":J
    .end local v19    # "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_1
.end method

.method public getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 1745
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v6

    .line 1746
    .local v6, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1747
    .local v0, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v0, :cond_0

    move-object v7, v0

    .line 1756
    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v7, "ss":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 1751
    .end local v7    # "ss":Ljava/lang/Object;
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v5

    .line 1753
    .local v5, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_1
    new-instance v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1754
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 1756
    .restart local v7    # "ss":Ljava/lang/Object;
    goto :goto_0

    .line 1751
    .end local v5    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "ss":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1359
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 1360
    .local v2, "len":[I
    invoke-static {p1, v2}, Lcom/android/internal/app/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 1361
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1362
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1363
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1364
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1366
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_0
    return-void

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 28
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1373
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lez v10, :cond_3

    :cond_0
    const/16 v22, 0x1

    .line 1375
    .local v22, "hadData":Z
    :goto_0
    if-eqz v22, :cond_1

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 1379
    :cond_1
    const v10, 0x50535453

    const-string v11, "magic number"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1577
    :cond_2
    :goto_1
    return-void

    .line 1373
    .end local v22    # "hadData":Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 1382
    .restart local v22    # "hadData":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1383
    .local v27, "version":I
    const/16 v10, 0xd

    move/from16 v0, v27

    if-eq v0, v10, :cond_5

    .line 1384
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_1

    .line 1387
    :cond_5
    const/16 v10, 0xe

    const-string v11, "state count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1390
    const/16 v10, 0x8

    const-string v11, "adj count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1393
    const/4 v10, 0x7

    const-string v11, "pss count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1396
    const/16 v10, 0x1000

    const-string v11, "longs size"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1400
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1402
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1403
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1404
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1405
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1406
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1407
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    .line 1408
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1410
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1411
    .local v16, "NLONGS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1412
    .local v15, "NEXTLONG":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1413
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_2
    add-int/lit8 v10, v16, -0x1

    move/from16 v0, v24

    if-ge v0, v10, :cond_7

    .line 1414
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v0, v24

    if-lt v0, v10, :cond_6

    .line 1415
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v11, 0x1000

    new-array v11, v11, [J

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1417
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    const/16 v11, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1413
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1419
    :cond_7
    const/16 v10, 0x1000

    new-array v0, v10, [J

    move-object/from16 v25, v0

    .line 1420
    .local v25, "longs":[J
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    array-length v11, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1427
    .local v18, "NPROC":I
    if-gez v18, :cond_8

    .line 1428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad process count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1431
    :cond_8
    if-lez v18, :cond_10

    .line 1432
    add-int/lit8 v18, v18, -0x1

    .line 1433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1434
    .local v8, "procName":Ljava/lang/String;
    if-nez v8, :cond_9

    .line 1435
    const-string v10, "bad process name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1438
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1439
    .local v21, "NUID":I
    if-gez v21, :cond_b

    .line 1440
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1468
    .local v4, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v6, "pkgName":Ljava/lang/String;
    .local v7, "uid":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_b
    if-lez v21, :cond_8

    .line 1444
    add-int/lit8 v21, v21, -0x1

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1446
    .restart local v7    # "uid":I
    if-gez v7, :cond_c

    .line 1447
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1450
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1451
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_d

    .line 1452
    const-string v10, "bad process package name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1455
    :cond_d
    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v4, v10

    .line 1456
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_4
    if-eqz v4, :cond_f

    .line 1457
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_1

    .line 1455
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_e
    const/4 v4, 0x0

    goto :goto_4

    .line 1461
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_f
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v7, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 1462
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_1

    .line 1474
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "procName":Ljava/lang/String;
    .end local v21    # "NUID":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1475
    .local v17, "NPKG":I
    if-gez v17, :cond_11

    .line 1476
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1479
    :cond_11
    if-lez v17, :cond_23

    .line 1480
    add-int/lit8 v17, v17, -0x1

    .line 1481
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1482
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_12

    .line 1483
    const-string v10, "bad package name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1486
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1487
    .restart local v21    # "NUID":I
    if-gez v21, :cond_13

    .line 1488
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1491
    :cond_13
    if-lez v21, :cond_11

    .line 1492
    add-int/lit8 v21, v21, -0x1

    .line 1493
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1494
    .restart local v7    # "uid":I
    if-gez v7, :cond_14

    .line 1495
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1498
    :cond_14
    new-instance v26, Lcom/android/internal/app/ProcessStats$PackageState;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1499
    .local v26, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    invoke-virtual {v10, v6, v7, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1500
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1501
    .local v19, "NPROCS":I
    if-gez v19, :cond_16

    .line 1502
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package process count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1540
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v5, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v8    # "procName":Ljava/lang/String;
    .local v23, "hasProc":I
    :cond_15
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "procName":Ljava/lang/String;
    .end local v23    # "hasProc":I
    :cond_16
    :goto_5
    if-lez v19, :cond_1c

    .line 1506
    add-int/lit8 v19, v19, -0x1

    .line 1507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1508
    .restart local v8    # "procName":Ljava/lang/String;
    if-nez v8, :cond_17

    .line 1509
    const-string v10, "bad package process name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1512
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1515
    .restart local v23    # "hasProc":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1518
    .restart local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v5, :cond_18

    .line 1519
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no common proc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1522
    :cond_18
    if-eqz v23, :cond_1b

    .line 1527
    if-eqz v22, :cond_19

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v4, v10

    .line 1528
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_6
    if-eqz v4, :cond_1a

    .line 1529
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_1

    .line 1527
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_19
    const/4 v4, 0x0

    goto :goto_6

    .line 1533
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1a
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-wide/16 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1534
    .restart local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_1

    .line 1544
    .end local v4    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1b
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1547
    .end local v5    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "procName":Ljava/lang/String;
    .end local v23    # "hasProc":I
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1548
    .local v20, "NSRVS":I
    if-gez v20, :cond_1e

    .line 1549
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package service count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1569
    .local v9, "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v12, "serviceName":Ljava/lang/String;
    .local v13, "processName":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    .end local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v13    # "processName":Ljava/lang/String;
    :cond_1e
    if-lez v20, :cond_13

    .line 1553
    add-int/lit8 v20, v20, -0x1

    .line 1554
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1555
    .restart local v12    # "serviceName":Ljava/lang/String;
    if-nez v12, :cond_1f

    .line 1556
    const-string v10, "bad package service name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1559
    :cond_1f
    const/16 v10, 0x9

    move/from16 v0, v27

    if-le v0, v10, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    .line 1560
    .restart local v13    # "processName":Ljava/lang/String;
    :goto_7
    if-eqz v22, :cond_22

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object v9, v10

    .line 1561
    .restart local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :goto_8
    if-nez v9, :cond_20

    .line 1562
    new-instance v9, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v11, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1564
    .restart local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_20
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/internal/app/ProcessStats$ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto/16 :goto_1

    .line 1559
    .end local v9    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v13    # "processName":Ljava/lang/String;
    :cond_21
    const/4 v13, 0x0

    goto :goto_7

    .line 1560
    .restart local v13    # "processName":Ljava/lang/String;
    :cond_22
    const/4 v9, 0x0

    goto :goto_8

    .line 1574
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v13    # "processName":Ljava/lang/String;
    .end local v19    # "NPROCS":I
    .end local v20    # "NSRVS":I
    .end local v21    # "NUID":I
    .end local v26    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_23
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 978
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 979
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 980
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 981
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 983
    return-void
.end method

.method public resetSafely()V
    .locals 20

    .prologue
    .line 987
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 988
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 989
    .local v9, "now":J
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 990
    .local v3, "deadSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 992
    .local v2, "aliveSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 993
    .local v11, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .local v4, "ip":I
    :goto_0
    if-ltz v4, :cond_b

    .line 994
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    .line 995
    .local v16, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .local v8, "iu":I
    :goto_1
    if-ltz v8, :cond_9

    .line 996
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 997
    .local v12, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    .local v6, "isvc":I
    :goto_2
    if-ltz v6, :cond_3

    .line 998
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 999
    .local v15, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v15}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v18

    if-nez v18, :cond_0

    iget-boolean v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1000
    :cond_0
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1001
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1002
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1003
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1004
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 1005
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1006
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1010
    :cond_1
    invoke-virtual {v15, v9, v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetSafely(J)V

    .line 997
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 1012
    :cond_2
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1058
    .end local v4    # "ip":I
    .end local v6    # "isvc":I
    .end local v8    # "iu":I
    .end local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v12    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v15    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v16    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :catchall_0
    move-exception v18

    move-object/from16 v19, v18

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1059
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1060
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    goto :goto_4

    .line 1015
    .end local v7    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    .restart local v4    # "ip":I
    .restart local v6    # "isvc":I
    .restart local v8    # "iu":I
    .restart local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v12    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v16    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_3
    :try_start_1
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v18

    add-int/lit8 v5, v18, -0x1

    .local v5, "iproc":I
    :goto_5
    if-ltz v5, :cond_7

    .line 1016
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1017
    .local v14, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v14, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1018
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_4

    .line 1019
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1021
    :cond_4
    invoke-virtual {v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v18

    if-nez v18, :cond_5

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1023
    :cond_5
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1025
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1015
    :goto_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 1028
    :cond_6
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1029
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6

    .line 1032
    .end local v14    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_7
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v18

    if-gtz v18, :cond_8

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v18

    if-gtz v18, :cond_8

    .line 1033
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->removeAt(I)V

    .line 995
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1

    .line 1036
    .end local v5    # "iproc":I
    .end local v6    # "isvc":I
    .end local v12    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v18

    if-gtz v18, :cond_a

    .line 1037
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 993
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 1040
    .end local v8    # "iu":I
    .end local v16    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    .line 1041
    .local v13, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    :goto_7
    if-ltz v4, :cond_10

    .line 1042
    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/SparseArray;

    .line 1043
    .local v17, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .restart local v8    # "iu":I
    :goto_8
    if-ltz v8, :cond_e

    .line 1044
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1045
    .restart local v14    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v14, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1046
    invoke-virtual {v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1047
    :cond_c
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1043
    :goto_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 1049
    :cond_d
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1050
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_9

    .line 1053
    .end local v14    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v18

    if-gtz v18, :cond_f

    .line 1054
    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 1058
    .end local v8    # "iu":I
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_10
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1059
    .restart local v7    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1060
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    goto :goto_a

    .line 1062
    .end local v4    # "ip":I
    .end local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v13    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    :cond_11
    throw v19

    .line 1063
    .restart local v4    # "ip":I
    .restart local v11    # "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v13    # "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    :cond_12
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1065
    return-void
.end method

.method setLong(IIJ)V
    .locals 4
    .param p1, "off"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .prologue
    .line 1636
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1637
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 1638
    return-void
.end method

.method validateLongOffset(I)Z
    .locals 5
    .param p1, "off"    # I

    .prologue
    const/4 v2, 0x0

    .line 1614
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v0, v3, v4

    .line 1615
    .local v0, "arr":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return v2

    .line 1618
    :cond_1
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v1, v3, v4

    .line 1619
    .local v1, "idx":I
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_0

    .line 1624
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 31
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1211
    .local v16, "now":J
    const v25, 0x50535453

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    const/16 v25, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    const/16 v25, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    const/16 v25, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    const/16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    new-instance v25, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1222
    .local v21, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1223
    .local v5, "NPROC":I
    const/4 v11, 0x0

    .local v11, "ip":I
    :goto_0
    if-ge v11, v5, :cond_1

    .line 1224
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1225
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1226
    .local v8, "NUID":I
    const/4 v14, 0x0

    .local v14, "iu":I
    :goto_1
    if-ge v14, v8, :cond_0

    .line 1227
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1226
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1223
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1230
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v18

    .line 1231
    .local v18, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1232
    .local v4, "NPKG":I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v4, :cond_6

    .line 1233
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1234
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1235
    .restart local v8    # "NUID":I
    const/4 v14, 0x0

    .restart local v14    # "iu":I
    :goto_3
    if-ge v14, v8, :cond_5

    .line 1236
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1237
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1238
    .local v6, "NPROCS":I
    const/4 v12, 0x0

    .local v12, "iproc":I
    :goto_4
    if-ge v12, v6, :cond_3

    .line 1239
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1240
    .local v20, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1241
    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1238
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1244
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1245
    .local v7, "NSRVS":I
    const/4 v13, 0x0

    .local v13, "isvc":I
    :goto_5
    if-ge v13, v7, :cond_4

    .line 1246
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->commitStateTime(J)V

    .line 1245
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1235
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1232
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v12    # "iproc":I
    .end local v13    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1251
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1252
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 1262
    .local v9, "array":[J
    array-length v0, v9

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1260
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1264
    .end local v9    # "array":[J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [J

    .line 1265
    .local v15, "lastLongs":[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v15, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v26, v0

    aget-wide v27, v25, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v29, v0

    sub-long v29, v16, v29

    add-long v27, v27, v29

    aput-wide v27, v25, v26

    .line 1269
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1271
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1273
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v5, :cond_a

    .line 1275
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1277
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1278
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    const/4 v14, 0x0

    .restart local v14    # "iu":I
    :goto_8
    if-ge v14, v8, :cond_9

    .line 1280
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1282
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1279
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1274
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1286
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v4, :cond_f

    .line 1288
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1290
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1291
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v14, 0x0

    .restart local v14    # "iu":I
    :goto_a
    if-ge v14, v8, :cond_e

    .line 1293
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1295
    .restart local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1296
    .restart local v6    # "NPROCS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    const/4 v12, 0x0

    .restart local v12    # "iproc":I
    :goto_b
    if-ge v12, v6, :cond_c

    .line 1298
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1300
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1302
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1305
    :cond_b
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 1309
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1310
    .restart local v7    # "NSRVS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    const/4 v13, 0x0

    .restart local v13    # "isvc":I
    :goto_d
    if-ge v13, v7, :cond_d

    .line 1312
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1313
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1314
    .local v22, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1315
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1311
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 1292
    .end local v22    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 1287
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v12    # "iproc":I
    .end local v13    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 1320
    .end local v8    # "NUID":I
    .end local v14    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_f
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1321
    return-void
.end method
