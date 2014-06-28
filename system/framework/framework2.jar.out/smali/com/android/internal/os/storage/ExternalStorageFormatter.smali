.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/storage/ExternalStorageFormatter$InternalStorageFormatterStringGetter;,
        Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;,
        Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final FORMAT_ALL_MEDIA_AND_FACTORY_RESET:Ljava/lang/String; = "com.sonymobile.storage.FORMAT_ALL_MEDIA_AND_FACTORY_RESET"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private mAlwaysReset:Z

.field public mExtCardPath:Ljava/lang/String;

.field private mExtStoragePath:Ljava/lang/String;

.field private mFactoryReset:Z

.field private mFormatAllMediaAndFactoryReset:Z

.field private mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 58
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 62
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    .line 68
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-direct {v0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    .line 70
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 93
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 376
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->deleteLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatExtCard()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private deleteLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 425
    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 428
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private formatExtCard()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 432
    const-string v3, ""

    .line 433
    .local v3, "state":Ljava/lang/String;
    const/4 v0, 0x0

    .line 435
    .local v0, "doFormat":Z
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 436
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    const-string v5, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "bad_removal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 441
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 442
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    .line 443
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getStringGetter(Ljava/lang/String;)Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    .line 446
    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 450
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v4}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :goto_1
    return-void

    :cond_1
    move v0, v4

    .line 437
    goto :goto_0

    .line 451
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service, disconnect unsuccesful"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    iget-boolean v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    if-eqz v4, :cond_2

    .line 454
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V

    goto :goto_1

    .line 460
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    goto :goto_1

    .line 463
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    if-eqz v4, :cond_5

    .line 464
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V

    goto :goto_1
.end method

.method private getExtCardPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 471
    const/4 v1, 0x0

    .line 473
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;

    move-result-object v1

    .line 474
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 481
    :cond_0
    :goto_0
    return-object v1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ExternalStorageFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get external card path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStringGetter(Ljava/lang/String;)Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 401
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    .line 403
    .local v1, "storageType":Landroid/os/storage/StorageManager$StorageType;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 408
    :goto_0
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    new-instance v2, Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;

    invoke-direct {v2, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    .line 416
    :goto_1
    return-object v2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ExternalStorageFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get volume type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    new-instance v2, Lcom/android/internal/os/storage/ExternalStorageFormatter$InternalStorageFormatterStringGetter;

    invoke-direct {v2, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter$InternalStorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    goto :goto_1

    .line 416
    :cond_1
    new-instance v2, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-direct {v2, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    goto :goto_1
.end method

.method private stopSelfInternal()V
    .locals 1

    .prologue
    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    .line 421
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 422
    return-void
.end method


# virtual methods
.method fail(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V

    .line 187
    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 304
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 305
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 306
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 311
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 308
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 106
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 109
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 174
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 124
    :cond_0
    :goto_0
    const-string v1, "always_reset"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 128
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 129
    .local v0, "extStorageEmulated":Z
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    if-eqz v1, :cond_5

    .line 130
    if-eqz v0, :cond_4

    .line 134
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getStringGetter(Ljava/lang/String;)Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    .line 148
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_2

    .line 149
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 150
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 153
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 154
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatExtCard()V

    .line 158
    :goto_2
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 161
    :cond_2
    const/4 v1, 0x3

    return v1

    .line 118
    .end local v0    # "extStorageEmulated":Z
    :cond_3
    const-string v1, "com.sonymobile.storage.FORMAT_ALL_MEDIA_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    .line 122
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getExtCardPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    goto :goto_0

    .line 137
    .restart local v0    # "extStorageEmulated":Z
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_5
    const-string v1, "storage_volume"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 141
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    goto :goto_2
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 293
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method updateProgressState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 191
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "status":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;->getStringProgressUnmounting()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 198
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    if-eqz v6, :cond_3

    :cond_1
    :goto_0
    invoke-interface {v1, v4, v5, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :cond_2
    :goto_1
    return-void

    .line 198
    .restart local v1    # "mountService":Landroid/os/storage/IMountService;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V

    goto :goto_1

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :cond_5
    const-string v3, "nofs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 211
    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;->getStringProgressErasing()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 213
    .restart local v1    # "mountService":Landroid/os/storage/IMountService;
    if-eqz v1, :cond_7

    .line 214
    new-instance v3, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 271
    :cond_7
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Unable to locate IMountService"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :cond_8
    const-string v3, "bad_removal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 274
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;->getStringBadRemoval()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto :goto_1

    .line 275
    :cond_9
    const-string v3, "checking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    const-string v3, "removed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 280
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;->getStringMediaRemoved()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_1

    .line 281
    :cond_a
    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 282
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStringGetter:Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;->getStringMediaShared()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_1

    .line 284
    :cond_b
    const v3, 0x10404ea

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    .line 285
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown storage state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V

    goto/16 :goto_1
.end method
