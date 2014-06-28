.class public Lcom/sonyericsson/conversations/ui/SlideImageView;
.super Lcom/sonyericsson/conversations/ui/GifImageView;
.source "SlideImageView.java"


# instance fields
.field private mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/GifImageView;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/SlideImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private setStaticImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    if-eqz p2, :cond_0

    .line 85
    invoke-super {p0, p2}, Lcom/sonyericsson/conversations/ui/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/GifImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public setImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SlideImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SlideImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 56
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 65
    :cond_2
    :try_start_1
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideImageView;->mContentType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideImageView;->mContentType:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/GifImageView;->setGifImageURI(Landroid/net/Uri;)Z

    move-result v8

    .line 72
    .local v8, "res":Z
    if-nez v8, :cond_3

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SlideImageView;->setStaticImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 81
    .end local v8    # "res":Z
    :cond_3
    :goto_0
    return-void

    .line 79
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SlideImageView;->setStaticImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/SlideImageView;->setImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method
