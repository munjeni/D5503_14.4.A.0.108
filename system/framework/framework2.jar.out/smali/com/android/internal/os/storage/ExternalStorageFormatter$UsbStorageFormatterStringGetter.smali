.class Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;
.super Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    .line 348
    const v0, 0x104065b

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    .line 372
    const v0, 0x104065a

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 352
    const v0, 0x1040658

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    .line 356
    const v0, 0x104065c

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 360
    const v0, 0x104065d

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 364
    const v0, 0x1040657

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 368
    const v0, 0x1040659

    return v0
.end method
