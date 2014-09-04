.class public Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;
.super Landroid/app/Activity;
.source "GifMakerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;
    }
.end annotation


# static fields
.field private static final AVERAGE_SAMPLE_SIZE:I = 0x2

.field private static final COMPRESSION_STANDARD:I = 0x168

.field private static final DELAY:I = 0x64

.field private static final MAX_COMPRESSED_NUM:I = 0x50

.field private static final MAX_SIZE:J = 0x400000L

.field private static final MSG_CONVERTING:I = 0x317e17

.field private static final MSG_CONVERT_END:I = 0x317e1a

.field private static final MSG_CONVERT_FINISHED:I = 0x317e18

.field private static final MSG_CONVERT_START:I = 0x317e16

.field private static final P160_AVERAGE_COMPRESSED_SIZE:J = 0x7800L

.field private static final P160_AVERAGE_COMPRESSED_VALUE:I = 0xa0

.field private static final P240_AVERAGE_COMPRESSED_SIZE:J = 0xa000L

.field private static final P240_AVERAGE_COMPRESSED_VALUE:I = 0xf0

.field private static final PATH:Ljava/lang/String; = "Edited/Animation"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String;

.field private static final SHARE_ACTION:Ljava/lang/String; = "com.sonymobile.multishare.action.SHARE_GIF"

.field private static final SHOW_CONVERT_PROGRESS_DIALOG:I = 0x1

.field private static final SORT_ORDER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "photoeditor"


# instance fields
.field private isCancel:Z

.field private mCoverUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mImageCount:I

.field private mImageCursor:Landroid/database/Cursor;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->PROJECTION:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bucket_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->SELECTION:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "datetaken"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->SORT_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->isCancel:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->isCancel:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private checkFileDirectory()V
    .locals 4

    .prologue
    .line 237
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Edited/Animation"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v1, "saveDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 242
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 246
    .end local v0    # "result":Z
    :cond_0
    return-void
.end method

.method private initCursor()V
    .locals 11

    .prologue
    .line 164
    const-string v6, "-1"

    .line 165
    .local v6, "bucketId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 167
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mCoverUri:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "bucket_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    const-string v0, "width"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 176
    .local v10, "width":I
    const-string v0, "height"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 179
    .local v8, "height":I
    if-lez v10, :cond_1

    if-lez v8, :cond_1

    .line 180
    if-ge v10, v8, :cond_0

    .line 181
    move v10, v8

    .line 183
    :cond_0
    div-int/lit16 v9, v10, 0x140

    .line 184
    .local v9, "inSampleSize":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .end local v8    # "height":I
    .end local v9    # "inSampleSize":I
    .end local v10    # "width":I
    :cond_1
    if-eqz v7, :cond_2

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v7, 0x0

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->SELECTION:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    sget-object v5, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    .line 201
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 202
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCount:I

    .line 203
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCount:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_6

    .line 204
    const/16 v0, 0x50

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCount:I

    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070082

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004a

    new-instance v2, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$3;-><init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004b

    new-instance v2, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$2;-><init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 234
    :cond_3
    :goto_0
    return-void

    .line 188
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x317e1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    if-eqz v7, :cond_3

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v7, 0x0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v7, 0x0

    :cond_5
    throw v0

    .line 229
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;-><init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x317e1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mCoverUri:Landroid/net/Uri;

    .line 104
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mCoverUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mCoverUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->finish()V

    .line 161
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->checkFileDirectory()V

    .line 110
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mCoverUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "lastPaht":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mCoverUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mUri:Landroid/net/Uri;

    .line 114
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 115
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    new-instance v2, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;-><init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->initCursor()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 272
    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 253
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 254
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 256
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 258
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 259
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$4;-><init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_0
    return-void
.end method
