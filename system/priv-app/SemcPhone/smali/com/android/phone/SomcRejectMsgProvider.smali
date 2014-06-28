.class public Lcom/android/phone/SomcRejectMsgProvider;
.super Landroid/content/ContentProvider;
.source "SomcRejectMsgProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/android/phone/SomcRejectMsgDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/phone/SomcRejectMsgProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 36
    sget-object v0, Lcom/android/phone/SomcRejectMsgProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.phone.somcrejectmsgprovider"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static checkUri(Landroid/net/Uri;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    sget-object v0, Lcom/android/phone/SomcRejectMsgProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/phone/SomcRejectMsgDBHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/SomcRejectMsgDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcRejectMsgProvider;->mDbHelper:Lcom/android/phone/SomcRejectMsgDBHelper;

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-static {p1}, Lcom/android/phone/SomcRejectMsgProvider;->checkUri(Landroid/net/Uri;)V

    .line 49
    iget-object v1, p0, Lcom/android/phone/SomcRejectMsgProvider;->mDbHelper:Lcom/android/phone/SomcRejectMsgDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 50
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "t_rejectmsgs"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/phone/SomcRejectMsgProvider;->checkUri(Landroid/net/Uri;)V

    .line 72
    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgProvider;->mDbHelper:Lcom/android/phone/SomcRejectMsgDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "t_rejectmsgs"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 80
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 78
    return v2

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SomcRejectMsgProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 80
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    throw v2
.end method
