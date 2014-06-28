.class public Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FmRadioDbOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$1;,
        Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    }
.end annotation


# static fields
.field private static final CREATE_FAVORITES_TABLE:Ljava/lang/String; = "CREATE TABLE favorites (_id INTEGER PRIMARY KEY AUTOINCREMENT, frequency INTEGER NOT NULL, name TEXT, color INTEGER NOT NULL);"

.field private static final CREATE_RADIO_STATIONS_TABLE:Ljava/lang/String; = "CREATE TABLE radiostations (_id INTEGER PRIMARY KEY AUTOINCREMENT, frequency INTEGER NOT NULL, name TEXT);"

.field static final DATABASE_NAME:Ljava/lang/String; = "stations.db"

.field private static final DATABASE_VERSION:I = 0x2

.field static final FAVORITE_TABLE:Ljava/lang/String; = "favorites"

.field static final FIELD_COLOR:Ljava/lang/String; = "color"

.field static final FIELD_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final FIELD_ID:Ljava/lang/String; = "_id"

.field static final FIELD_NAME:Ljava/lang/String; = "name"

.field static final RADIO_STATION_TABLE:Ljava/lang/String; = "radiostations"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "stations.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public getFavoritesCursor(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 106
    const-string v1, "favorites"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;

    invoke-direct {v9, v8, v2}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$1;)V

    .line 108
    .local v9, "sc":Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    return-object v9
.end method

.method public getStationsCursor(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 94
    const-string v1, "radiostations"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 95
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;

    invoke-direct {v9, v8, v2}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$1;)V

    .line 96
    .local v9, "sc":Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    return-object v9
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    const-string v0, "CREATE TABLE radiostations (_id INTEGER PRIMARY KEY AUTOINCREMENT, frequency INTEGER NOT NULL, name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY AUTOINCREMENT, frequency INTEGER NOT NULL, name TEXT, color INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 72
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "DROP TABLE IF EXISTS radiostations;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "DROP TABLE IF EXISTS favorites;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method

.method public removeAllFavorites(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 85
    const-string v0, "favorites"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public removeAllStations(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 78
    const-string v0, "radiostations"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    return-void
.end method
