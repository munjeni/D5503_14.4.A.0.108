.class public Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;,
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;
    }
.end annotation


# static fields
.field public static final DCF_DIR_NAME_FREE_WORD:Ljava/lang/String; = "ANDRO"

.field public static final DCF_FILE_NAME_FREE_WORD_MOVIE:Ljava/lang/String; = "MOV_"

.field public static final DCF_FILE_NAME_FREE_WORD_PICTURE:Ljava/lang/String; = "DSC_"

.field public static final LENGTH_OF_DIR_NAME:I = 0x8

.field public static final LENGTH_OF_FILE_NAME:I = 0xc

.field public static final MAX_DIR_NAME:I = 0x3e7

.field public static final MAX_FILE_NAME:I = 0x270f

.field public static final MIN_DIR_NAME:I = 0x64

.field public static final MIN_FILE_NAME:I = 0x1

.field private static final SCAN_WAIT_TIME:I = 0x1388

.field private static final SCAN_WAIT_TIME_FOR_MEDIASCAN:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "DcfPathBuilder"

.field public static final TYPE_PICTURE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final VOLUME_EXTERNAL:Ljava/lang/String; = "external"

.field private static sInstance:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;


# instance fields
.field private mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

.field private mDirNo:Ljava/lang/Integer;

.field private mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

.field private mFileNo:Ljava/lang/Integer;

.field private mIsScanned:Z

.field private mIsScanning:Z

.field private mPathScanner:Ljava/lang/Thread;

.field private mRootDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->sInstance:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 61
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 68
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    .line 77
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 80
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z

    .line 148
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    .line 149
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    .line 150
    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    return p1
.end method

.method private createImageDir()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 324
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 325
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-object v1

    .line 328
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ANDRO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->sInstance:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    return-object v0
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 429
    const/4 v7, 0x0

    .line 430
    .local v7, "result":Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 432
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 434
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 439
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_1
    return v7

    .line 439
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private searchImageDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    const/16 v4, 0x64

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$402(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;I)I

    .line 285
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "fileList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 288
    :cond_0
    const/16 v3, 0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->createImageDir()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "dirName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 291
    .end local v0    # "dirName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mDirNo:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$400(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mDirName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$500(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0    # "dirName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->searchImageNo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchImageNo(Ljava/lang/String;)V
    .locals 4
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    const/4 v3, 0x1

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->access$602(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;I)I

    .line 308
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "fileList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 311
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFileNo:I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->access$600(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private startScan()V
    .locals 3

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 167
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)V

    const-string v2, "DCF Path Builder"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 363
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-nez v4, :cond_1

    .line 364
    const/4 v2, 0x0

    .line 366
    .local v2, "waitingTime":I
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-nez v4, :cond_1

    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    .end local v2    # "waitingTime":I
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 386
    const-string v1, ""

    .line 387
    .local v1, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 388
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x270f

    if-le v4, v5, :cond_4

    .line 389
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->createImageDir()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-nez v4, :cond_3

    .line 410
    :goto_1
    monitor-exit p0

    return-object v3

    .line 369
    .end local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "waitingTime":I
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to scan."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "waitingTime":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 378
    .restart local v2    # "waitingTime":I
    :cond_2
    add-int/lit16 v2, v2, 0x1388

    .line 379
    const v4, 0xea60

    if-le v2, v4, :cond_0

    goto :goto_0

    .line 393
    .end local v2    # "waitingTime":I
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 396
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%03d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:Ljava/lang/Integer;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ANDRO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 400
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DSC_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%04d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 410
    goto/16 :goto_1

    .line 403
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MOV_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    goto :goto_2

    .line 412
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_5
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    if-nez v3, :cond_6

    .line 414
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not yet scanned."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 418
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to scan."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanning:Z

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "DcfPathBuilder"

    const-string v2, "Cancel failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getDcimDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationToSave()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 493
    :goto_0
    if-eqz v0, :cond_0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".JPG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    return-object v0

    .line 490
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getVideoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    const-string v0, "/dev/null"

    .line 509
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 514
    :goto_0
    if-nez v0, :cond_0

    .line 515
    const-string v0, "/dev/null"

    .line 518
    :cond_0
    return-object v0

    .line 511
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isAlreadyLastFileExist()Z
    .locals 13

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "photoPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%03d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ANDRO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/DSC_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%04d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x270f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".JPG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "photoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    const/4 v7, 0x1

    .line 258
    :goto_0
    return v7

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "videoPathNoExt":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%03d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ANDRO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/MOV_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%04d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x270f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "videoPathMp4":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v3, "videoFileMp4":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    const/4 v7, 0x1

    goto :goto_0

    .line 252
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "videoPathMms":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v2, "videoFileMms":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 255
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 258
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized resetStatus()V
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mIsScanned:Z

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mPathScanner:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public returnUnusedFile()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:Ljava/lang/Integer;

    .line 351
    :cond_0
    return-void
.end method

.method public final search()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->searchDcfRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->searchImageDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchDcfRoot()Z
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    .line 213
    .local v1, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    const/4 v1, 0x0

    .line 218
    :cond_0
    return v1
.end method

.method public setDestinationToSave(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRootDirectory:Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 460
    return-void
.end method
