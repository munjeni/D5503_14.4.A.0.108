.class Lcom/android/internal/os/storage/ExternalStorageFormatter$InternalStorageFormatterStringGetter;
.super Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalStorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$InternalStorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringFormatError()I
    .locals 1

    .prologue
    .line 396
    const v0, 0x1040665

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 380
    const v0, 0x1040666

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 384
    const v0, 0x1040667

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 388
    const v0, 0x1040664

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 392
    const v0, 0x1040663

    return v0
.end method
