.class public Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SomcAmGreetingDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmGreetingDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SomcAmGreetingDbHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, "greeting.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    iput-object v2, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;->mContext:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private insertPresetMessages(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "presetDisplayNames"    # [Ljava/lang/String;
    .param p3, "presetFileNames"    # [Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_2

    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, "contentValues":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 86
    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 88
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "SomcAmGreetingDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayname : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lengh : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-string v2, "_id"

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v2, "type"

    const-string v3, "preset"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "name"

    aget-object v3, p2, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "path"

    aget-object v3, p3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "t_greeting"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 100
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_1

    .line 103
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 57
    const-string v2, "CREATE TABLE t_greeting ( _id INTEGER PRIMARY KEY AUTOINCREMENT,type VARCHAR(1000),name VARCHAR(1000),path VARCHAR(1000),date LONG);"

    .line 64
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "presetDisplayNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "presetFileNames":[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_0

    .line 73
    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;->insertPresetMessages(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
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
