.class public Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;
.super Ljava/lang/Object;
.source "TimeStampPathFactory.java"


# static fields
.field private static final PATH_FORMAT:Ljava/lang/String; = "%s/%s%04d%02d%02d%02d%02d%02d%s"

.field private static final RETRY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPrefix:Ljava/lang/String;

.field private final mSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->mPrefix:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->mSuffix:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private static makeDirectories(Ljava/lang/String;)Z
    .locals 3
    .param p0, "directory"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;J)Ljava/lang/String;
    .locals 12
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "timeStampInMillis"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 51
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->makeDirectories(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->TAG:Ljava/lang/String;

    const-string v5, "Failed to make directory for Timeshift video content."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x0

    .local v2, "tryCount":I
    :goto_1
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    .line 59
    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, p2

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 60
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s/%s%04d%02d%02d%02d%02d%02d%s"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->mPrefix:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x3

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x6

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->mSuffix:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generated path already exists. Try to generate next path. tryCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 79
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->TAG:Ljava/lang/String;

    const-string v5, "Failed to generate path. retry:10"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 80
    goto/16 :goto_0
.end method
