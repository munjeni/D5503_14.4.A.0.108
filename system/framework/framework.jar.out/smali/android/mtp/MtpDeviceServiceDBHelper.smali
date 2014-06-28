.class Landroid/mtp/MtpDeviceServiceDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MtpDeviceServiceDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;,
        Landroid/mtp/MtpDeviceServiceDBHelper$IsAnchorValid;,
        Landroid/mtp/MtpDeviceServiceDBHelper$ServicePropsColumns;,
        Landroid/mtp/MtpDeviceServiceDBHelper$AnchorObjectsColumns;,
        Landroid/mtp/MtpDeviceServiceDBHelper$AnchorColumns;,
        Landroid/mtp/MtpDeviceServiceDBHelper$Tables;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "mtp_device_service.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DELETE_LEGACY_ANCHOR_SQL:Ljava/lang/String; = "DELETE FROM anchor WHERE service_id=\'?\' AND is_valid!=\'0\' AND _id NOT IN (SELECT _id FROM anchor WHERE is_valid=\'1\' AND service_id=\'?\' ORDER BY _id DESC LIMIT 10)"

.field private static final LEGACY_ANCHOR_COUNT:I = 0xa

.field private static final QUERY_ANCHOR_IDS_SQL:Ljava/lang/String; = "SELECT _id FROM anchor WHERE is_valid=0 AND service_id = (SELECT service_id FROM anchor WHERE anchor=?)"

.field private static final QUERY_ANCHOR_OBJECTS_SQL:Ljava/lang/String; = "SELECT b.object_id, b.status FROM anchor a, anchor_objects b WHERE a._id=b.anchor_id AND a.object_id=?"

.field private static final QUERY_CURRENT_ANCHOR_SQL:Ljava/lang/String; = "SELECT a._id, a.anchor, a.service_id, a.object_id, a.is_valid FROM anchor a, service_properties b WHERE b.service_id=? AND b.property_code=57 AND b.string_value=a.anchor"

.field private static final QUERY_SERVICE_IDS_SQL:Ljava/lang/String; = "SELECT DISTINCT(service_id) FROM anchor"

.field private static final SERVICE_ID_PROPERTY_CODE_WHERE:Ljava/lang/String; = "service_id=? AND property_code=?"

.field private static final SERVICE_ID_WHERE:Ljava/lang/String; = "service_id=?"

.field private static final SERVICE_PROPERTIES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MtpDeviceServiceDBHelper"

