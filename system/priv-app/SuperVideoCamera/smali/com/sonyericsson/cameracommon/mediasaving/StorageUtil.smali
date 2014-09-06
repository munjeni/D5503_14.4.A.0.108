.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v3, "mountedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 58
    .local v4, "value":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v4    # "value":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static getPathFromConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    sget v9, Lcom/sonyericsson/cameracommon/R$string;->default_destination_to_save:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "defaultStorage":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v6

    .line 214
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 215
    .local v7, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v8

    .line 217
    .local v8, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "storage":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 223
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "storage":Ljava/lang/String;
    .end local v7    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v8    # "type":Landroid/os/storage/StorageManager$StorageType;
    :goto_1
    return-object v4

    .line 214
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "storage":Ljava/lang/String;
    .restart local v7    # "storageVolume":Landroid/os/storage/StorageVolume;
    .restart local v8    # "type":Landroid/os/storage/StorageManager$StorageType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "storage":Ljava/lang/String;
    .end local v7    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v8    # "type":Landroid/os/storage/StorageManager$StorageType;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getPathFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 78
    .local v0, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Landroid/os/storage/StorageManager$StorageType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageManager;->getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v3

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "path":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 146
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .local v6, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v13, v6, v8

    .line 147
    .local v13, "storage":Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "mountPoint":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v3, v10

    .line 151
    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 156
    .end local v10    # "mountPoint":Ljava/lang/String;
    .end local v13    # "storage":Landroid/os/storage/StorageVolume;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "r":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 161
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 170
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getType(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 181
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "pathFromContent":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    array-length v9, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_6

    aget-object v13, v6, v8

    .line 184
    .restart local v13    # "storage":Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 185
    .restart local v10    # "mountPoint":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v10

    goto :goto_0

    .line 183
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 196
    .end local v10    # "mountPoint":Ljava/lang/String;
    .end local v12    # "pathFromContent":Ljava/lang/String;
    .end local v13    # "storage":Landroid/os/storage/StorageVolume;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public static getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    .line 90
    .local v1, "type":Landroid/os/storage/StorageManager$StorageType;
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStorageTypeFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;)Landroid/os/storage/StorageManager$StorageType;
    .locals 2
    .param p0, "storage"    # Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$SaveDestination:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    sget-object v0, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    sget-object v0, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v1

    .line 108
    .local v1, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    return-object v2
.end method

.method public static getVolumeState(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "envState":Ljava/lang/String;
    return-object v0
.end method
