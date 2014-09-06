.class public Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
.super Ljava/lang/Object;
.source "TakenStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field public contentType:I

.field public dateTaken:J

.field public duration:J

.field public final fileExtension:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public final height:I

.field public final isStorageFullReached:Z

.field public final location:Landroid/location/Location;

.field private mRequestId:I

.field public maxDurationMills:J

.field public maxFileSizeBytes:J

.field public final mimeType:Ljava/lang/String;

.field public final orientation:I

.field public pictureIndex:I

.field public final scene:I

.field public somcType:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJIILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .param p1, "index_in"    # I
    .param p2, "dateTaken_in"    # J
    .param p4, "scene_in"    # I
    .param p5, "orientation_in"    # I
    .param p6, "location_in"    # Landroid/location/Location;
    .param p7, "width_in"    # I
    .param p8, "height_in"    # I
    .param p9, "mimeType_in"    # Ljava/lang/String;
    .param p10, "fileExtension_in"    # Ljava/lang/String;
    .param p11, "type"    # I
    .param p12, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJII",
            "Landroid/location/Location;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p13, "callback_in":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mRequestId:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->duration:J

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->pictureIndex:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->filePath:Ljava/lang/String;

    .line 93
    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->pictureIndex:I

    .line 94
    iput-wide p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    .line 95
    iput p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->scene:I

    .line 96
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    .line 97
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    .line 98
    iput p7, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    .line 99
    iput p8, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    .line 100
    iput-object p9, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    .line 101
    iput-object p10, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->fileExtension:Ljava/lang/String;

    .line 102
    iput-object p13, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    .line 103
    iput p11, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->somcType:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->maxDurationMills:J

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->maxFileSizeBytes:J

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->isStorageFullReached:Z

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->contentType:I

    .line 110
    return-void
.end method

.method public constructor <init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/ref/WeakReference;I)V
    .locals 3
    .param p1, "dateTaken_in"    # J
    .param p3, "orientation_in"    # I
    .param p4, "location_in"    # Landroid/location/Location;
    .param p5, "width_in"    # I
    .param p6, "height_in"    # I
    .param p7, "mimeType_in"    # Ljava/lang/String;
    .param p8, "fileExtension_in"    # Ljava/lang/String;
    .param p9, "filePath_in"    # Ljava/lang/String;
    .param p10, "maxDurationMills_in"    # J
    .param p12, "maxFileSizeBytes_in"    # J
    .param p14, "isStorageFullReached_in"    # Z
    .param p16, "contentType_in"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Landroid/location/Location;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p15, "callback_in":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mRequestId:I

    .line 37
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->duration:J

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->pictureIndex:I

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->filePath:Ljava/lang/String;

    .line 126
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    .line 127
    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    .line 128
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    .line 129
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    .line 130
    iput p6, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    .line 131
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    .line 132
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->fileExtension:Ljava/lang/String;

    .line 133
    iput-object p9, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->filePath:Ljava/lang/String;

    .line 134
    iput-wide p10, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->maxDurationMills:J

    .line 135
    iput-wide p12, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->maxFileSizeBytes:J

    .line 136
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->isStorageFullReached:Z

    .line 137
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    .line 138
    move/from16 v0, p16

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->contentType:I

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->somcType:I

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->scene:I

    .line 143
    return-void
.end method


# virtual methods
.method public getRequestId()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mRequestId:I

    return v0
.end method

.method public isCallbackAvailable()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyComplete(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;

    .line 178
    .local v0, "cb":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public notifyFailed(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;

    .line 164
    .local v0, "cb":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;
    if-eqz v0, :cond_0

    .line 165
    const/4 v1, 0x0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "cb":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->callback:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method public setDataTaken(J)V
    .locals 0
    .param p1, "dataTakenIn"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    .line 147
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mRequestId:I

    .line 193
    return-void
.end method