.field private static sSingleton:Landroid/mtp/MtpDeviceServiceDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "service_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "property_code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "long_value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "string_value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDeviceServiceDBHelper;->SERVICE_PROPERTIES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string/jumbo v0, "mtp_device_service.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 130
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 144
    const-string v0, "CREATE TABLE IF NOT EXISTS anchor (_id INTEGER PRIMARY KEY,anchor TEXT, service_id INTEGER NOT NULL, object_id INTEGER NOT NULL, is_valid INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    const-string v0, "CREATE TABLE IF NOT EXISTS anchor_objects (_id INTEGER PRIMARY KEY,anchor_id INTEGER NOT NULL, object_id INTEGER NOT NULL, status INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v0, "CREATE TRIGGER IF NOT EXISTS anchor_deleted DELETE ON anchor BEGIN DELETE FROM anchor_objects WHERE anchor_objects.anchor_id = old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS idx_anchor_objects ON anchor_objects(anchor_id, object_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    const-string v0, "CREATE TABLE IF NOT EXISTS service_properties (_id INTEGER PRIMARY KEY,service_id INTEGER NOT NULL, property_code INTEGER NOT NULL, data_type INTEGER NOT NULL, long_value INTEGER NOT NULL, string_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS idx_service_properties ON service_properties(service_id, property_code);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/mtp/MtpDeviceServiceDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-class v1, Landroid/mtp/MtpDeviceServiceDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/mtp/MtpDeviceServiceDBHelper;->sSingleton:Landroid/mtp/MtpDeviceServiceDBHelper;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-direct {v0, p0}, Landroid/mtp/MtpDeviceServiceDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/mtp/MtpDeviceServiceDBHelper;->sSingleton:Landroid/mtp/MtpDeviceServiceDBHelper;

    .line 125
    :cond_0
    sget-object v0, Landroid/mtp/MtpDeviceServiceDBHelper;->sSingleton:Landroid/mtp/MtpDeviceServiceDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertDefaultServiceProps(Landroid/database/sqlite/SQLiteDatabase;I[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "serviceID"    # I
    .param p3, "propValues"    # [Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    .prologue
    .line 308
    move-object v0, p3

    .local v0, "arr$":[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 309
    .local v3, "propValue":Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "service_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string/jumbo v5, "property_code"

    iget v6, v3, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mPropertyCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v5, "data_type"

    iget v6, v3, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mDataType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v5, "long_value"

    iget-wide v6, v3, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mLongValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    const-string/jumbo v5, "string_value"

    iget-object v6, v3, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mStringValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v5, "service_properties"

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p1, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v3    # "propValue":Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isStringType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 385
    const v0, 0xffff

    if-eq p1, v0, :cond_0

    const v0, 0xfffe

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4001

    if-lt p1, v0, :cond_1

    const/16 v0, 0x400a

    if-gt p1, v0, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAnchor(Ljava/lang/String;III)Z
    .locals 5
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "serviceId"    # I
    .param p3, "objectId"    # I
    .param p4, "isValid"    # I

    .prologue
    .line 242
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "anchor"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "service_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string/jumbo v1, "object_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "is_valid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "anchor"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cleanLegacyData()V
    .locals 7

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 457
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT DISTINCT(service_id) FROM anchor"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_0

    .line 460
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 461
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    const-string/jumbo v4, "service_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "serviceId":Ljava/lang/String;
    const-string v4, "DELETE FROM anchor WHERE service_id=\'?\' AND is_valid!=\'0\' AND _id NOT IN (SELECT _id FROM anchor WHERE is_valid=\'1\' AND service_id=\'?\' ORDER BY _id DESC LIMIT 10)"

    const-string v5, "?"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 470
    .end local v3    # "serviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 471
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v4, "MtpDeviceServiceDBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete legacy anchor failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 474
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 477
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_0
    :goto_1
    return-void

    .line 469
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 474
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 473
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 474
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public deleteServicePropertyList(ILandroid/mtp/MtpPropertyList;)I
    .locals 8
    .param p1, "serviceID"    # I
    .param p2, "servicePropList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 395
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 398
    iget-object v3, p2, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v2, v3, v1

    .line 399
    .local v2, "propCode":I
    if-nez v2, :cond_1

    .line 400
    const-string/jumbo v3, "service_properties"

    const-string/jumbo v4, "service_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    .end local v2    # "propCode":I
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 413
    const/16 v3, 0x2001

    return v3

    .line 404
    .restart local v2    # "propCode":I
    :cond_1
    :try_start_1
    const-string/jumbo v3, "service_properties"

    const-string/jumbo v4, "service_id=? AND property_code=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "propCode":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public getAnchorInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .locals 12
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 207
    const-string/jumbo v0, "service_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "is_valid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v9, v5

    .line 238
    :cond_1
    :goto_0
    return-object v9

    .line 210
    :cond_2
    const/4 v11, 0x0

    .line 211
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "anchor"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "anchor"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string/jumbo v4, "service_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "object_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "is_valid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 219
    const/4 v9, 0x0

    .line 220
    .local v9, "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    if-eqz v11, :cond_1

    .line 222
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    new-instance v10, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;

    invoke-direct {v10}, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v9    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .local v10, "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :try_start_1
    const-string/jumbo v0, "service_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    .line 226
    const-string/jumbo v0, "object_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->objectId:I

    .line 228
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->_id:I

    .line 229
    const-string v0, "anchor"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->anchor:Ljava/lang/String;

    .line 231
    const-string v0, "is_valid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->isValid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 235
    .end local v10    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .restart local v9    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v9    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .restart local v10    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .restart local v9    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    goto :goto_1
.end method

.method public getAnchorObjects(Ljava/lang/String;)[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .locals 9
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "anchorObjects":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    const/4 v1, 0x0

    .line 182
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT b.object_id, b.status FROM anchor a, anchor_objects b WHERE a._id=b.anchor_id AND a.object_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_1

    .line 187
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [Landroid/mtp/MtpServiceDatabase$ChangeItem;

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 190
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    new-instance v4, Landroid/mtp/MtpServiceDatabase$ChangeItem;

    invoke-direct {v4}, Landroid/mtp/MtpServiceDatabase$ChangeItem;-><init>()V

    .line 192
    .local v4, "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    const-string/jumbo v5, "object_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Landroid/mtp/MtpServiceDatabase$ChangeItem;->id:I

    .line 194
    const-string/jumbo v5, "status"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Landroid/mtp/MtpServiceDatabase$ChangeItem;->status:I

    .line 196
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 197
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 200
    .end local v3    # "i":I
    .end local v4    # "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_1
    return-object v0

    .line 200
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public getCurrentAnchor(I)Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .locals 8
    .param p1, "serviceId"    # I

    .prologue
    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 431
    .local v0, "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 432
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT a._id, a.anchor, a.service_id, a.object_id, a.is_valid FROM anchor a, service_properties b WHERE b.service_id=? AND b.property_code=57 AND b.string_value=a.anchor"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 433
    if-eqz v2, :cond_1

    .line 435
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    new-instance v1, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;

    invoke-direct {v1}, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v0    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .local v1, "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :try_start_1
    const-string/jumbo v4, "service_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    .line 439
    const-string/jumbo v4, "object_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->objectId:I

    .line 441
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->_id:I

    .line 442
    const-string v4, "anchor"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->anchor:Ljava/lang/String;

    .line 444
    const-string v4, "is_valid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->isValid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 448
    .end local v1    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .restart local v0    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_1
    return-object v0

    .line 448
    :catchall_0
    move-exception v4

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v4

    .end local v0    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .restart local v1    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    .restart local v0    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    goto :goto_0
.end method

.method public getServicePropertyList(II)Landroid/mtp/MtpPropertyList;
    .locals 13
    .param p1, "serviceID"    # I
    .param p2, "propCode"    # I

    .prologue
    const/16 v10, 0x2001

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 321
    const/4 v12, 0x0

    .line 322
    .local v12, "cursor":Landroid/database/Cursor;
    const-string/jumbo v3, "service_id=? AND property_code=?"

    .line 323
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 324
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-nez p2, :cond_0

    .line 325
    const-string/jumbo v3, "service_id=?"

    .line 326
    new-array v4, v1, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 330
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "service_properties"

    sget-object v2, Landroid/mtp/MtpDeviceServiceDBHelper;->SERVICE_PROPERTIES_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 332
    if-eqz v12, :cond_2

    .line 334
    :try_start_0
    new-instance v5, Landroid/mtp/MtpPropertyList;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x2001

    invoke-direct {v5, v0, v1}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 336
    .local v5, "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const-string/jumbo v0, "service_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v0, "property_code"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v0, "data_type"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v0, "long_value"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string/jumbo v0, "string_value"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v5 .. v11}, Landroid/mtp/MtpPropertyListHelper;->append(Landroid/mtp/MtpPropertyList;IIIJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 346
    .end local v5    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 328
    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 346
    .restart local v5    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 349
    .end local v5    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    :goto_2
    return-object v5

    :cond_2
    new-instance v5, Landroid/mtp/MtpPropertyList;

    invoke-direct {v5, v9, v10}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_2
.end method

.method public initServicePropsTable()V
    .locals 5

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 293
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 294
    const/16 v2, 0x20

    sget-object v3, Landroid/mtp/MtpDeviceServiceConstants;->sContactValues:[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    invoke-direct {p0, v0, v2, v3}, Landroid/mtp/MtpDeviceServiceDBHelper;->insertDefaultServiceProps(Landroid/database/sqlite/SQLiteDatabase;I[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;)V

    .line 296
    const/16 v2, 0x3f

    sget-object v3, Landroid/mtp/MtpDeviceServiceConstants;->sCalendarValues:[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;

    invoke-direct {p0, v0, v2, v3}, Landroid/mtp/MtpDeviceServiceDBHelper;->insertDefaultServiceProps(Landroid/database/sqlite/SQLiteDatabase;I[Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;)V

    .line 298
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 304
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v2, "MtpDeviceServiceDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initServicePropsTable failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/mtp/MtpDeviceServiceDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v3, 0x1

    .line 481
    if-le p2, v3, :cond_0

    .line 482
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The oldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on upgrade is greater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "than expect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    return-void
.end method

.method public saveAnchorChanges(Ljava/lang/String;[Landroid/mtp/MtpServiceDatabase$ChangeItem;)Z
    .locals 13
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "changedItems"    # [Landroid/mtp/MtpServiceDatabase$ChangeItem;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 264
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v10, "SELECT _id FROM anchor WHERE is_valid=0 AND service_id = (SELECT service_id FROM anchor WHERE anchor=?)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_3

    .line 266
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 267
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 268
    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 269
    .local v0, "anchorId":I
    move-object v1, p2

    .local v1, "arr$":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v5, v1, v4

    .line 270
    .local v5, "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v7, "values":Landroid/content/ContentValues;
    const-string v9, "anchor_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string/jumbo v9, "object_id"

    iget v10, v5, Landroid/mtp/MtpServiceDatabase$ChangeItem;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string/jumbo v9, "status"

    iget v10, v5, Landroid/mtp/MtpServiceDatabase$ChangeItem;->status:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v9, "anchor_objects"

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v3, v9, v10, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "anchorId":I
    .end local v1    # "arr$":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .end local v4    # "i$":I
    .end local v5    # "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .end local v6    # "len$":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 279
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_2
    :goto_1
    return v8

    .line 282
    :cond_3
    :try_start_1
    const-string v8, "MtpDeviceServiceDBHelper"

    const-string v10, "Anchor cursor is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move v8, v9

    .line 287
    goto :goto_1

    .line 285
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v8
.end method

.method public setAnchorSynced(Ljava/lang/String;)Z
    .locals 8
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "is_valid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "anchor"

    const-string/jumbo v6, "object_id=?"

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v3

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "updated":I
    if-lez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public setCurrentAnchor(ILjava/lang/String;)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "anchor"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "service_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string/jumbo v1, "property_code"

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v1, "data_type"

    const/16 v2, 0x4002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v1, "long_value"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string/jumbo v1, "string_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "service_properties"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 426
    return-void
.end method

.method public setServicePropertyList(ILandroid/mtp/MtpPropertyList;)I
    .locals 11
    .param p1, "serviceID"    # I
    .param p2, "servicePropList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 355
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 356
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 359
    iget-object v7, p2, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aget v7, v7, v2

    invoke-direct {p0, v7}, Landroid/mtp/MtpDeviceServiceDBHelper;->isStringType(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 360
    iget-object v7, p2, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aget-object v5, v7, v2

    .line 361
    .local v5, "strValue":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 366
    .local v3, "longValue":J
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "service_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string/jumbo v7, "property_code"

    iget-object v8, p2, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v8, v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v7, "data_type"

    iget-object v8, p2, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aget v8, v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v7, "long_value"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string/jumbo v7, "string_value"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string/jumbo v8, "service_properties"

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v3    # "longValue":J
    .end local v5    # "strValue":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v5, ""

    .line 364
    .restart local v5    # "strValue":Ljava/lang/String;
    iget-object v7, p2, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aget-wide v3, v7, v2

    .restart local v3    # "longValue":J
    goto :goto_1

    .line 375
    .end local v3    # "longValue":J
    .end local v5    # "strValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 381
    .end local v2    # "i":I
    :goto_2
    const/16 v7, 0x2001

    return v7

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v7, "MtpDeviceServiceDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initServicePropsTable failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method
