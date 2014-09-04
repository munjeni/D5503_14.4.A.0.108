.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1


# instance fields
.field private final mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private final mBucketName:Ljava/lang/String;

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field private final mNotifier:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;IZ)V
    .locals 6
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p3, "bucketId"    # I
    .param p4, "isImage"    # Z

    .prologue
    .line 95
    invoke-interface {p2}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;IZLjava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;IZLjava/lang/String;)V
    .locals 2
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p3, "bucketId"    # I
    .param p4, "isImage"    # Z
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mCachedCount:I

    .line 71
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 72
    invoke-interface {p2}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 73
    iput p3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBucketId:I

    .line 74
    iput-object p5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBucketName:Ljava/lang/String;

    .line 75
    iput-boolean p4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mIsImage:Z

    .line 77
    if-eqz p4, :cond_0

    .line 78
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 79
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 80
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 81
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mItemPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 91
    :goto_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mNotifier:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    .line 92
    return-void

    .line 84
    :cond_0
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 85
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 86
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 87
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mItemPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    goto :goto_0
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 211
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaItemById(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;ZLjava/util/ArrayList;)[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .locals 20
    .param p0, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p1, "isImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-object/from16 v18, v0

    .line 149
    .local v18, "result":[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-object v18

    .line 151
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 152
    .local v14, "idLow":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 158
    .local v13, "idHigh":I
    if-eqz p1, :cond_4

    .line 159
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 160
    .local v3, "baseUri":Landroid/net/Uri;
    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 161
    .local v4, "projection":[Ljava/lang/String;
    sget-object v16, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 168
    .local v16, "itemPath":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 169
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v10

    .line 170
    .local v10, "dataManager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    const-string v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 173
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 180
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 181
    .local v17, "n":I
    const/4 v11, 0x0

    .line 183
    .local v11, "i":I
    :cond_2
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 184
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 187
    .local v12, "id":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_2

    .line 191
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, v12, :cond_5

    .line 192
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_3

    .line 205
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 163
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "baseUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "dataManager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    .end local v11    # "i":I
    .end local v12    # "id":I
    .end local v16    # "itemPath":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v17    # "n":I
    :cond_4
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 164
    .restart local v3    # "baseUri":Landroid/net/Uri;
    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 165
    .restart local v4    # "projection":[Ljava/lang/String;
    sget-object v16, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .restart local v16    # "itemPath":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    goto :goto_1

    .line 197
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "dataManager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    .restart local v11    # "i":I
    .restart local v12    # "id":I
    .restart local v17    # "n":I
    :cond_5
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v8

    .line 198
    .local v8, "childPath":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->loadOrUpdateItem(Lcom/sonymobile/china/photoeditor/crop/data/Path;Landroid/database/Cursor;Lcom/sonymobile/china/photoeditor/crop/data/DataManager;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Z)Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-result-object v15

    .line 200
    .local v15, "item":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    add-int/lit8 v11, v11, 0x1

    .line 202
    goto :goto_2

    .line 205
    .end local v8    # "childPath":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v12    # "id":I
    .end local v15    # "item":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11    # "i":I
    .end local v17    # "n":I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static loadOrUpdateItem(Lcom/sonymobile/china/photoeditor/crop/data/Path;Landroid/database/Cursor;Lcom/sonymobile/china/photoeditor/crop/data/DataManager;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Z)Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .locals 1
    .param p0, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataManager"    # Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    .param p3, "app"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p4, "isImage"    # Z

    .prologue
    .line 131
    invoke-virtual {p2, p0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->peekMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;

    .line 132
    .local v0, "item":Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 133
    if-eqz p4, :cond_0

    .line 134
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    .end local v0    # "item":Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Landroid/database/Cursor;)V

    .line 141
    .restart local v0    # "item":Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;

    .end local v0    # "item":Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0    # "item":Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 259
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->assertNotInRenderThread()V

    .line 260
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 101
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v8

    .line 102
    .local v8, "dataManager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, "uri":Landroid/net/Uri;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->assertNotInRenderThread()V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 108
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 126
    :goto_0
    return-object v11

    .line 116
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 118
    .local v9, "id":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mItemPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v0, v9}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v6

    .line 119
    .local v6, "childPath":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->loadOrUpdateItem(Lcom/sonymobile/china/photoeditor/crop/data/Path;Landroid/database/Cursor;Lcom/sonymobile/china/photoeditor/crop/data/DataManager;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Z)Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-result-object v10

    .line 121
    .local v10, "item":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 124
    .end local v6    # "childPath":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v9    # "id":I
    .end local v10    # "item":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 218
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 235
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 229
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 230
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 232
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x405

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mNotifier:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->mCachedCount:I

    .line 249
    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method
