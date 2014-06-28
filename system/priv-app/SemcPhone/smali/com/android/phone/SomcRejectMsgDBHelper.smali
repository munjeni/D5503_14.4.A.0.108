.class public Lcom/android/phone/SomcRejectMsgDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SomcRejectMsgDBHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "rejectmsgs.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    const-string v5, "CREATE TABLE t_rejectmsgs ( _id INTEGER PRIMARY KEY AUTOINCREMENT,default_message INTEGER,message VARCHAR(1000));"

    .line 51
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v1, "cv":Landroid/content/ContentValues;
    sget-object v0, Lcom/android/phone/SomcRejectMsgManager;->DEFAULT_MESSAGES_ARRAY:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .line 66
    .local v3, "id":I
    const-string v6, "default_message"

    sget-object v7, Lcom/android/phone/SomcRejectMsgManager;->DEFAULT_MESSAGES_ARRAY:[I

    invoke-static {v7, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v6, "t_rejectmsgs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 69
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 70
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_0

    .line 71
    const-string v6, "SomcRejectMsgDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Arrays.binarySearch ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/SomcRejectMsgManager;->DEFAULT_MESSAGES_ARRAY:[I

    invoke-static {v8, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "id":I
    :cond_1
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 83
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 88
    const-string v0, "DROP TABLE IF EXISTS t_rejectmsgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcRejectMsgDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 79
    return-void
.end method
