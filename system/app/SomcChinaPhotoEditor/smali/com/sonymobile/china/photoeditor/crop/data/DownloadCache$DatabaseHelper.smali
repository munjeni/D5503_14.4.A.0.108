.class final Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "download.db"

.field public static final DATABASE_VERSION:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    .line 314
    const-string v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 315
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 319
    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->SCHEMA:Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;

    invoke-virtual {v4, p1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 321
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$100(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 322
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 333
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->SCHEMA:Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    return-void
.end method
