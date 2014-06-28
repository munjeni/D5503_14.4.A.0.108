.class public abstract Lcom/android/settings/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/StorageInfo$1;,
        Lcom/android/settings/StorageInfo$UsbStorageInfo;,
        Lcom/android/settings/StorageInfo$InternalStorageInfo;,
        Lcom/android/settings/StorageInfo$SdCardInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method public static getStorageInfo(Landroid/os/storage/StorageManager;Ljava/lang/String;)Lcom/android/settings/StorageInfo;
    .locals 5
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 26
    if-nez p1, :cond_0

    new-instance v2, Lcom/android/settings/StorageInfo$SdCardInfo;

    invoke-direct {v2}, Lcom/android/settings/StorageInfo$SdCardInfo;-><init>()V

    .line 49
    :goto_0
    return-object v2

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    .local v1, "typeStorage":Landroid/os/storage/StorageManager$StorageType;
    sget-object v2, Lcom/android/settings/StorageInfo$1;->$SwitchMap$android$os$storage$StorageManager$StorageType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 46
    const-string v2, "StorageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storage type unknown ! path is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Lcom/android/settings/StorageInfo$SdCardInfo;

    invoke-direct {v2}, Lcom/android/settings/StorageInfo$SdCardInfo;-><init>()V

    goto :goto_0

    .line 31
    .end local v1    # "typeStorage":Landroid/os/storage/StorageManager$StorageType;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "StorageInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getStorageInfo, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , path is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v2, Lcom/android/settings/StorageInfo$SdCardInfo;

    invoke-direct {v2}, Lcom/android/settings/StorageInfo$SdCardInfo;-><init>()V

    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "typeStorage":Landroid/os/storage/StorageManager$StorageType;
    :pswitch_0
    new-instance v2, Lcom/android/settings/StorageInfo$InternalStorageInfo;

    invoke-direct {v2}, Lcom/android/settings/StorageInfo$InternalStorageInfo;-><init>()V

    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v2, Lcom/android/settings/StorageInfo$SdCardInfo;

    invoke-direct {v2}, Lcom/android/settings/StorageInfo$SdCardInfo;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_2
    new-instance v2, Lcom/android/settings/StorageInfo$UsbStorageInfo;

    invoke-direct {v2}, Lcom/android/settings/StorageInfo$UsbStorageInfo;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getConfirmUnmountText()I
.end method

.method public abstract getConfirmUnmountTitle()I
.end method

.method public abstract getErrorUnmountText()I
.end method

.method public abstract getErrorUnmountTitle()I
.end method

.method public abstract getFormatPreferenceSummary()I
.end method

.method public abstract getFormatPreferenceTitle()I
.end method

.method public abstract getGeExplanation()I
.end method

.method public abstract getMediaFormatButton()I
.end method

.method public abstract getMediaFormatFinalText()I
.end method

.method public abstract getMediaFormatPrimaryText()I
.end method

.method public abstract getMediaFormatTitle()I
.end method

.method public abstract getMountToggleEjectSummary()I
.end method

.method public abstract getMountToggleEjectTitle()I
.end method

.method public abstract getMountToggleInsertSummary()I
.end method

.method public abstract getMountToggleMountSummary()I
.end method

.method public abstract getMountToggleMountTitle()I
.end method

.method public abstract getUnmountInformText()I
.end method
