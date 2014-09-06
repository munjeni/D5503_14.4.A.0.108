.class public Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$GeoMode;
    }
.end annotation


# static fields
.field private static final MSG_ON_STORE_CALLBACK:I = 0x1

.field public static final STATUS_GPS_UNAVAILABLE:I = 0x1

.field public static final STATUS_MEM_ERROR:I = 0x21

.field public static final STATUS_PREPARED:I = 0x11

.field public static final STATUS_STORAGE_UNAVAILABLE:I = 0x0

.field public static final STORE_FAIL:I = -0x1

.field public static final STORE_FAIL_MEMORY_FULL:I = -0x2

.field public static final STORE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SavingTaskManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCountOfSavingDataStack:I

.field private final mIsOneShotPhoto:Z

.field private mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field public mMode:I

.field protected final mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

.field private final mSavingTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field private mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

.field private mStoreVideoThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Z)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p3, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .param p4, "isOneShotPhoto"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 75
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    .line 80
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMode:I

    .line 103
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mCountOfSavingDataStack:I

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/LinkedList;

    .line 461
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    .line 465
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 466
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 473
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 478
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    .line 479
    iput-boolean p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z

    .line 480
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/net/Uri;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onNotifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/location/Location;
    .param p4, "x4"    # I
    .param p5, "x5"    # J
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .prologue
    .line 56
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->insertPictureContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->cancelPhotoSavingTask(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JIIJLjava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/location/Location;
    .param p4, "x4"    # J
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # J
    .param p10, "x8"    # Ljava/lang/String;
    .param p11, "x9"    # Ljava/lang/String;
    .param p12, "x10"    # I

    .prologue
    .line 56
    invoke-direct/range {p0 .. p12}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->insertVideoContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JIIJLjava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private cancelPhotoSavingTask(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 694
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .line 695
    .local v1, "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 697
    .end local v1    # "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 698
    return-void
.end method

.method private declared-synchronized crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 950
    monitor-enter p0

    const/4 v1, 0x0

    .line 952
    .local v1, "result":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 959
    :goto_0
    monitor-exit p0

    return-object v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 955
    :catch_1
    move-exception v0

    .line 956
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized crInsertAll(Landroid/net/Uri;Ljava/util/List;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 977
    .local p2, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 979
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, p1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 992
    :goto_0
    monitor-exit p0

    return v1

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 977
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 984
    :catch_1
    move-exception v0

    .line 985
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/content/ContentValues;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "dateTaken"    # J
    .param p7, "pictureWidth"    # I
    .param p8, "pictureHeight"    # I

    .prologue
    .line 871
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 873
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "photo":Ljava/io/File;
    const-string v2, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v2, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 878
    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_0
    const-string v2, "datetaken"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 881
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v2, "orientation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    const-string v2, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v2, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 887
    if-eqz p3, :cond_1

    .line 888
    const-string v2, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 889
    const-string v2, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 891
    :cond_1
    const-string v2, "_data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v2, "width"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string v2, "height"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    if-eqz p3, :cond_2

    .line 920
    :cond_2
    return-object v1
.end method

.method public static getNormalizedRotation(I)I
    .locals 6
    .param p0, "degrees"    # I

    .prologue
    const/16 v5, 0xe1

    const/16 v4, 0x87

    .line 1191
    const-string v1, "SavingTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION: sensor value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v0, 0x0

    .line 1194
    .local v0, "normalizedOrientation":I
    rem-int/lit16 p0, p0, 0x168

    .line 1195
    const/16 v1, 0x2d

    if-ge v1, p0, :cond_0

    if-gt p0, v4, :cond_0

    .line 1196
    const/16 v0, 0x5a

    .line 1204
    :goto_0
    const-string v1, "SavingTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION: normalized value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return v0

    .line 1197
    :cond_0
    if-gt v4, p0, :cond_1

    if-gt p0, v5, :cond_1

    .line 1198
    const/16 v0, 0xb4

    goto :goto_0

    .line 1199
    :cond_1
    if-gt v5, p0, :cond_2

    const/16 v1, 0x13b

    if-gt p0, v1, :cond_2

    .line 1200
    const/16 v0, 0x10e

    goto :goto_0

    .line 1202
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertPictureAllContentManager(Ljava/util/List;Ljava/lang/String;Landroid/location/Location;IJIII)I
    .locals 12
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "dateTaken"    # J
    .param p7, "pictureWidth"    # I
    .param p8, "pictureHeight"    # I
    .param p9, "somcType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "IJIII)I"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v11, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 830
    int-to-long v0, v9

    add-long v5, p5, v0

    .line 831
    .local v5, "adjustedDate":J
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->createContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/content/ContentValues;

    move-result-object v10

    .line 835
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "somctype"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 839
    .end local v5    # "adjustedDate":J
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->crInsertAll(Landroid/net/Uri;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private insertPictureContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/net/Uri;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "dateTaken"    # J
    .param p7, "pictureWidth"    # I
    .param p8, "pictureHeight"    # I

    .prologue
    .line 753
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->createContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/content/ContentValues;

    move-result-object v1

    .line 755
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 757
    .local v0, "resultUri":Landroid/net/Uri;
    return-object v0
.end method

.method private insertPictureContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJIII)Landroid/net/Uri;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "dateTaken"    # J
    .param p7, "pictureWidth"    # I
    .param p8, "pictureHeight"    # I
    .param p9, "somcType"    # I

    .prologue
    .line 788
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->createContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/content/ContentValues;

    move-result-object v1

    .line 792
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "somctype"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 795
    .local v0, "resultUri":Landroid/net/Uri;
    return-object v0
.end method

.method private insertVideoContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JIIJLjava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 8
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "dateTaken"    # J
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "duration"    # J
    .param p10, "ext"    # Ljava/lang/String;
    .param p11, "mime"    # Ljava/lang/String;
    .param p12, "somcType"    # I

    .prologue
    .line 1144
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1146
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v2, "video":Ljava/io/File;
    const-string v3, "title"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v3, "_display_name"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1150
    const-string v3, "description"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_0
    const-string v3, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1153
    const-string v3, "date_modified"

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1154
    const-string v3, "artist"

    const-string v4, "<unknown>"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v3, "album"

    const-string v4, "<unknown>"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v3, "mime_type"

    move-object/from16 v0, p11

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v3, "duration"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v3, "_size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v3, "resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const-string v3, "width"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const-string v3, "height"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    if-eqz p3, :cond_1

    .line 1166
    const-string v3, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1167
    const-string v3, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1170
    :cond_1
    const-string v3, "_data"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    if-nez p12, :cond_2

    .line 1173
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1177
    :goto_0
    return-object v3

    .line 1176
    :cond_2
    const-string v3, "somctype"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private onNotifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p2, "result"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 711
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 712
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 713
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    .line 714
    .local v1, "results":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 715
    aput-object p3, v1, v4

    .line 716
    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 717
    const/4 v2, 0x3

    aput-object p1, v1, v2

    .line 718
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 719
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 727
    :cond_0
    return-void
.end method

.method private popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 686
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mCountOfSavingDataStack:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mCountOfSavingDataStack:I

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method

.method private pushPhotoSavingTask([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    .locals 7
    .param p1, "image"    # [B
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "postProcessing"    # Z
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "addToMediaStore"    # Z

    .prologue
    .line 673
    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mCountOfSavingDataStack:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mCountOfSavingDataStack:I

    .line 676
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;-><init>([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    .line 678
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    invoke-direct {v6, p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)V

    .line 679
    .local v6, "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v6, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 681
    return-void
.end method

.method private static removeFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 929
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 930
    .local v0, "lastDotPos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 935
    .end local p0    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 932
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 935
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static sendBroadcastCameraShot(Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isHighSpeedBurst"    # Z

    .prologue
    .line 1222
    if-nez p1, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    if-eqz p0, :cond_0

    .line 1231
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1232
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1236
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1239
    .local v0, "modifiedUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1240
    if-nez p2, :cond_0

    .line 1242
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->sendBroadcastIntent(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1244
    .end local v0    # "modifiedUri":Landroid/net/Uri;
    :cond_2
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1246
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1247
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->sendBroadcastIntent(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1248
    :cond_3
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public canPushStoreTask()Z
    .locals 6

    .prologue
    .line 1265
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1266
    .local v0, "usedMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1267
    const/4 v2, 0x1

    .line 1269
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNextVideoFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 996
    const/4 v1, 0x0

    .line 998
    .local v1, "videoPath":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1010
    :goto_0
    return-object v1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SavingTaskManager"

    const-string v3, "getNextVideoFilePath fail: "

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_access_error_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMemoryError(II)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0
.end method

.method public getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    return-object v0
.end method

.method public insertPicture(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;Z)V
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "isSendIntent"    # Z

    .prologue
    .line 580
    const/4 v12, 0x0

    .line 581
    .local v12, "uri":Landroid/net/Uri;
    const/4 v11, -0x1

    .line 585
    .local v11, "result":I
    :try_start_0
    const-string v2, ""

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    iget-wide v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    iget v7, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    iget v8, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    iget v9, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->somcType:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->insertPictureContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJIII)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 594
    if-eqz v12, :cond_1

    const/4 v11, 0x0

    .line 601
    :goto_0
    if-nez v11, :cond_2

    .line 605
    invoke-virtual {p2, v11, p1, v12}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->notifyComplete(ILjava/lang/String;Landroid/net/Uri;)V

    .line 617
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->sendBroadcastCameraShot(Landroid/app/Activity;Landroid/net/Uri;Z)V

    .line 626
    :cond_0
    :goto_1
    return-void

    .line 594
    :cond_1
    const/4 v11, -0x1

    goto :goto_0

    .line 595
    :catch_0
    move-exception v10

    .line 596
    .local v10, "ex":Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "SavingTaskManager"

    const-string v1, "Failed to insert."

    invoke-static {v0, v1, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    const/4 v12, 0x0

    .line 598
    const/4 v11, -0x2

    goto :goto_0

    .line 621
    .end local v10    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    const-string v0, "SavingTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to inserting a photo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p2, v11}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->notifyFailed(I)V

    goto :goto_1
.end method

.method public insertPictureAll(Ljava/util/List;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)Z
    .locals 15
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, -0x1

    .line 641
    .local v13, "result":I
    :try_start_0
    const-string v3, ""

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    move-object/from16 v0, p2

    iget v8, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->somcType:I

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->insertPictureAllContentManager(Ljava/util/List;Ljava/lang/String;Landroid/location/Location;IJIII)I

    move-result v12

    .line 650
    .local v12, "insertResult":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v12, v1, :cond_0

    const/4 v13, 0x0

    .line 657
    .end local v12    # "insertResult":I
    :goto_0
    if-nez v13, :cond_1

    .line 660
    const/4 v14, 0x1

    .line 666
    .local v14, "ret":Z
    :goto_1
    return v14

    .line 650
    .end local v14    # "ret":Z
    .restart local v12    # "insertResult":I
    :cond_0
    const/4 v13, -0x1

    goto :goto_0

    .line 651
    .end local v12    # "insertResult":I
    :catch_0
    move-exception v11

    .line 652
    .local v11, "ex":Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "SavingTaskManager"

    const-string v2, "Failed to insert."

    invoke-static {v1, v2, v11}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    const/4 v13, -0x2

    goto :goto_0

    .line 662
    .end local v11    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    const-string v1, "SavingTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to inserting a photos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->notifyFailed(I)V

    .line 664
    const/4 v14, 0x0

    .restart local v14    # "ret":Z
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 1210
    return-void
.end method

.method public storePicture(Landroid/graphics/Bitmap;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "postProcessing"    # Z
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "addToMediaStore"    # Z

    .prologue
    .line 541
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 545
    .local v8, "mByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 549
    new-instance v9, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    invoke-direct {v9, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 551
    .local v9, "mExifInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 552
    .local v3, "mPlainJpeg":[B
    invoke-static {v3, v9}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v1

    .line 554
    .local v1, "mExifJpeg":[B
    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 555
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    .line 562
    .end local v3    # "mPlainJpeg":[B
    :goto_0
    return-void

    .restart local v3    # "mPlainJpeg":[B
    :cond_0
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 558
    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public storePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    .locals 2
    .param p1, "image"    # [B
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "postProcessing"    # Z
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "addToMediaStore"    # Z

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 512
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->pushPhotoSavingTask([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    .line 528
    :goto_0
    return-void

    .line 514
    :cond_0
    const-string v0, "SavingTaskManager"

    const-string v1, "### can\'t store a specified image file."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "SavingTaskManager"

    const-string v1, "### so, notify a failure of storing the specified image file."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public storeVideo(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 5
    .param p1, "takenStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    const/4 v4, 0x0

    .line 1030
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 1034
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 1035
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1037
    const-string v1, "SavingTaskManager"

    const-string v2, "storeVideo: mStoreVideoThread timeout."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 1111
    :goto_0
    return-void

    .line 1045
    :cond_0
    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 1049
    :cond_1
    :goto_1
    const-string v0, ""

    .line 1051
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 1109
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1110
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1042
    .end local v0    # "description":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1045
    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    throw v1
.end method
