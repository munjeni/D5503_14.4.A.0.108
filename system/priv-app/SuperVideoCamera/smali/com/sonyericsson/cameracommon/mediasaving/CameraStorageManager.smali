.class public Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$ExternalMemoryListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_GET_STATFS:I = 0xbb8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentStorage:Ljava/lang/String;

.field private final mLastStorageStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 72
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 73
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 74
    .local v3, "storage":Ljava/lang/String;
    const-wide/16 v4, 0x0

    const-string v6, ""

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "storage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkFsWritable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 228
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    goto :goto_0
.end method

.method private getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-object v0
.end method

.method private isReady(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    const/4 v0, 0x0

    .line 446
    if-nez p1, :cond_0

    .line 455
    :goto_0
    return v0

    .line 449
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 453
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setLastStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->updateStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    .line 212
    return-void
.end method

.method private updateAllStorageState(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "targetStorage"    # Ljava/lang/String;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    .line 107
    .local v1, "currentStorage":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 109
    .local v4, "storage":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->setDestinationToSave(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    invoke-direct {p0, v4, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 107
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const-wide/16 v5, 0x0

    const-string v7, ""

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_1

    .line 116
    .end local v4    # "storage":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->setDestinationToSave(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 6
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeState(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "state":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "availableSize":J
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 185
    .local v2, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_0
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 187
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 197
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v4, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setAvailableStorageSize(J)V

    .line 201
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setLastStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    .line 202
    return-object v2

    .line 148
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_2
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 150
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_3
    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 152
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_4
    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 154
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_5
    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 155
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 156
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_6
    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 157
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 158
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_7
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 159
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 160
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_8
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 161
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->checkFsWritable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAvailableStorageSize(Ljava/lang/String;J)J

    move-result-wide v0

    .line 164
    const-wide/32 v4, 0x25800

    cmp-long v4, v0, v4

    if-lez v4, :cond_b

    .line 165
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isAlreadyLastFileExist()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 166
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto/16 :goto_0

    .line 167
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_9
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->searchDcfRoot()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 168
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto/16 :goto_0

    .line 170
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_a
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto/16 :goto_0

    .line 172
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_b
    const-wide/32 v4, 0xf000

    cmp-long v4, v0, v4

    if-lez v4, :cond_c

    .line 173
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto/16 :goto_0

    .line 175
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_c
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto/16 :goto_0

    .line 178
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_d
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto/16 :goto_0

    .line 181
    .end local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_e
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v2    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto/16 :goto_0

    .line 189
    :cond_f
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto/16 :goto_1
.end method


# virtual methods
.method public addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 240
    return-void
.end method

.method public getStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 327
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 328
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;

    invoke-direct {v5, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 330
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/StatFs;>;"
    const/4 v4, 0x0

    .line 333
    .local v4, "statFs":Landroid/os/StatFs;
    const-wide/16 v5, 0xbb8

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/StatFs;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 345
    :goto_0
    return-object v4

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "GetStatFsTask has been interrupted."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 336
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 337
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "GetStatFsTask failed."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 338
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 339
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "GetStatFsTask failed."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 341
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v5

    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 342
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v5
.end method

.method public hasEnoughFreeSpace()Z
    .locals 4

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v1

    .line 417
    .local v1, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 422
    const/4 v0, 0x0

    .line 426
    .local v0, "hasEnoughFreeSpace":Z
    :goto_0
    return v0

    .line 419
    .end local v0    # "hasEnoughFreeSpace":Z
    :pswitch_0
    const/4 v0, 0x1

    .line 420
    .restart local v0    # "hasEnoughFreeSpace":Z
    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isCurrentStorageExternal()Z
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 395
    .local v0, "storageType":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFsWritable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    const/4 v1, 0x0

    .line 314
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 3

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 470
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 480
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 478
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 436
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z

    move-result v1

    return v1
.end method

.method public isStorageExternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 400
    .local v0, "storageType":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStorageInternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 405
    .local v0, "storageType":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isToggledStorageReady()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->isToggledStorageReady()Z

    move-result v0

    return v0
.end method

.method public onMediaScanFinished()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAndNotifyStateChanged(Ljava/lang/String;Z)V

    .line 236
    return-void
.end method

.method public onStorageCheckRequested(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "storage"    # Ljava/lang/String;

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Ljava/lang/String;JLjava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 102
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->pause()V

    .line 486
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->release()V

    .line 490
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 244
    return-void
.end method

.method public requestCheckCurrent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-virtual {v1, v2, v0, v4, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 296
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 269
    const-string v0, ""

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Ljava/lang/String;JLjava/lang/String;)V

    .line 270
    return-void
.end method

.method public setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V
    .locals 4
    .param p1, "type"    # Landroid/os/storage/StorageManager$StorageType;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    .line 285
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->setDestinationToSave(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setCurrentStorage(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_0
.end method

.method public updateAvailableStorageSize(Ljava/lang/String;J)J
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reservedSize"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 357
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v7

    .line 360
    .local v7, "statFs":Landroid/os/StatFs;
    if-nez v7, :cond_1

    .line 361
    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get StatFs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    :goto_0
    return-wide v0

    .line 366
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v8}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeState(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "envState":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 373
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-gt v8, v9, :cond_2

    .line 374
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 375
    .local v4, "blocksize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v2, v8

    .line 386
    .local v2, "blocknum":J
    :goto_1
    mul-long v8, v4, v2

    sub-long/2addr v8, p2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 390
    .local v0, "availableSize":J
    goto :goto_0

    .line 378
    .end local v0    # "availableSize":J
    .end local v2    # "blocknum":J
    .end local v4    # "blocksize":J
    :cond_2
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 379
    .restart local v4    # "blocksize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .restart local v2    # "blocknum":J
    goto :goto_1
.end method

.method public updateRemain(JZ)J
    .locals 4
    .param p1, "reservedSize"    # J
    .param p3, "forceNotify"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 259
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v0

    return-wide v0
.end method
