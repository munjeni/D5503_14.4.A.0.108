.class Lcom/sonymobile/china/photoeditor/crop/data/UriSource;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
.source "UriSource.java"


# static fields
.field private static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V
    .locals 1
    .param p1, "context"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .prologue
    .line 42
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 44
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    .locals 6
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "segment":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 50
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "decoded":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "decoded":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/uri/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v1

    .line 75
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
