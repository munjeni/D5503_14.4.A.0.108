.class Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.super Ljava/lang/Object;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    .line 316
    const v0, 0x10404e6

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    .line 340
    const v0, 0x10404e5

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 320
    const v0, 0x10404e7

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    .line 324
    const v0, 0x10404e8

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 328
    const v0, 0x10404e9

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 332
    const v0, 0x10404e4

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 336
    const v0, 0x10404e3

    return v0
.end method
