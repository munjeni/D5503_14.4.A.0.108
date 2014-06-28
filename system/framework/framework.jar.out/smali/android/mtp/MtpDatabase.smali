.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$PropValueType;
    }
.end annotation


# static fields
.field static final ALL_PROPERTIES:[I

.field private static final ANCHOR_FOLDER:Ljava/lang/String; = ".anchor"

.field static final AUDIO_ALBUM_PROPERTIES:[I

.field static final AUDIO_PROPERTIES:[I

.field private static final BATTERY_MAX_VALUE:I = 0x64

.field private static final CRYPTO_KEY_LEN:I = 0x18

.field private static final DEVICEUUID_PREFIX:Ljava/lang/String; = "00000000-0000-0000-FFFF-"

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field private static final DEVICE_UUID:Ljava/lang/String; = "device_uuid"

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final HOST_ID_BUFFER_SIZE:I = 0x20

.field private static final HOST_PREFS:Ljava/lang/String; = "HostIds"

.field private static final ID_NAME_PATH_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final MAC_ADDRESS_TOKEN_COUNT:I = 0x6

.field private static final NAME_PATH_PROJECTION:[Ljava/lang/String;

.field static final NETWORK_ASSOCIATION_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_LIKE_FORMAT_NOT_WHERE:Ljava/lang/String; = "_data LIKE ? AND format <> ?"

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final PROPERTY_IDID:Ljava/lang/String; = "ro.boot.idid"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

.field private mCleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mReferencesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 142
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 147
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 156
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->NAME_PATH_PROJECTION:[Ljava/lang/String;

    .line 160
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_NAME_PATH_PROJECTION:[Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 667
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 683
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 713
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 749
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 770
    const/16 v0, 0x26

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    .line 822
    new-array v0, v7, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_ALBUM_PROPERTIES:[I

    .line 841
    new-array v0, v7, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/mtp/MtpDatabase;->NETWORK_ASSOCIATION_PROPERTIES:[I

    return-void

    .line 667
    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdc4e
        0xdc4f
    .end array-data

    .line 683
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde93
        0xde94
        0xde99
        0xde9a
    .end array-data

    .line 713
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc46
        0xdc9a
        0xdc8b
        0xdc89
        0xdc48
        0xde97
        0xde9b
        0xde9c
        0xde9d
        0xdea1
        0xdc87
        0xdc88
        0xde93
        0xde94
        0xde99
        0xde9a
    .end array-data

    .line 749
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc48
        0xdc87
        0xdc88
    .end array-data

    .line 770
    :array_4
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc48
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde93
        0xde94
        0xde99
        0xde9a
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
        0xde97
        0xde9b
        0xde9c
        0xde9d
        0xdea1
        0xdc48
        0xdc87
        0xdc88
        0xd920
    .end array-data

    .line 822
    :array_5
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc9b
    .end array-data

    .line 841
    :array_6
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xd920
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 121
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 125
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 190
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mCleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 197
    new-instance v10, Landroid/mtp/MtpContactServiceDB;

    invoke-direct {v10, p1, p0}, Landroid/mtp/MtpContactServiceDB;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 198
    new-instance v10, Landroid/mtp/MtpCalendarServiceDB;

    invoke-direct {v10, p1, p0}, Landroid/mtp/MtpCalendarServiceDB;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 199
    invoke-static {p1}, Landroid/mtp/MtpDeviceServiceDBHelper;->getInstance(Landroid/content/Context;)Landroid/mtp/MtpDeviceServiceDBHelper;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    .line 200
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v10}, Landroid/mtp/MtpDeviceServiceDBHelper;->initServicePropsTable()V

    .line 201
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 203
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 206
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 208
    invoke-static {p2}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 209
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 210
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    .line 211
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceSystemProperties(Landroid/content/Context;)V

    .line 212
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->removeInvalidHostIds()V

    .line 214
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 215
    if-eqz p4, :cond_2

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    move-object/from16 v0, p4

    array-length v2, v0

    .line 220
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 221
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 224
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 231
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 232
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 233
    aget-object v9, p4, v4

    .line 234
    .local v9, "path":Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v9, v10, v6

    .line 235
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 240
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 241
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 242
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "country":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 245
    if-eqz v3, :cond_4

    .line 246
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 252
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 248
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v7    # "language":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    .prologue
    .line 375
    const v1, 0xb102

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 376
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->getDeviceUuid()Ljava/lang/String;

    move-result-object v13

    .line 378
    .local v13, "uuid":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Landroid/mtp/MtpDatabase;->notifyPairError([Ljava/lang/String;)V

    .line 380
    const/4 v11, -0x1

    .line 432
    .end local v13    # "uuid":Ljava/lang/String;
    :cond_0
    :goto_0
    return v11

    .line 385
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v11, -0x1

    goto :goto_0

    .line 388
    :cond_2
    if-eqz p1, :cond_5

    .line 389
    const/4 v9, 0x0

    .line 391
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 393
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 394
    const v1, 0xb102

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 395
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p1 .. p1}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Landroid/mtp/MtpDatabase;->notifyPairError([Ljava/lang/String;)V

    .line 398
    :cond_3
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file already exists in beginSendObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    const/4 v11, -0x1

    .line 404
    if-eqz v9, :cond_0

    .line 405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 404
    :cond_4
    if-eqz v9, :cond_5

    .line 405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 410
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 411
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v14, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "format"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string/jumbo v1, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string/jumbo v1, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v1, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    const-string v1, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    :try_start_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v14}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 421
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_7

    .line 422
    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 423
    .local v11, "handle":I
    const v1, 0xb102

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 424
    invoke-static/range {p1 .. p1}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v11, v1}, Landroid/mtp/MtpDatabase;->requestPairHost(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 430
    .end local v11    # "handle":I
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 431
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in beginSendObject"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 401
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v14    # "values":Landroid/content/ContentValues;
    .restart local v9    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v10

    .line 402
    .restart local v10    # "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in beginSendObject"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    if-eqz v9, :cond_5

    .line 405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 404
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 428
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_7
    const/4 v11, -0x1

    goto/16 :goto_0
.end method

.method private clearAllNetworkAssociationObjects()V
    .locals 12

    .prologue
    .line 1887
    const/4 v8, 0x0

    .line 1890
    .local v8, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1891
    .local v11, "path":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->NAME_PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "format=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0xb102

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1894
    if-nez v8, :cond_1

    .line 1913
    if-eqz v8, :cond_0

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1898
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1899
    if-eqz v11, :cond_1

    .line 1900
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1901
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1902
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete this file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1908
    .end local v10    # "f":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 1909
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in clearAllNetworkAssociationObjects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1913
    if-eqz v8, :cond_0

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1906
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "format=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0xb102

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1913
    if-eqz v8, :cond_0

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1910
    :catch_1
    move-exception v9

    .line 1911
    .local v9, "e":Ljava/lang/SecurityException;
    :try_start_4
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in clearAllNetworkAssociationObjects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1913
    if-eqz v8, :cond_0

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1913
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 11
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 478
    if-ne p1, v0, :cond_6

    .line 480
    if-nez p2, :cond_3

    .line 482
    if-nez p3, :cond_1

    .line 484
    const/4 v4, 0x0

    .line 485
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    .line 549
    .local v5, "whereArgs":[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 550
    if-nez v4, :cond_c

    .line 551
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 552
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 570
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 487
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_1
    if-ne p3, v0, :cond_2

    .line 489
    const/4 p3, 0x0

    .line 491
    :cond_2
    const-string/jumbo v4, "parent=?"

    .line 492
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 498
    const-string v4, "format=?"

    .line 499
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 501
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 503
    const/4 p3, 0x0

    .line 505
    :cond_5
    const-string v4, "format=? AND parent=?"

    .line 506
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 512
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 514
    if-nez p3, :cond_7

    .line 516
    const-string/jumbo v4, "storage_id=?"

    .line 517
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 519
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 521
    const/4 p3, 0x0

    .line 523
    :cond_8
    const-string/jumbo v4, "storage_id=? AND parent=?"

    .line 524
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 529
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 531
    const-string/jumbo v4, "storage_id=? AND format=?"

    .line 532
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 535
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 537
    const/4 p3, 0x0

    .line 539
    :cond_b
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    .line 540
    .restart local v4    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 554
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    array-length v0, v5

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v10, v0, [Ljava/lang/String;

    .line 560
    .local v10, "newWhereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v5

    if-ge v8, v0, :cond_d

    .line 561
    aget-object v0, v5, v8

    aput-object v0, v10, v8

    .line 560
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 563
    :cond_d
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_e

    .line 564
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v10, v8

    .line 563
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 566
    :cond_e
    move-object v5, v10

    goto/16 :goto_1
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cipherText"    # Ljava/lang/String;

    .prologue
    .line 1790
    const/4 v2, 0x0

    .line 1791
    .local v2, "clearText":Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1794
    .local v5, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES/ECB/PKCS5Padding"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1795
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1796
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 1798
    .local v1, "clearBytes":[B
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7

    .end local v2    # "clearText":Ljava/lang/String;
    .local v3, "clearText":Ljava/lang/String;
    move-object v2, v3

    .line 1816
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "clearBytes":[B
    .end local v3    # "clearText":Ljava/lang/String;
    .restart local v2    # "clearText":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1799
    :catch_0
    move-exception v4

    .line 1800
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1801
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v4

    .line 1802
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1803
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v4

    .line 1804
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1805
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    .line 1806
    .local v4, "e":Ljava/security/InvalidKeyException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1807
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v4

    .line 1808
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1809
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v4

    .line 1810
    .local v4, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1811
    .end local v4    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_6
    move-exception v4

    .line 1812
    .local v4, "e":Ljava/security/NoSuchProviderException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1813
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_7
    move-exception v4

    .line 1814
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private deleteFile(I)I
    .locals 18
    .param p1, "handle"    # I

    .prologue
    .line 1419
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1420
    const/4 v15, 0x0

    .line 1421
    .local v15, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1423
    .local v12, "format":I
    const/4 v9, 0x0

    .line 1425
    .local v9, "c":Landroid/database/Cursor;
    if-nez p1, :cond_3

    .line 1426
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/mtp/MtpStorage;

    .line 1427
    .local v16, "storage":Landroid/mtp/MtpStorage;
    invoke-virtual/range {v16 .. v16}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v4, "_data LIKE ? AND format <> ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0xb102

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1485
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "storage":Landroid/mtp/MtpStorage;
    :catch_0
    move-exception v11

    .line 1486
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in deleteFile"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1487
    const/16 v1, 0x2002

    .line 1489
    if-eqz v9, :cond_1

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v1

    .line 1433
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1434
    const/16 v1, 0x2001

    .line 1489
    if-eqz v9, :cond_1

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1436
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1438
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1441
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1442
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    .line 1447
    if-eqz v15, :cond_4

    if-eqz v12, :cond_4

    const v1, 0xb102

    if-ne v12, v1, :cond_6

    .line 1448
    :cond_4
    const/16 v1, 0x2002

    .line 1489
    if-eqz v9, :cond_1

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1444
    :cond_5
    const/16 v1, 0x2009

    .line 1489
    if-eqz v9, :cond_1

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1452
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 1453
    const/16 v1, 0x200d

    .line 1489
    if-eqz v9, :cond_1

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1456
    :cond_7
    const/16 v1, 0x3001

    if-ne v12, v1, :cond_a

    .line 1458
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1459
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1464
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    .end local v10    # "count":I
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v17

    .line 1470
    .restart local v17    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    .line 1471
    const/16 v1, 0x3001

    if-eq v12, v1, :cond_9

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v1, :cond_9

    .line 1474
    const/4 v1, 0x0

    :try_start_6
    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1475
    .local v14, "parentPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v14, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1480
    .end local v14    # "parentPath":Ljava/lang/String;
    :cond_9
    :goto_3
    :try_start_7
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->removeReferenceFromTable(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1481
    const/16 v1, 0x2001

    .line 1489
    if-eqz v9, :cond_1

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1465
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_a
    const v1, 0xba03

    if-ne v12, v1, :cond_8

    .line 1466
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1489
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_b

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1

    .line 1476
    .restart local v17    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v11

    .line 1477
    .restart local v11    # "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 1483
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_c
    const/16 v1, 0x2009

    .line 1489
    if-eqz v9, :cond_1

    .line 1490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private deleteHostFromDB(I)V
    .locals 12
    .param p1, "hostId"    # I

    .prologue
    .line 1945
    const/4 v8, 0x0

    .line 1947
    .local v8, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1948
    .local v11, "path":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->NAME_PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1950
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1953
    :cond_0
    if-eqz v11, :cond_1

    .line 1954
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1955
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1956
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete this file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    .end local v10    # "f":Ljava/io/File;
    :cond_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1966
    if-eqz v8, :cond_2

    .line 1967
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1970
    :cond_2
    :goto_0
    return-void

    .line 1961
    :catch_0
    move-exception v9

    .line 1962
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in deleteHostFromDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    if-eqz v8, :cond_2

    .line 1967
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1963
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 1964
    .local v9, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in deleteHostFromDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1966
    if-eqz v8, :cond_2

    .line 1967
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1966
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1967
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "clearText"    # Ljava/lang/String;

    .prologue
    .line 1758
    const/4 v2, 0x0

    .line 1759
    .local v2, "cipherText":Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1762
    .local v5, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES/ECB/PKCS5Padding"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1763
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1764
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 1768
    .local v1, "cipherBytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7

    .end local v2    # "cipherText":Ljava/lang/String;
    .local v3, "cipherText":Ljava/lang/String;
    move-object v2, v3

    .line 1786
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherBytes":[B
    .end local v3    # "cipherText":Ljava/lang/String;
    .restart local v2    # "cipherText":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1769
    :catch_0
    move-exception v4

    .line 1770
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1771
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v4

    .line 1772
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1773
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v4

    .line 1774
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1775
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    .line 1776
    .local v4, "e":Ljava/security/InvalidKeyException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1777
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v4

    .line 1778
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1779
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v4

    .line 1780
    .local v4, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1781
    .end local v4    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_6
    move-exception v4

    .line 1782
    .local v4, "e":Ljava/security/NoSuchProviderException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1783
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_7
    move-exception v4

    .line 1784
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    .prologue
    .line 437
    if-eqz p4, :cond_4

    .line 440
    const v4, 0xba05

    if-ne p3, v4, :cond_2

    .line 442
    move-object v2, p1

    .line 443
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 444
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 445
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 448
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 449
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 452
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 453
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 457
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 461
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    const v4, 0xba03

    if-ne p3, v4, :cond_3

    .line 465
    const-string v4, "MtpDatabase"

    const-string v5, "endSendObject for AbstractAudioAlbum"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_3
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 470
    :cond_4
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getBondedHostInfo()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1920
    const/4 v8, 0x0

    .line 1921
    .local v8, "c":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1924
    .local v10, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_NAME_PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "format=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0xb102

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1928
    if-nez v8, :cond_1

    .line 1937
    if-eqz v8, :cond_0

    .line 1938
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1941
    :cond_0
    :goto_0
    return-object v10

    .line 1931
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1932
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1934
    :catch_0
    move-exception v9

    .line 1935
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in getBondedHostInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1937
    if-eqz v8, :cond_0

    .line 1938
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1937
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_2
    if-eqz v8, :cond_0

    .line 1938
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1937
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1938
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getDeviceIcon()[B
    .locals 9

    .prologue
    .line 1172
    const/4 v3, 0x0

    .line 1173
    .local v3, "iStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1175
    .local v4, "oStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080377

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1177
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "oStream":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x200

    :try_start_1
    new-array v0, v6, [B

    .line 1180
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1181
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1184
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 1185
    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "Exception when doing IO operations on mtp icon!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1186
    const/4 v6, 0x0

    .line 1188
    if-eqz v3, :cond_0

    .line 1190
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1195
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 1197
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1200
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-object v6

    .line 1183
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 1188
    if-eqz v3, :cond_3

    .line 1190
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1195
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 1197
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_5
    move-object v4, v5

    .line 1200
    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 1191
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 1192
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the InputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1198
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the ByteArrayOutputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1191
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v2

    .line 1192
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the InputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1198
    :catch_4
    move-exception v2

    .line 1199
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the ByteArrayOutputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1188
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_5

    .line 1190
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1195
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 1197
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1200
    :cond_6
    :goto_8
    throw v6

    .line 1191
    :catch_5
    move-exception v2

    .line 1192
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the InputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1198
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 1199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the ByteArrayOutputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1188
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 1184
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 15
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .prologue
    .line 1216
    sparse-switch p1, :sswitch_data_0

    .line 1267
    const/16 v12, 0x200a

    :goto_0
    return v12

    .line 1220
    :sswitch_0
    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1221
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 1222
    .local v8, "length":I
    const/16 v12, 0xff

    if-le v8, v12, :cond_0

    .line 1223
    const/16 v8, 0xff

    .line 1225
    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v12, v8, v0, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 1226
    const/4 v12, 0x0

    aput-char v12, p3, v8

    .line 1227
    const/16 v12, 0x2001

    goto :goto_0

    .line 1230
    .end local v8    # "length":I
    .end local v10    # "value":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->getDeviceUuid()Ljava/lang/String;

    move-result-object v9

    .line 1231
    .local v9, "uuid":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1232
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {p0, v12}, Landroid/mtp/MtpDatabase;->notifyPairError([Ljava/lang/String;)V

    .line 1233
    const/16 v12, 0x2002

    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xff

    if-ge v12, v13, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 1236
    .restart local v8    # "length":I
    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v12, v8, v0, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 1237
    const/4 v12, 0x0

    aput-char v12, p3, v8

    .line 1238
    const/16 v12, 0x2001

    goto :goto_0

    .line 1235
    .end local v8    # "length":I
    :cond_2
    const/16 v8, 0xff

    goto :goto_1

    .line 1242
    .end local v9    # "uuid":Ljava/lang/String;
    :sswitch_2
    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1244
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v11

    .line 1245
    .local v11, "width":I
    invoke-virtual {v4}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 1246
    .local v5, "height":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1247
    .local v7, "imageSize":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v13, v0, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 1248
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    aput-char v13, p3, v12

    .line 1249
    const/16 v12, 0x2001

    goto/16 :goto_0

    .line 1253
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "height":I
    .end local v7    # "imageSize":Ljava/lang/String;
    .end local v11    # "width":I
    :sswitch_3
    new-instance v6, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v6, "ifilter":Landroid/content/IntentFilter;
    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 1255
    .local v3, "batteryStatus":Landroid/content/Intent;
    const-string v12, "level"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1256
    .local v1, "batteryLevel":I
    const-string/jumbo v12, "scale"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1257
    .local v2, "batteryScale":I
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 1258
    mul-int/lit8 v12, v1, 0x64

    div-int v1, v12, v2

    .line 1262
    const/4 v12, 0x0

    int-to-long v13, v1

    aput-wide v13, p2, v12

    .line 1263
    const/4 v12, 0x1

    int-to-long v13, v2

    aput-wide v13, p2, v12

    .line 1264
    const/16 v12, 0x2001

    goto/16 :goto_0

    .line 1260
    :cond_3
    const/16 v12, 0x2002

    goto/16 :goto_0

    .line 1216
    :sswitch_data_0
    .sparse-switch
        0x5001 -> :sswitch_3
        0x5003 -> :sswitch_2
        0xd120 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getKey()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1823
    const/4 v2, 0x0

    .line 1825
    .local v2, "imei":Ljava/lang/String;
    const-string v5, "163527446505926388709133"

    .line 1828
    .local v5, "pad":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1832
    .local v4, "man":Landroid/telephony/TelephonyManager;
    const-string/jumbo v6, "ro.boot.idid"

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1836
    .end local v4    # "man":Landroid/telephony/TelephonyManager;
    :goto_0
    if-nez v2, :cond_1

    const-string v3, ""

    .line 1837
    .local v3, "key":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v0, "bufKey":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x18

    if-ge v6, v7, :cond_0

    .line 1841
    const-string v6, "163527446505926388709133"

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x18

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1833
    .end local v0    # "bufKey":Ljava/lang/StringBuilder;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1834
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    move-object v3, v2

    .line 1836
    goto :goto_1
.end method

.method private getNumObjects(III)I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    .line 607
    packed-switch p1, :pswitch_data_0

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_1

    .line 618
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 623
    if-eqz v0, :cond_0

    .line 624
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 627
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 609
    :pswitch_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v2}, Landroid/mtp/MtpServiceDatabase;->getNumObjects()I

    move-result v2

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v2}, Landroid/mtp/MtpServiceDatabase;->getNumObjects()I

    move-result v2

    goto :goto_0

    .line 623
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz v0, :cond_2

    .line 624
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    if-eqz v0, :cond_2

    .line 624
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 623
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 624
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 607
    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectFilePath(I[I[J)[C
    .locals 13
    .param p1, "handle"    # I
    .param p2, "result"    # [I
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    .line 1364
    const/4 v10, 0x0

    .line 1365
    .local v10, "outFilePath":[C
    if-nez p1, :cond_0

    .line 1367
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v10, v0, [C

    .line 1368
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v10, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1369
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, v10, v0

    .line 1370
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p3, v0

    .line 1371
    const/4 v0, 0x1

    const-wide/16 v1, 0x3001

    aput-wide v1, p3, v0

    .line 1372
    const/4 v0, 0x0

    const/16 v1, 0x2001

    aput v1, p2, v0

    move-object v11, v10

    .line 1400
    .end local v10    # "outFilePath":[C
    .local v11, "outFilePath":[C
    :goto_0
    return-object v11

    .line 1375
    .end local v11    # "outFilePath":[C
    .restart local v10    # "outFilePath":[C
    :cond_0
    const/4 v8, 0x0

    .line 1377
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1379
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1380
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1381
    .local v12, "path":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v10, v0, [C

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v10, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1383
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, v10, v0

    .line 1386
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1387
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1388
    const/4 v0, 0x0

    const/16 v1, 0x2001

    aput v1, p2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    if-eqz v8, :cond_1

    .line 1400
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v11, v10

    .end local v10    # "outFilePath":[C
    .restart local v11    # "outFilePath":[C
    goto :goto_0

    .line 1391
    .end local v11    # "outFilePath":[C
    .end local v12    # "path":Ljava/lang/String;
    .restart local v10    # "outFilePath":[C
    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0x2009

    :try_start_1
    aput v1, p2, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1399
    if-eqz v8, :cond_3

    .line 1400
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v10

    .end local v10    # "outFilePath":[C
    .restart local v11    # "outFilePath":[C
    goto :goto_0

    .line 1394
    .end local v11    # "outFilePath":[C
    .restart local v10    # "outFilePath":[C
    :catch_0
    move-exception v9

    .line 1395
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1396
    const/4 v0, 0x0

    const/16 v1, 0x2002

    aput v1, p2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1399
    if-eqz v8, :cond_4

    .line 1400
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v11, v10

    .end local v10    # "outFilePath":[C
    .restart local v11    # "outFilePath":[C
    goto :goto_0

    .line 1399
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v11    # "outFilePath":[C
    .restart local v10    # "outFilePath":[C
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 1400
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 15
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .prologue
    .line 1325
    const/4 v9, 0x0

    .line 1327
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1329
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1330
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1331
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1332
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1335
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1336
    .local v13, "path":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 1337
    .local v12, "lastSlash":I
    if-ltz v12, :cond_3

    add-int/lit8 v14, v12, 0x1

    .line 1338
    .local v14, "start":I
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 1339
    .local v11, "end":I
    sub-int v1, v11, v14

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 1340
    add-int/lit16 v11, v14, 0xff

    .line 1342
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v11, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1343
    sub-int v1, v11, v14

    const/4 v2, 0x0

    aput-char v2, p3, v1

    .line 1345
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 1346
    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 1348
    const/4 v1, 0x0

    aget-wide v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1349
    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-wide v2, p4, v2

    aput-wide v2, p4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    :cond_1
    const/4 v1, 0x1

    .line 1356
    if-eqz v9, :cond_2

    .line 1357
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1360
    .end local v11    # "end":I
    .end local v12    # "lastSlash":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "start":I
    :cond_2
    :goto_1
    return v1

    .line 1337
    .restart local v12    # "lastSlash":I
    .restart local v13    # "path":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 1356
    .end local v12    # "lastSlash":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 1357
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1360
    :cond_5
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1353
    :catch_0
    move-exception v10

    .line 1354
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectInfo"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1356
    if-eqz v9, :cond_5

    .line 1357
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1356
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 1357
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private getObjectList(III)[I
    .locals 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    const/4 v5, 0x0

    .line 575
    packed-switch p1, :pswitch_data_0

    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 584
    if-nez v0, :cond_2

    .line 599
    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 603
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v4

    .line 577
    :pswitch_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v5}, Landroid/mtp/MtpServiceDatabase;->getObjectHandles()[I

    move-result-object v4

    goto :goto_0

    .line 579
    :pswitch_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v5}, Landroid/mtp/MtpServiceDatabase;->getObjectHandles()[I

    move-result-object v4

    goto :goto_0

    .line 587
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 588
    .local v1, "count":I
    if-lez v1, :cond_4

    .line 589
    new-array v4, v1, [I

    .line 590
    .local v4, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 591
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 592
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 599
    :cond_3
    if-eqz v0, :cond_1

    .line 600
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 599
    .end local v3    # "i":I
    .end local v4    # "result":[I
    :cond_4
    if-eqz v0, :cond_5

    .line 600
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "count":I
    :cond_5
    :goto_2
    move-object v4, v5

    .line 603
    goto :goto_0

    .line 596
    :catch_0
    move-exception v2

    .line 597
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    if-eqz v0, :cond_5

    .line 600
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 599
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 600
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 575
    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 8
    .param p1, "handle"    # J
    .param p3, "format"    # I
    .param p4, "property"    # J
    .param p6, "groupCode"    # I
    .param p7, "depth"    # I

    .prologue
    .line 909
    if-eqz p6, :cond_0

    .line 910
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const v4, 0xa807

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 958
    :goto_0
    return-object v2

    .line 912
    :cond_0
    const/4 v0, 0x0

    .line 913
    .local v0, "serviceDb":Landroid/mtp/MtpServiceDatabase;
    const-wide v2, 0xffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 914
    const-wide/32 v2, 0xdd80

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 915
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 922
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 923
    long-to-int v1, p1

    long-to-int v3, p4

    move v2, p3

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpServiceDatabase;->getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 916
    :cond_2
    const-wide/32 v2, 0xdd81

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 917
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    goto :goto_1

    .line 920
    :cond_3
    long-to-int v2, p1

    invoke-direct {p0, v2}, Landroid/mtp/MtpDatabase;->getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;

    move-result-object v0

    goto :goto_1

    .line 926
    :cond_4
    const v2, 0xfe01

    if-ne p3, v2, :cond_7

    .line 927
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    const-string/jumbo v3, "object_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/mtp/MtpDeviceServiceDBHelper;->getAnchorInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;

    move-result-object v7

    .line 929
    .local v7, "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    if-nez v7, :cond_5

    .line 930
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const/16 v4, 0x2009

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_0

    .line 932
    :cond_5
    iget v2, v7, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 933
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    long-to-int v3, p1

    invoke-virtual {v2, v3, v7}, Landroid/mtp/MtpServiceDatabase;->getAnchorProperties(ILandroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 934
    :cond_6
    iget v2, v7, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_7

    .line 935
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    long-to-int v3, p1

    invoke-virtual {v2, v3, v7}, Landroid/mtp/MtpServiceDatabase;->getAnchorProperties(ILandroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 940
    .end local v7    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :cond_7
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_9

    .line 941
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpPropertyGroup;

    .line 942
    .local v1, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v1, :cond_8

    .line 943
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v6

    .line 944
    .local v6, "propertyList":[I
    new-instance v1, Landroid/mtp/MtpPropertyGroup;

    .end local v1    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 946
    .restart local v1    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    .end local v6    # "propertyList":[I
    :cond_8
    :goto_2
    long-to-int v2, p1

    invoke-virtual {v1, v2, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto/16 :goto_0

    .line 949
    .end local v1    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_9
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpPropertyGroup;

    .line 950
    .restart local v1    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v1, :cond_8

    .line 951
    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    long-to-int v3, p4

    aput v3, v6, v2

    .line 952
    .restart local v6    # "propertyList":[I
    new-instance v1, Landroid/mtp/MtpPropertyGroup;

    .end local v1    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 954
    .restart local v1    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private getObjectReferences(I)[I
    .locals 18
    .param p1, "handle"    # I

    .prologue
    .line 1508
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;

    move-result-object v17

    .line 1509
    .local v17, "serviceDb":Landroid/mtp/MtpServiceDatabase;
    if-eqz v17, :cond_1

    .line 1510
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpServiceDatabase;->getObjectReferences(I)[I

    move-result-object v16

    .line 1575
    :cond_0
    :goto_0
    return-object v16

    .line 1512
    :cond_1
    const/4 v14, 0x0

    .line 1513
    .local v14, "format":I
    const/4 v11, 0x0

    .line 1515
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 1517
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1518
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1523
    if-nez v14, :cond_3

    .line 1524
    const-string v2, "MtpDatabase"

    const-string v3, "getObjectReferences -> Invalid Format Code: 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    const/16 v16, 0x0

    .line 1531
    if-eqz v11, :cond_0

    .line 1532
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1520
    :cond_2
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "getObjectReferences -> invalid object handle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    const/16 v16, 0x0

    .line 1531
    if-eqz v11, :cond_0

    .line 1532
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1531
    :cond_3
    if-eqz v11, :cond_4

    .line 1532
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1536
    :cond_4
    const/16 v2, 0x3001

    if-ne v14, v2, :cond_8

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1540
    .local v10, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1541
    .local v12, "count":I
    if-nez v12, :cond_6

    .line 1542
    const/16 v16, 0x0

    goto :goto_0

    .line 1527
    .end local v10    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "count":I
    :catch_0
    move-exception v13

    .line 1528
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectReferences - Hashtable section"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1529
    const/16 v16, 0x0

    .line 1531
    if-eqz v11, :cond_0

    .line 1532
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1531
    .end local v13    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_5

    .line 1532
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 1544
    .restart local v10    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "count":I
    :cond_6
    new-array v0, v12, [I

    move-object/from16 v16, v0

    .line 1545
    .local v16, "result":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v12, :cond_0

    .line 1546
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v16, v15

    .line 1545
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1550
    .end local v10    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "count":I
    .end local v15    # "i":I
    .end local v16    # "result":[I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1552
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v5, v0

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1553
    .local v4, "uri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1555
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 1556
    if-nez v11, :cond_9

    .line 1557
    const/16 v16, 0x0

    .line 1571
    if-eqz v11, :cond_0

    .line 1572
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1559
    :cond_9
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1560
    .restart local v12    # "count":I
    if-lez v12, :cond_b

    .line 1561
    new-array v0, v12, [I

    move-object/from16 v16, v0

    .line 1562
    .restart local v16    # "result":[I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    if-ge v15, v12, :cond_a

    .line 1563
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1564
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v16, v15
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1562
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1571
    :cond_a
    if-eqz v11, :cond_0

    .line 1572
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1571
    .end local v15    # "i":I
    .end local v16    # "result":[I
    :cond_b
    if-eqz v11, :cond_c

    .line 1572
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1575
    .end local v12    # "count":I
    :cond_c
    :goto_3
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1568
    :catch_1
    move-exception v13

    .line 1569
    .restart local v13    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectList"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1571
    if-eqz v11, :cond_c

    .line 1572
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1571
    .end local v13    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_d

    .line 1572
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method private getParentHandle(ILjava/lang/String;)I
    .locals 12
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2036
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2037
    .local v11, "folder":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2038
    const/4 v9, 0x0

    .line 2040
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 2042
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2043
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2048
    if-eqz v9, :cond_0

    .line 2049
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2056
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v0

    .line 2048
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz v9, :cond_2

    .line 2049
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2056
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2045
    .restart local v9    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 2046
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException in getting handle for path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2048
    if-eqz v9, :cond_2

    .line 2049
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2048
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 2049
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2052
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2053
    const/16 v2, 0x3001

    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroid/mtp/MtpDatabase;->beginSendObject(Ljava/lang/String;IIIJJ)I

    move-result v0

    goto :goto_0
.end method

.method private getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 1496
    invoke-static {p1}, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil;->parse(I)Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;

    move-result-object v1

    iget v0, v1, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;->type:I

    .line 1497
    .local v0, "handleType":I
    packed-switch v0, :pswitch_data_0

    .line 1503
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1499
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    goto :goto_0

    .line 1501
    :pswitch_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    goto :goto_0

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 893
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0xd401
        0xd402
        0xd405
        0x5003
        0xd120
        0x5001
        0xd302
        0xd303
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 862
    sparse-switch p1, :sswitch_data_0

    .line 888
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 867
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 872
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 880
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 882
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_ALBUM_PROPERTIES:[I

    goto :goto_0

    .line 884
    :sswitch_4
    sget-object v0, Landroid/mtp/MtpDatabase;->NETWORK_ASSOCIATION_PROPERTIES:[I

    goto :goto_0

    .line 886
    :sswitch_5
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 862
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300a -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3802 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x3808 -> :sswitch_2
        0x380b -> :sswitch_2
        0x380d -> :sswitch_2
        0xb102 -> :sswitch_4
        0xb902 -> :sswitch_1
        0xb903 -> :sswitch_0
        0xb906 -> :sswitch_0
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
        0xba03 -> :sswitch_3
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 631
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3000
        0x300a
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb902
        0xb903
        0xb982
        0xb984
        0xba03
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0xb102
    .end array-data
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_2
    const/4 v0, 0x0

    .line 348
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 349
    .local v2, "pathLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 350
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 351
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 352
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 355
    const/4 v0, 0x1

    .line 349
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 307
    const-string v10, "device-properties"

    .line 308
    .local v10, "devicePropertiesName":Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 309
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 311
    .local v9, "databaseFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 317
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_4

    .line 319
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    if-eqz v8, :cond_4

    .line 322
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 323
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 325
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 326
    .local v13, "value":Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 332
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 337
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 339
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 328
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method private initDeviceSystemProperties(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    const-string v0, "device-properties"

    .line 287
    .local v0, "devicePropertiesName":Ljava/lang/String;
    const-string/jumbo v3, "ro.semc.product.name"

    .line 288
    .local v3, "modelName":Ljava/lang/String;
    const-string v5, "device-properties"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 290
    const v5, 0xd402

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "friendlyNameKey":Ljava/lang/String;
    const v5, 0xd401

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "syncPartnerKey":Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 295
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 296
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "ro.semc.product.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 300
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 301
    .restart local v1    # "e":Landroid/content/SharedPreferences$Editor;
    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 366
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    const/4 v1, 0x1

    goto :goto_0

    .line 365
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private notifyPairError([Ljava/lang/String;)V
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1746
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.mtpwifi.PAIR_HOST_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1747
    .local v0, "response":Landroid/content/Intent;
    array-length v1, p1

    if-lez v1, :cond_0

    .line 1748
    const-string/jumbo v1, "value_0"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1750
    :cond_0
    array-length v1, p1

    if-le v1, v3, :cond_1

    .line 1751
    const-string/jumbo v1, "value_1"

    aget-object v2, p1, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1753
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v2, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1754
    return-void
.end method

.method private removeInvalidHostIds()V
    .locals 10

    .prologue
    .line 1847
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1884
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v8, "HostIds"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1853
    .local v2, "hostPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1855
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->clearAllNetworkAssociationObjects()V

    goto :goto_0

    .line 1859
    :cond_2
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->getBondedHostInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 1861
    .local v3, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1862
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1863
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1864
    .local v1, "hostId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1865
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/mtp/MtpDatabase;->deleteHostFromDB(I)V

    .line 1866
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1870
    .end local v1    # "hostId":Ljava/lang/Integer;
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1871
    .local v6, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1872
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1874
    .local v5, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1875
    .local v1, "hostId":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1876
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1877
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1878
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1880
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "hostId":I
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in removeInvalidHostIds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private removeReferenceFromTable(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1406
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1407
    .local v1, "keysList":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1408
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1409
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1411
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1416
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 18
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 962
    const/4 v9, 0x0

    .line 965
    .local v9, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 966
    .local v15, "path":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 968
    .local v6, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 970
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 977
    :cond_0
    if-eqz v9, :cond_1

    .line 978
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 981
    :cond_1
    if-nez v15, :cond_4

    .line 982
    const/16 v1, 0x2009

    .line 1045
    :cond_2
    :goto_0
    return v1

    .line 973
    :catch_0
    move-exception v10

    .line 974
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    const/16 v1, 0x2002

    .line 977
    if-eqz v9, :cond_2

    .line 978
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 977
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 978
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 986
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 987
    const/16 v1, 0x200d

    goto :goto_0

    .line 991
    :cond_5
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 992
    .local v14, "oldFile":Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 993
    .local v11, "lastSlash":I
    const/4 v1, 0x1

    if-gt v11, v1, :cond_6

    .line 994
    const/16 v1, 0x2002

    goto :goto_0

    .line 996
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 997
    .local v13, "newPath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 998
    .local v12, "newFile":Ljava/io/File;
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 999
    .local v16, "success":Z
    if-nez v16, :cond_7

    .line 1000
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1005
    :cond_7
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1006
    .local v4, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v4, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/16 v17, 0x0

    .line 1011
    .local v17, "updated":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    .line 1015
    :goto_1
    if-nez v17, :cond_8

    .line 1016
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1019
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1012
    :catch_1
    move-exception v10

    .line 1013
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1023
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1025
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "."

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1028
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v13, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1045
    :cond_9
    :goto_2
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 1029
    :catch_2
    move-exception v10

    .line 1030
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1035
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_a
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1038
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v5, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1039
    :catch_3
    move-exception v10

    .line 1040
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private resetDeviceProperty(I)I
    .locals 8
    .param p1, "property"    # I

    .prologue
    const/16 v4, 0x2002

    const/16 v3, 0x2001

    .line 1286
    const-string/jumbo v1, "ro.semc.product.name"

    .line 1287
    .local v1, "modelName":Ljava/lang/String;
    const/16 v2, 0x2001

    .line 1290
    .local v2, "result":I
    sparse-switch p1, :sswitch_data_0

    .line 1316
    const/16 v2, 0x200a

    .line 1320
    :goto_0
    return v2

    .line 1293
    :sswitch_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1294
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 1297
    :goto_1
    goto :goto_0

    :cond_0
    move v2, v4

    .line 1295
    goto :goto_1

    .line 1300
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :sswitch_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1301
    .restart local v0    # "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.semc.product.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 1304
    :goto_2
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1302
    goto :goto_2

    .line 1307
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :sswitch_2
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1308
    .restart local v0    # "e":Landroid/content/SharedPreferences$Editor;
    const v5, 0xd402

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.semc.product.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1310
    const v5, 0xd401

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 1314
    :goto_3
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1312
    goto :goto_3

    .line 1290
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_1
    .end sparse-switch
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1641
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1643
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1645
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1638
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1272
    packed-switch p1, :pswitch_data_0

    .line 1282
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1276
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1277
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1272
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I
    .locals 8
    .param p1, "handle"    # I
    .param p2, "intValue"    # J
    .param p4, "strValue"    # Ljava/lang/String;
    .param p5, "objType"    # Landroid/mtp/MtpDatabase$PropValueType;
    .param p6, "column"    # Ljava/lang/String;

    .prologue
    .line 1063
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1064
    .local v5, "whereArgs":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1066
    .local v3, "values":Landroid/content/ContentValues;
    sget-object v0, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    if-ne p5, v0, :cond_0

    .line 1067
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, p6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1072
    :goto_0
    const/4 v7, 0x0

    .line 1074
    .local v7, "updated":I
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v4, "_id=?"

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1078
    :goto_1
    if-nez v7, :cond_1

    .line 1079
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update the property in column:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/16 v0, 0x2002

    .line 1083
    :goto_2
    return v0

    .line 1069
    .end local v7    # "updated":I
    :cond_0
    invoke-virtual {v3, p6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1075
    .restart local v7    # "updated":I
    :catch_0
    move-exception v6

    .line 1076
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in mMediaProvider.update"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1083
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v0, 0x2001

    goto :goto_2
.end method

.method private setHostIds(I[Ljava/lang/String;)I
    .locals 11
    .param p1, "objHandle"    # I
    .param p2, "hostIds"    # [Ljava/lang/String;

    .prologue
    .line 1685
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1686
    .local v5, "key":Ljava/lang/String;
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v9, "HostIds"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1688
    .local v2, "hostPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1689
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1690
    .local v7, "strHostIds":Ljava/lang/StringBuilder;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .line 1691
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1693
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/mtp/MtpDatabase;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1694
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x2001

    :goto_1
    return v8

    :cond_1
    const/16 v8, 0x2002

    goto :goto_1
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 7
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1092
    const/4 v6, 0x0

    .line 1093
    .local v6, "column":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 1164
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1095
    :sswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1100
    :sswitch_1
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    :cond_0
    const v0, 0xa803

    goto :goto_0

    .line 1103
    :cond_1
    const-string/jumbo v6, "title"

    .line 1104
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1107
    :sswitch_2
    const-string v6, "audiobitrate"

    .line 1108
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1111
    :sswitch_3
    const-string/jumbo v6, "videobitrate"

    .line 1112
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1115
    :sswitch_4
    const-string/jumbo v6, "videoframesperthousandseconds"

    .line 1116
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1119
    :sswitch_5
    const-string v6, "audiosamplerate"

    .line 1120
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1123
    :sswitch_6
    const-string v6, "audionumchannels"

    .line 1124
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1127
    :sswitch_7
    const-string/jumbo v6, "videoscantype"

    .line 1128
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1131
    :sswitch_8
    const-string v6, "audiowavecodec"

    .line 1132
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1135
    :sswitch_9
    const-string/jumbo v6, "videofourcccodec"

    .line 1136
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1139
    :sswitch_a
    const-string/jumbo v6, "videoencodingprofile"

    .line 1140
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1162
    :sswitch_b
    const/16 v0, 0x200f

    goto/16 :goto_0

    .line 1093
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_b
        0xdc02 -> :sswitch_b
        0xdc03 -> :sswitch_b
        0xdc04 -> :sswitch_b
        0xdc07 -> :sswitch_0
        0xdc09 -> :sswitch_b
        0xdc0b -> :sswitch_b
        0xdc41 -> :sswitch_b
        0xdc44 -> :sswitch_1
        0xdc46 -> :sswitch_b
        0xdc48 -> :sswitch_b
        0xdc4e -> :sswitch_b
        0xdc4f -> :sswitch_b
        0xdc87 -> :sswitch_b
        0xdc88 -> :sswitch_b
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_b
        0xdc8c -> :sswitch_b
        0xdc96 -> :sswitch_b
        0xdc99 -> :sswitch_b
        0xdc9a -> :sswitch_b
        0xdc9b -> :sswitch_b
        0xde93 -> :sswitch_5
        0xde94 -> :sswitch_6
        0xde97 -> :sswitch_7
        0xde99 -> :sswitch_8
        0xde9a -> :sswitch_2
        0xde9b -> :sswitch_9
        0xde9c -> :sswitch_3
        0xde9d -> :sswitch_4
        0xdea1 -> :sswitch_a
    .end sparse-switch
.end method

.method private setObjectProperty(II[J[Ljava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "numArray"    # [J
    .param p4, "strArray"    # [Ljava/lang/String;

    .prologue
    .line 1207
    const v0, 0xd920

    if-ne p2, v0, :cond_0

    .line 1208
    invoke-direct {p0, p1, p4}, Landroid/mtp/MtpDatabase;->setHostIds(I[Ljava/lang/String;)I

    .line 1209
    const/16 v0, 0x2001

    .line 1211
    :goto_0
    return v0

    :cond_0
    const v0, 0xa80a

    goto :goto_0
.end method

.method private setObjectReferences(I[I)I
    .locals 21
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .prologue
    .line 1580
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;

    move-result-object v17

    .line 1581
    .local v17, "serviceDb":Landroid/mtp/MtpServiceDatabase;
    if-eqz v17, :cond_1

    .line 1582
    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/mtp/MtpServiceDatabase;->setObjectReferences(I[I)I

    move-result v3

    .line 1632
    :cond_0
    :goto_0
    return v3

    .line 1584
    :cond_1
    const/4 v15, 0x0

    .line 1585
    .local v15, "format":I
    const/4 v12, 0x0

    .line 1587
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v6, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 1589
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1590
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 1594
    if-nez v15, :cond_3

    .line 1595
    const/16 v3, 0x2002

    .line 1601
    if-eqz v12, :cond_0

    .line 1602
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1592
    :cond_2
    const/16 v3, 0x2009

    .line 1601
    if-eqz v12, :cond_0

    .line 1602
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1601
    :cond_3
    if-eqz v12, :cond_4

    .line 1602
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1606
    :cond_4
    const/16 v3, 0x3001

    if-ne v15, v3, :cond_7

    .line 1608
    move-object/from16 v0, p2

    array-length v13, v0

    .line 1609
    .local v13, "count":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1610
    .local v11, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_6

    .line 1611
    aget v3, p2, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1597
    .end local v11    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "count":I
    .end local v16    # "i":I
    :catch_0
    move-exception v14

    .line 1598
    .local v14, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "MtpDatabase"

    const-string v4, "RemoteException in setObjectReferences - Hashtable section"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1599
    const/16 v3, 0x2002

    .line 1601
    if-eqz v12, :cond_0

    .line 1602
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1601
    .end local v14    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_5

    .line 1602
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 1613
    .restart local v11    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13    # "count":I
    .restart local v16    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    const/16 v3, 0x2001

    goto/16 :goto_0

    .line 1616
    .end local v11    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "count":I
    .end local v16    # "i":I
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1617
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v18

    .line 1618
    .local v18, "uri":Landroid/net/Uri;
    move-object/from16 v0, p2

    array-length v13, v0

    .line 1619
    .restart local v13    # "count":I
    new-array v0, v13, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    .line 1620
    .local v20, "valuesList":[Landroid/content/ContentValues;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v13, :cond_8

    .line 1621
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1622
    .local v19, "values":Landroid/content/ContentValues;
    const-string v3, "_id"

    aget v4, p2, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1623
    aput-object v19, v20, v16

    .line 1620
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1626
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v3, v4, v0, v1}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-lez v3, :cond_9

    .line 1627
    const/16 v3, 0x2001

    goto/16 :goto_0

    .line 1629
    :catch_1
    move-exception v14

    .line 1630
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "MtpDatabase"

    const-string v4, "RemoteException in setObjectReferences"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1632
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_9
    const/16 v3, 0x2002

    goto/16 :goto_0
.end method


# virtual methods
.method protected addAnchorFile(Ljava/lang/String;[B)I
    .locals 22
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 1973
    const/4 v15, 0x0

    .line 1974
    .local v15, "storageId":I
    const-string v12, ""

    .line 1975
    .local v12, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/mtp/MtpStorage;

    .line 1976
    .local v14, "storage":Landroid/mtp/MtpStorage;
    invoke-virtual {v14}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v15

    .line 1977
    if-eqz v15, :cond_0

    .line 1978
    invoke-virtual {v14}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1982
    .end local v14    # "storage":Landroid/mtp/MtpStorage;
    :cond_1
    if-nez v15, :cond_3

    const/16 v19, -0x1

    .line 2032
    :cond_2
    :goto_0
    return v19

    .line 1983
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".anchor"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1984
    .local v9, "folderPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Landroid/mtp/MtpDatabase;->getParentHandle(ILjava/lang/String;)I

    move-result v11

    .line 1985
    .local v11, "parent":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_4

    const/16 v19, -0x1

    goto :goto_0

    .line 1987
    :cond_4
    const/16 v18, 0x0

    .line 1988
    .local v18, "writeResult":Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1989
    .local v8, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1990
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1991
    const/16 v19, -0x1

    goto :goto_0

    .line 1993
    :cond_5
    const/4 v4, 0x0

    .line 1995
    .local v4, "dos":Ljava/io/DataOutputStream;
    if-nez p2, :cond_6

    .line 1996
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, -0x1

    .line 2005
    if-eqz v4, :cond_2

    .line 2007
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2008
    :catch_0
    move-exception v20

    goto :goto_0

    .line 1998
    :cond_6
    :try_start_2
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1999
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v5, "dos":Ljava/io/DataOutputStream;
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    .line 2001
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    :cond_7
    const/16 v18, 0x1

    .line 2005
    if-eqz v4, :cond_8

    .line 2007
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2011
    :cond_8
    :goto_1
    if-nez v18, :cond_a

    const/16 v19, -0x1

    goto/16 :goto_0

    .line 2002
    :catch_1
    move-exception v6

    .line 2003
    .local v6, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v19, "MtpDatabase"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception when writing file "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to storage: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2005
    if-eqz v4, :cond_8

    .line 2007
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 2008
    :catch_2
    move-exception v19

    goto :goto_1

    .line 2005
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_3
    if-eqz v4, :cond_9

    .line 2007
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2008
    :cond_9
    :goto_4
    throw v19

    .line 2015
    :cond_a
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2016
    .local v17, "values":Landroid/content/ContentValues;
    const-string v19, "_data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const-string v19, "format"

    const/16 v20, 0x3004

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2018
    const-string/jumbo v19, "parent"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2019
    const-string/jumbo v19, "storage_id"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2020
    if-nez p2, :cond_b

    const/4 v13, 0x0

    .line 2021
    .local v13, "size":I
    :goto_5
    const-string v19, "_size"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2022
    const-string v19, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2025
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 2026
    .local v16, "uri":Landroid/net/Uri;
    if-eqz v16, :cond_c

    .line 2027
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v19

    goto/16 :goto_0

    .line 2020
    .end local v13    # "size":I
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p2

    array-length v13, v0

    goto :goto_5

    .line 2029
    .restart local v13    # "size":I
    :catch_3
    move-exception v6

    .line 2030
    .local v6, "e":Landroid/os/RemoteException;
    const-string v19, "MtpDatabase"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException in addAnchorFile: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_c
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 2008
    .end local v13    # "size":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v19

    goto/16 :goto_1

    :catch_5
    move-exception v20

    goto/16 :goto_4

    .line 2005
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v19

    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .line 2002
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method

.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 271
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v0}, Landroid/mtp/MtpDeviceServiceDBHelper;->cleanLegacyData()V

    .line 257
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 259
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDeviceUuid()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1648
    const-string v0, ""

    .line 1651
    .local v0, "deviceUuid":Ljava/lang/String;
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 1652
    .local v7, "wifiMan":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 1653
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 1654
    .local v3, "macAddress":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return-object v0

    .line 1656
    :cond_1
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, ":"

    invoke-direct {v5, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    .local v5, "macTokens":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_0

    .line 1662
    const/4 v2, 0x1

    .line 1663
    .local v2, "isValid":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "00000000-0000-0000-FFFF-"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1664
    .local v1, "deviceUuidBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1665
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1666
    .local v4, "macToken":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 1668
    const/4 v2, 0x0

    .line 1674
    .end local v4    # "macToken":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_0

    .line 1675
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1676
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDeviceUuid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1671
    .restart local v4    # "macToken":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getHostIdsAsArray(I)[Ljava/lang/String;
    .locals 6
    .param p1, "objHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1709
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->getHostIdsAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 1710
    .local v2, "strHostIds":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-object v4

    .line 1716
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, "#"

    invoke-direct {v1, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    .local v1, "hostEui64Tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_0

    .line 1721
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1723
    .local v0, "hostEui64Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1724
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1725
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1728
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1731
    .end local v3    # "token":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1734
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getHostIdsAsString(I)Ljava/lang/String;
    .locals 6
    .param p1, "objHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1699
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v4, "HostIds"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1701
    .local v0, "hostPrefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, "strHostIds":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1705
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Landroid/mtp/MtpDatabase;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final getUUID()[I
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/16 v11, 0x20

    .line 2065
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    const-string v9, "device_uuid"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2066
    .local v6, "uuidStr":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 2067
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2068
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2069
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v8, "device_uuid"

    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2070
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2072
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 2073
    .local v5, "u":Ljava/util/UUID;
    const/4 v8, 0x4

    new-array v7, v8, [I

    .line 2074
    .local v7, "values":[I
    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    .line 2075
    .local v1, "lsb":J
    const/4 v8, 0x3

    and-long v9, v1, v12

    long-to-int v9, v9

    aput v9, v7, v8

    .line 2076
    const/4 v8, 0x2

    ushr-long v9, v1, v11

    long-to-int v9, v9

    aput v9, v7, v8

    .line 2077
    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 2078
    .local v3, "msb":J
    const/4 v8, 0x1

    and-long v9, v3, v12

    long-to-int v9, v9

    aput v9, v7, v8

    .line 2079
    const/4 v8, 0x0

    ushr-long v9, v3, v11

    long-to-int v9, v9

    aput v9, v7, v8

    .line 2080
    return-object v7
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method public requestPairHost(ILjava/lang/String;)V
    .locals 3
    .param p1, "hostId"    # I
    .param p2, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.mtpwifi.REQUEST_PAIR_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v0, "response":Landroid/content/Intent;
    const-string/jumbo v1, "value_0"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    const-string/jumbo v1, "value_1"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1741
    const-string v1, "is_response_to"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1742
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v2, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1743
    return-void
.end method
