.class public Lcom/sonyericsson/conversations/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final DOWNLOAD_AUTHORITY:Ljava/lang/String; = "com.android.providers.downloads.documents"

.field private static final EXTERNAL_STORAGE_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final MEDIA_AUTHORITY:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static final MEDIA_STORE_PROJECTION:[Ljava/lang/String;

.field private static final PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/util/FileUtil;->MEDIA_STORE_PROJECTION:[Ljava/lang/String;

    .line 26
    const-string v0, "content://downloads/public_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/util/FileUtil;->PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 70
    const/4 v7, 0x0

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 73
    .local v8, "dataColumn":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/conversations/util/FileUtil;->MEDIA_STORE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 75
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 77
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 80
    .end local v6    # "column_index":I
    :cond_0
    if-eqz v7, :cond_1

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_1
    return-object v8

    .line 80
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_2
    throw v0
.end method

.method public static getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 33
    const-string v7, "com.android.externalstorage.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 34
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "docId":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v3, v7, v10

    .line 36
    .local v3, "id":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .end local v1    # "docId":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 37
    :cond_1
    const-string v7, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .restart local v1    # "docId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 41
    .local v3, "id":J
    sget-object v7, Lcom/sonyericsson/conversations/util/FileUtil;->PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v9, v9}, Lcom/sonyericsson/conversations/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    goto :goto_0

    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v3    # "id":J
    :cond_2
    const-string v7, "com.android.providers.media.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "split":[Ljava/lang/String;
    aget-object v6, v5, v11

    .line 47
    .local v6, "type":Ljava/lang/String;
    aget-object v3, v5, v10

    .line 48
    .local v3, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 50
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v7, "image"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 51
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 57
    :cond_3
    :goto_1
    const-string v7, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v3, v8, v11

    invoke-static {p0, v0, v7, v8}, Lcom/sonyericsson/conversations/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    goto :goto_0

    .line 52
    :cond_4
    const-string v7, "video"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 53
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 54
    :cond_5
    const-string v7, "audio"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 59
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_6
    const-string v7, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 61
    invoke-static {p0, p1, v9, v9}, Lcom/sonyericsson/conversations/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 62
    :cond_7
    const-string v7, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
