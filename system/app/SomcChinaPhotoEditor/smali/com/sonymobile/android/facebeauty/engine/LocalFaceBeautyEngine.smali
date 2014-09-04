.class public Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;
.super Ljava/lang/Object;
.source "LocalFaceBeautyEngine.java"

# interfaces
.implements Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;,
        Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;
    }
.end annotation


# static fields
.field private static final APAC_STYLE:[I

.field private static final BRAZIL_STYLE:[I

.field private static final BUFFER_SIZE:I = 0x3

.field private static final CALIBRATION_APAC:I = 0x1d1

.field private static final CALIBRATION_BRAZIL:I = 0x1d1

.field private static final CALIBRATION_CHINA:I = 0x1d1

.field private static final CALIBRATION_EUROPE:I = 0x1d1

.field private static final CALIBRATION_GENERIC:I = 0x1d1

.field private static final CALIBRATION_INDIA:I = 0x1d1

.field private static final CHINA_STYLE:[I

.field private static final EUROPE_STYLE:[I

.field private static final GENERIC_STYLE:[I

.field private static final INDIA_STYLE:[I

.field private static final STYLE_APAC_CLUB:I = 0x14

.field private static final STYLE_APAC_CUTE:I = 0xe

.field private static final STYLE_APAC_DAILY:I = 0xb

.field private static final STYLE_APAC_NATURAL:I = 0xd

.field private static final STYLE_APAC_OFFICE:I = 0xc

.field private static final STYLE_APAC_PARTY:I = 0x12

.field private static final STYLE_APAC_SUNTAN:I = 0x11

.field private static final STYLE_APAC_SWEETIE:I = 0x13

.field private static final STYLE_APAC_VINTAGE:I = 0x10

.field private static final STYLE_APAC_YOUTH:I = 0xf

.field private static final STYLE_BRAZIL_CLUB:I = 0x28

.field private static final STYLE_BRAZIL_CUTE:I = 0x22

.field private static final STYLE_BRAZIL_DAILY:I = 0x1f

.field private static final STYLE_BRAZIL_NATURAL:I = 0x21

.field private static final STYLE_BRAZIL_OFFICE:I = 0x20

.field private static final STYLE_BRAZIL_PARTY:I = 0x26

.field private static final STYLE_BRAZIL_SUNTAN:I = 0x25

.field private static final STYLE_BRAZIL_SWEETIE:I = 0x27

.field private static final STYLE_BRAZIL_VINTAGE:I = 0x24

.field private static final STYLE_BRAZIL_YOUTH:I = 0x23

.field private static final STYLE_CHINA_CLUB:I = 0xa

.field private static final STYLE_CHINA_CUTE:I = 0x4

.field private static final STYLE_CHINA_DAILY:I = 0x1

.field private static final STYLE_CHINA_NATURAL:I = 0x3

.field private static final STYLE_CHINA_OFFICE:I = 0x2

.field private static final STYLE_CHINA_PARTY:I = 0x8

.field private static final STYLE_CHINA_SUNTAN:I = 0x7

.field private static final STYLE_CHINA_SWEETIE:I = 0x9

.field private static final STYLE_CHINA_VINTAGE:I = 0x6

.field private static final STYLE_CHINA_YOUTH:I = 0x5

.field private static final STYLE_EUROPE_CLUB:I = 0x32

.field private static final STYLE_EUROPE_CUTE:I = 0x2c

.field private static final STYLE_EUROPE_DAILY:I = 0x29

.field private static final STYLE_EUROPE_NATURAL:I = 0x2b

.field private static final STYLE_EUROPE_OFFICE:I = 0x2a

.field private static final STYLE_EUROPE_PARTY:I = 0x30

.field private static final STYLE_EUROPE_SUNTAN:I = 0x2f

.field private static final STYLE_EUROPE_SWEETIE:I = 0x31

.field private static final STYLE_EUROPE_VINTAGE:I = 0x2e

.field private static final STYLE_EUROPE_YOUTH:I = 0x2d

.field private static final STYLE_GENERIC_CLUB:I = 0x3c

.field private static final STYLE_GENERIC_CUTE:I = 0x36

.field private static final STYLE_GENERIC_DAILY:I = 0x33

.field private static final STYLE_GENERIC_NATURAL:I = 0x35

.field private static final STYLE_GENERIC_OFFICE:I = 0x34

.field private static final STYLE_GENERIC_PARTY:I = 0x3a

.field private static final STYLE_GENERIC_SUNTAN:I = 0x39

.field private static final STYLE_GENERIC_SWEETIE:I = 0x3b

.field private static final STYLE_GENERIC_VINTAGE:I = 0x38

.field private static final STYLE_GENERIC_YOUTH:I = 0x37

.field private static final STYLE_INDIA_CLUB:I = 0x1e

.field private static final STYLE_INDIA_CUTE:I = 0x18

.field private static final STYLE_INDIA_DAILY:I = 0x15

.field private static final STYLE_INDIA_NATURAL:I = 0x17

.field private static final STYLE_INDIA_OFFICE:I = 0x16

.field private static final STYLE_INDIA_PARTY:I = 0x1c

.field private static final STYLE_INDIA_SUNTAN:I = 0x1b

.field private static final STYLE_INDIA_SWEETIE:I = 0x1d

.field private static final STYLE_INDIA_VINTAGE:I = 0x1a

.field private static final STYLE_INDIA_YOUTH:I = 0x19

.field public static final STYLE_SUITE_APAC:Ljava/lang/String; = "APAC"

.field public static final STYLE_SUITE_BRAZIL:Ljava/lang/String; = "Brazil"

.field public static final STYLE_SUITE_CHINA:Ljava/lang/String; = "China"

.field public static final STYLE_SUITE_DEFAULT:Ljava/lang/String; = "Generic"

.field public static final STYLE_SUITE_EUROPE:Ljava/lang/String; = "Europe"

.field public static final STYLE_SUITE_INDIA:Ljava/lang/String; = "India"

.field private static final THREAD_NUM:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

.field private mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExecutorServiceDraw:Ljava/util/concurrent/ExecutorService;

.field private mFaceCallBack:Lcom/sonymobile/android/facebeauty/engine/FaceCallback;

.field private mFrameBuffer:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FrameUnit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLastTimeStamp:J

.field private mResultBuffer:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FrameUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mShutdown:Z

.field private mStyleChangeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 168
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->CHINA_STYLE:[I

    .line 174
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->APAC_STYLE:[I

    .line 180
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->INDIA_STYLE:[I

    .line 186
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->BRAZIL_STYLE:[I

    .line 192
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->EUROPE_STYLE:[I

    .line 198
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->GENERIC_STYLE:[I

    return-void

    .line 168
    nop

    :array_0
    .array-data 4
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
    .end array-data

    .line 174
    :array_1
    .array-data 4
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data

    .line 180
    :array_2
    .array-data 4
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data

    .line 186
    :array_3
    .array-data 4
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
    .end array-data

    .line 192
    :array_4
    .array-data 4
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
    .end array-data

    .line 198
    :array_5
    .array-data 4
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFrameBuffer:Ljava/util/concurrent/BlockingQueue;

    .line 216
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mResultBuffer:Ljava/util/concurrent/BlockingQueue;

    .line 218
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 220
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorServiceDraw:Ljava/util/concurrent/ExecutorService;

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mLastTimeStamp:J

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mShutdown:Z

    .line 231
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorServiceDraw:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFrameBuffer:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mStyleChangeTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mResultBuffer:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mLastTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mLastTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/FaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFaceCallBack:Lcom/sonymobile/android/facebeauty/engine/FaceCallback;

    return-object v0
.end method

.method private getRealStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;
    .locals 3
    .param p1, "style"    # I

    .prologue
    const/4 v2, 0x1

    .line 546
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    invoke-virtual {v0}, Lcom/sonymobile/android/facebeauty/engine/Style;->getStyleId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 547
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 730
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    return-object v0

    .line 549
    :pswitch_0
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 552
    :pswitch_1
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 555
    :pswitch_2
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 558
    :pswitch_3
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 561
    :pswitch_4
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 564
    :pswitch_5
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 567
    :pswitch_6
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 570
    :pswitch_7
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 573
    :pswitch_8
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 576
    :pswitch_9
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 579
    :pswitch_a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 582
    :pswitch_b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 585
    :pswitch_c
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 588
    :pswitch_d
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 591
    :pswitch_e
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 594
    :pswitch_f
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 597
    :pswitch_10
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 600
    :pswitch_11
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 603
    :pswitch_12
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 606
    :pswitch_13
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 609
    :pswitch_14
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 612
    :pswitch_15
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 615
    :pswitch_16
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 618
    :pswitch_17
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 621
    :pswitch_18
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 624
    :pswitch_19
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 627
    :pswitch_1a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 630
    :pswitch_1b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 633
    :pswitch_1c
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 636
    :pswitch_1d
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 639
    :pswitch_1e
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 642
    :pswitch_1f
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 645
    :pswitch_20
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 648
    :pswitch_21
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 651
    :pswitch_22
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 654
    :pswitch_23
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 657
    :pswitch_24
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 660
    :pswitch_25
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 663
    :pswitch_26
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 666
    :pswitch_27
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 669
    :pswitch_28
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 672
    :pswitch_29
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 675
    :pswitch_2a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 678
    :pswitch_2b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 681
    :pswitch_2c
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 684
    :pswitch_2d
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 687
    :pswitch_2e
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 690
    :pswitch_2f
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 693
    :pswitch_30
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 696
    :pswitch_31
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 699
    :pswitch_32
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 702
    :pswitch_33
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 705
    :pswitch_34
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 708
    :pswitch_35
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 711
    :pswitch_36
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 714
    :pswitch_37
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 717
    :pswitch_38
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 720
    :pswitch_39
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 723
    :pswitch_3a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 726
    :pswitch_3b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method

.method private getStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;
    .locals 3
    .param p1, "style"    # I

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    invoke-virtual {v0}, Lcom/sonymobile/android/facebeauty/engine/Style;->getStyleId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 359
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 542
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    return-object v0

    .line 361
    :pswitch_0
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 364
    :pswitch_1
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 367
    :pswitch_2
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 370
    :pswitch_3
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 373
    :pswitch_4
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 376
    :pswitch_5
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 379
    :pswitch_6
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 382
    :pswitch_7
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 385
    :pswitch_8
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 388
    :pswitch_9
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleChinaClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 391
    :pswitch_a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 394
    :pswitch_b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto :goto_0

    .line 397
    :pswitch_c
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 400
    :pswitch_d
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 403
    :pswitch_e
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 406
    :pswitch_f
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 409
    :pswitch_10
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 412
    :pswitch_11
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 415
    :pswitch_12
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 418
    :pswitch_13
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleAPACClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 421
    :pswitch_14
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 424
    :pswitch_15
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 427
    :pswitch_16
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 430
    :pswitch_17
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 433
    :pswitch_18
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 436
    :pswitch_19
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 439
    :pswitch_1a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 442
    :pswitch_1b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 445
    :pswitch_1c
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 448
    :pswitch_1d
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleIndiaClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 451
    :pswitch_1e
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 454
    :pswitch_1f
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 457
    :pswitch_20
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 460
    :pswitch_21
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 463
    :pswitch_22
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 466
    :pswitch_23
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 469
    :pswitch_24
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 472
    :pswitch_25
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 475
    :pswitch_26
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 478
    :pswitch_27
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleBrazilClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 481
    :pswitch_28
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 484
    :pswitch_29
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 487
    :pswitch_2a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 490
    :pswitch_2b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 493
    :pswitch_2c
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 496
    :pswitch_2d
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 499
    :pswitch_2e
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 502
    :pswitch_2f
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 505
    :pswitch_30
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 508
    :pswitch_31
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleEuropeClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 511
    :pswitch_32
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericDaily;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericDaily;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 514
    :pswitch_33
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericOffice;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericOffice;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 517
    :pswitch_34
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericNatural;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericNatural;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 520
    :pswitch_35
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericCute;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericCute;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 523
    :pswitch_36
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericYouth;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericYouth;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 526
    :pswitch_37
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericVintage;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericVintage;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 529
    :pswitch_38
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSuntan;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSuntan;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 532
    :pswitch_39
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericParty;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericParty;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 535
    :pswitch_3a
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSweetie;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericSweetie;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 538
    :pswitch_3b
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/StyleGenericClub;

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/android/facebeauty/engine/StyleGenericClub;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentStyle:Lcom/sonymobile/android/facebeauty/engine/Style;

    goto/16 :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public beautyStyleRgb(I[BIII[I)I
    .locals 16
    .param p1, "style"    # I
    .param p2, "buffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "angle"    # I
    .param p6, "faces"    # [I

    .prologue
    .line 1404
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v15

    .line 1405
    .local v15, "beautyStyle":Lcom/sonymobile/android/facebeauty/engine/Style;
    if-eqz v15, :cond_0

    .line 1406
    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getParams()[I

    move-result-object v4

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeSize()I

    move-result v5

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEye()[B

    move-result-object v6

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getShadow()[B

    move-result-object v7

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getUpper()[B

    move-result-object v8

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getLower()[B

    move-result-object v9

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getBlush()[B

    move-result-object v10

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLashSize()I

    move-result v11

    invoke-virtual {v15}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLash()[B

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getCalibrationValue()I

    move-result v14

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v13, p6

    invoke-static/range {v0 .. v14}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->beautyStyleRGB([BIII[II[B[B[B[B[BI[B[II)I

    .line 1411
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public beautyStyleRgb(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
    .locals 18
    .param p1, "style"    # I
    .param p2, "buffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "angle"    # I
    .param p6, "faces"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 1242
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v16

    .line 1243
    .local v16, "beautyStyle":Lcom/sonymobile/android/facebeauty/engine/Style;
    if-eqz v16, :cond_2

    .line 1244
    const/4 v14, 0x0

    .line 1245
    .local v14, "faceIndex":[I
    if-eqz p6, :cond_0

    .line 1246
    move-object/from16 v0, p6

    array-length v1, v0

    new-array v14, v1, [I

    .line 1247
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, v17

    if-ge v0, v1, :cond_1

    .line 1248
    aget-object v1, p6, v17

    iget v1, v1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->index:I

    aput v1, v14, v17

    .line 1247
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1251
    .end local v17    # "i":I
    :cond_0
    const/4 v1, 0x1

    new-array v14, v1, [I

    .line 1252
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v14, v1

    .line 1254
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getParams()[I

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeSize()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEye()[B

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getShadow()[B

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getUpper()[B

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getLower()[B

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getBlush()[B

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLashSize()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLash()[B

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getCalibrationValue()I

    move-result v15

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static/range {v1 .. v15}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->beautyStyleRGB([BIII[II[B[B[B[B[BI[B[II)I

    .line 1259
    .end local v14    # "faceIndex":[I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized beautyStyleRgbM(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
    .locals 17
    .param p1, "style"    # I
    .param p2, "buffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "angle"    # I
    .param p6, "faces"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 1288
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v16

    .line 1289
    .local v16, "beautyStyle":Lcom/sonymobile/android/facebeauty/engine/Style;
    if-eqz v16, :cond_0

    .line 1290
    const/4 v1, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getParams()[I

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeSize()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEye()[B

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getShadow()[B

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getUpper()[B

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getLower()[B

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getBlush()[B

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLashSize()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLash()[B

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getCalibrationValue()I

    move-result v15

    move-object/from16 v0, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v14, p6

    invoke-static/range {v0 .. v15}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->faceDetectAndBeautyFaceFull([BIIII[II[B[B[B[B[BI[B[Lcom/sonymobile/android/facebeauty/engine/FaceRect;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1296
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1288
    .end local v16    # "beautyStyle":Lcom/sonymobile/android/facebeauty/engine/Style;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beautyStyleYuv(I[BIII[I)I
    .locals 19
    .param p1, "style"    # I
    .param p2, "buffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "angle"    # I
    .param p6, "faces"    # [I

    .prologue
    .line 1417
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v18

    .line 1418
    .local v18, "beautyStyle":Lcom/sonymobile/android/facebeauty/engine/Style;
    if-eqz v18, :cond_0

    .line 1419
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getParams()[I

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeSize()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEye()[B

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getShadow()[B

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getUpper()[B

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getLower()[B

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getBlush()[B

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLashSize()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLash()[B

    move-result-object v12

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getCalibrationValue()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v13, p6

    invoke-static/range {v0 .. v17}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->beautyStyleYuv([BIII[II[B[B[B[B[BI[B[ILcom/sonymobile/android/facebeauty/engine/InterruptCallBack;JI)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 1424
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public beautyStyleYuv(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
    .locals 21
    .param p1, "style"    # I
    .param p2, "buffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "angle"    # I
    .param p6, "faces"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 1265
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v19

    .line 1266
    .local v19, "beautyStyle":Lcom/sonymobile/android/facebeauty/engine/Style;
    if-eqz v19, :cond_2

    .line 1267
    const/4 v14, 0x0

    .line 1268
    .local v14, "faceIndex":[I
    if-eqz p6, :cond_0

    .line 1269
    move-object/from16 v0, p6

    array-length v1, v0

    new-array v14, v1, [I

    .line 1270
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, v20

    if-ge v0, v1, :cond_1

    .line 1271
    aget-object v1, p6, v20

    iget v1, v1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->index:I

    aput v1, v14, v20

    .line 1270
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1274
    .end local v20    # "i":I
    :cond_0
    const/4 v1, 0x1

    new-array v14, v1, [I

    .line 1275
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v14, v1

    .line 1277
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getParams()[I

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeSize()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEye()[B

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getShadow()[B

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getUpper()[B

    move-result-object v9

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getLower()[B

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getBlush()[B

    move-result-object v11

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLashSize()I

    move-result v12

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLash()[B

    move-result-object v13

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getCalibrationValue()I

    move-result v18

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static/range {v1 .. v18}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->beautyStyleYuv([BIII[II[B[B[B[B[BI[B[ILcom/sonymobile/android/facebeauty/engine/InterruptCallBack;JI)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 1282
    .end local v14    # "faceIndex":[I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public beautyStyleYuvM(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
    .locals 1
    .param p1, "style"    # I
    .param p2, "buffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "angle"    # I
    .param p6, "faces"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 1303
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized faceDetectRgb([BIIIF[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "angle"    # I
    .param p5, "scale"    # F
    .param p6, "rects"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 1309
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3, p5, p6}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->faceDetect([BIIF[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public faceDetectYuv([BIII)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "angle"    # I

    .prologue
    .line 1315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalibrationValue()I
    .locals 4

    .prologue
    const v3, 0x7f07000b

    const/16 v2, 0x1d1

    .line 259
    const-string v0, "China"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v2

    .line 262
    :cond_1
    const-string v0, "APAC"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const-string v0, "India"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string v0, "Brazil"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "Europe"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public getStyleDemo(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "style"    # I
    .param p2, "angle"    # I

    .prologue
    const v3, 0x7f02012d

    const v2, 0x7f020127

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 1158
    if-nez p2, :cond_3c

    .line 1159
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1165
    :goto_0
    return-object v0

    .line 738
    :pswitch_0
    if-nez p2, :cond_0

    .line 739
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 743
    goto :goto_0

    .line 745
    :pswitch_1
    if-nez p2, :cond_1

    .line 746
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 750
    goto :goto_0

    .line 752
    :pswitch_2
    if-nez p2, :cond_2

    .line 753
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 757
    goto :goto_0

    .line 759
    :pswitch_3
    if-nez p2, :cond_3

    .line 760
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 764
    goto :goto_0

    .line 766
    :pswitch_4
    if-nez p2, :cond_4

    .line 767
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 769
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 771
    goto/16 :goto_0

    .line 773
    :pswitch_5
    if-nez p2, :cond_5

    .line 774
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 776
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 778
    goto/16 :goto_0

    .line 780
    :pswitch_6
    if-nez p2, :cond_6

    .line 781
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 783
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 785
    goto/16 :goto_0

    .line 787
    :pswitch_7
    if-nez p2, :cond_7

    .line 788
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 790
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 792
    goto/16 :goto_0

    .line 794
    :pswitch_8
    if-nez p2, :cond_8

    .line 795
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 797
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 799
    goto/16 :goto_0

    .line 801
    :pswitch_9
    if-nez p2, :cond_9

    .line 802
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 804
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 806
    goto/16 :goto_0

    .line 808
    :pswitch_a
    if-nez p2, :cond_a

    .line 809
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 811
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 813
    goto/16 :goto_0

    .line 815
    :pswitch_b
    if-nez p2, :cond_b

    .line 816
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 818
    :cond_b
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 820
    goto/16 :goto_0

    .line 822
    :pswitch_c
    if-nez p2, :cond_c

    .line 823
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 825
    :cond_c
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 827
    goto/16 :goto_0

    .line 829
    :pswitch_d
    if-nez p2, :cond_d

    .line 830
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 832
    :cond_d
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 834
    goto/16 :goto_0

    .line 836
    :pswitch_e
    if-nez p2, :cond_e

    .line 837
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 839
    :cond_e
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 841
    goto/16 :goto_0

    .line 843
    :pswitch_f
    if-nez p2, :cond_f

    .line 844
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 846
    :cond_f
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 848
    goto/16 :goto_0

    .line 850
    :pswitch_10
    if-nez p2, :cond_10

    .line 851
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 853
    :cond_10
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 855
    goto/16 :goto_0

    .line 857
    :pswitch_11
    if-nez p2, :cond_11

    .line 858
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 860
    :cond_11
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 862
    goto/16 :goto_0

    .line 864
    :pswitch_12
    if-nez p2, :cond_12

    .line 865
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 867
    :cond_12
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 869
    goto/16 :goto_0

    .line 871
    :pswitch_13
    if-nez p2, :cond_13

    .line 872
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 874
    :cond_13
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 876
    goto/16 :goto_0

    .line 878
    :pswitch_14
    if-nez p2, :cond_14

    .line 879
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 881
    :cond_14
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 883
    goto/16 :goto_0

    .line 885
    :pswitch_15
    if-nez p2, :cond_15

    .line 886
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 888
    :cond_15
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 890
    goto/16 :goto_0

    .line 892
    :pswitch_16
    if-nez p2, :cond_16

    .line 893
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 895
    :cond_16
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 897
    goto/16 :goto_0

    .line 899
    :pswitch_17
    if-nez p2, :cond_17

    .line 900
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 902
    :cond_17
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 904
    goto/16 :goto_0

    .line 906
    :pswitch_18
    if-nez p2, :cond_18

    .line 907
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 909
    :cond_18
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 911
    goto/16 :goto_0

    .line 913
    :pswitch_19
    if-nez p2, :cond_19

    .line 914
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 916
    :cond_19
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 918
    goto/16 :goto_0

    .line 920
    :pswitch_1a
    if-nez p2, :cond_1a

    .line 921
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 923
    :cond_1a
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 925
    goto/16 :goto_0

    .line 927
    :pswitch_1b
    if-nez p2, :cond_1b

    .line 928
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 930
    :cond_1b
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 932
    goto/16 :goto_0

    .line 934
    :pswitch_1c
    if-nez p2, :cond_1c

    .line 935
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 937
    :cond_1c
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 939
    goto/16 :goto_0

    .line 941
    :pswitch_1d
    if-nez p2, :cond_1d

    .line 942
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 944
    :cond_1d
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 946
    goto/16 :goto_0

    .line 948
    :pswitch_1e
    if-nez p2, :cond_1e

    .line 949
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 951
    :cond_1e
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 953
    goto/16 :goto_0

    .line 955
    :pswitch_1f
    if-nez p2, :cond_1f

    .line 956
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 958
    :cond_1f
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 960
    goto/16 :goto_0

    .line 962
    :pswitch_20
    if-nez p2, :cond_20

    .line 963
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 965
    :cond_20
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 967
    goto/16 :goto_0

    .line 969
    :pswitch_21
    if-nez p2, :cond_21

    .line 970
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 972
    :cond_21
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 974
    goto/16 :goto_0

    .line 976
    :pswitch_22
    if-nez p2, :cond_22

    .line 977
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020185

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 979
    :cond_22
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 981
    goto/16 :goto_0

    .line 983
    :pswitch_23
    if-nez p2, :cond_23

    .line 984
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 986
    :cond_23
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 988
    goto/16 :goto_0

    .line 990
    :pswitch_24
    if-nez p2, :cond_24

    .line 991
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 993
    :cond_24
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 995
    goto/16 :goto_0

    .line 997
    :pswitch_25
    if-nez p2, :cond_25

    .line 998
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1000
    :cond_25
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1002
    goto/16 :goto_0

    .line 1004
    :pswitch_26
    if-nez p2, :cond_26

    .line 1005
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1007
    :cond_26
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1009
    goto/16 :goto_0

    .line 1011
    :pswitch_27
    if-nez p2, :cond_27

    .line 1012
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1014
    :cond_27
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1016
    goto/16 :goto_0

    .line 1018
    :pswitch_28
    if-nez p2, :cond_28

    .line 1019
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1021
    :cond_28
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1023
    goto/16 :goto_0

    .line 1025
    :pswitch_29
    if-nez p2, :cond_29

    .line 1026
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1028
    :cond_29
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1030
    goto/16 :goto_0

    .line 1032
    :pswitch_2a
    if-nez p2, :cond_2a

    .line 1033
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1035
    :cond_2a
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1037
    goto/16 :goto_0

    .line 1039
    :pswitch_2b
    if-nez p2, :cond_2b

    .line 1040
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1042
    :cond_2b
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1044
    goto/16 :goto_0

    .line 1046
    :pswitch_2c
    if-nez p2, :cond_2c

    .line 1047
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1049
    :cond_2c
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1051
    goto/16 :goto_0

    .line 1053
    :pswitch_2d
    if-nez p2, :cond_2d

    .line 1054
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1056
    :cond_2d
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1058
    goto/16 :goto_0

    .line 1060
    :pswitch_2e
    if-nez p2, :cond_2e

    .line 1061
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1063
    :cond_2e
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1065
    goto/16 :goto_0

    .line 1067
    :pswitch_2f
    if-nez p2, :cond_2f

    .line 1068
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1070
    :cond_2f
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1072
    goto/16 :goto_0

    .line 1074
    :pswitch_30
    if-nez p2, :cond_30

    .line 1075
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1077
    :cond_30
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1079
    goto/16 :goto_0

    .line 1081
    :pswitch_31
    if-nez p2, :cond_31

    .line 1082
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1084
    :cond_31
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1086
    goto/16 :goto_0

    .line 1088
    :pswitch_32
    if-nez p2, :cond_32

    .line 1089
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1091
    :cond_32
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1093
    goto/16 :goto_0

    .line 1095
    :pswitch_33
    if-nez p2, :cond_33

    .line 1096
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1098
    :cond_33
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1100
    goto/16 :goto_0

    .line 1102
    :pswitch_34
    if-nez p2, :cond_34

    .line 1103
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1105
    :cond_34
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1107
    goto/16 :goto_0

    .line 1109
    :pswitch_35
    if-nez p2, :cond_35

    .line 1110
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1112
    :cond_35
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1114
    goto/16 :goto_0

    .line 1116
    :pswitch_36
    if-nez p2, :cond_36

    .line 1117
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1119
    :cond_36
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1121
    goto/16 :goto_0

    .line 1123
    :pswitch_37
    if-nez p2, :cond_37

    .line 1124
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1126
    :cond_37
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1128
    goto/16 :goto_0

    .line 1130
    :pswitch_38
    if-nez p2, :cond_38

    .line 1131
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1133
    :cond_38
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1135
    goto/16 :goto_0

    .line 1137
    :pswitch_39
    if-nez p2, :cond_39

    .line 1138
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1140
    :cond_39
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1142
    goto/16 :goto_0

    .line 1144
    :pswitch_3a
    if-nez p2, :cond_3a

    .line 1145
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1147
    :cond_3a
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1149
    goto/16 :goto_0

    .line 1151
    :pswitch_3b
    if-nez p2, :cond_3b

    .line 1152
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1154
    :cond_3b
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1156
    goto/16 :goto_0

    .line 1161
    :cond_3c
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method

.method public getStyleList()[I
    .locals 4

    .prologue
    const v3, 0x7f07000b

    .line 236
    const-string v0, "BeautyMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StyleSuite From CDF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "China"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->CHINA_STYLE:[I

    .line 254
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const-string v0, "APAC"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->APAC_STYLE:[I

    goto :goto_0

    .line 244
    :cond_1
    const-string v0, "India"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    sget-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->INDIA_STYLE:[I

    goto :goto_0

    .line 247
    :cond_2
    const-string v0, "Brazil"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    sget-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->BRAZIL_STYLE:[I

    goto :goto_0

    .line 250
    :cond_3
    const-string v0, "Europe"

    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    sget-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->EUROPE_STYLE:[I

    goto :goto_0

    .line 254
    :cond_4
    sget-object v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->GENERIC_STYLE:[I

    goto :goto_0
.end method

.method public getStyleName(I)Ljava/lang/String;
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 282
    packed-switch p1, :pswitch_data_0

    .line 354
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :pswitch_5
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_6
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :pswitch_7
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :pswitch_8
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :pswitch_9
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public initEngine()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1170
    invoke-static {}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->init()I

    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;-><init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorServiceDraw:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;-><init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1175
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1176
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorServiceDraw:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1177
    return-void
.end method

.method public realAddYuv([BLandroid/graphics/Rect;I[II)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "size"    # Landroid/graphics/Rect;
    .param p3, "style"    # I
    .param p4, "faceIndex"    # [I
    .param p5, "angle"    # I

    .prologue
    .line 1210
    iget-boolean v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mShutdown:Z

    if-eqz v1, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1214
    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getRealStyle(I)Lcom/sonymobile/android/facebeauty/engine/Style;

    .line 1215
    new-instance v0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;

    invoke-direct {v0}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;-><init>()V

    .line 1216
    .local v0, "unit":Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->setTimeStamp(J)V

    .line 1217
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->setBuffer([B)V

    .line 1218
    invoke-virtual {v0, p2}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->setSize(Landroid/graphics/Rect;)V

    .line 1219
    invoke-virtual {v0, p3}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->setStyleApply(I)V

    .line 1220
    if-eqz p4, :cond_1

    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->setFaceIndexApply([I)V

    .line 1222
    invoke-virtual {v0, p5}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->setAngle(I)V

    .line 1223
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFrameBuffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1224
    .end local v0    # "unit":Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1220
    .restart local v0    # "unit":Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public realClear()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFrameBuffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1232
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mResultBuffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1233
    return-void
.end method

.method public realRelease()V
    .locals 0

    .prologue
    .line 1237
    return-void
.end method

.method public realSetCallback(Lcom/sonymobile/android/facebeauty/engine/FaceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/android/facebeauty/engine/FaceCallback;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFaceCallBack:Lcom/sonymobile/android/facebeauty/engine/FaceCallback;

    .line 1206
    return-void
.end method

.method public releaseEngine()V
    .locals 2

    .prologue
    .line 1181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mShutdown:Z

    .line 1182
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFrameBuffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1183
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mResultBuffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1184
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorServiceDraw:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1185
    iget-object v1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1187
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1188
    .local v0, "exe":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;-><init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1201
    return-void
.end method
