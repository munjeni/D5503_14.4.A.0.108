.class public Lcom/sonyericsson/conversations/ui/util/AddMediaController;
.super Ljava/lang/Object;
.source "AddMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;
    }
.end annotation


# static fields
.field public static final ADD_MEDIA_RETURNED_MEDIA_TYPE:Ljava/lang/String; = "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

.field private static final REQUEST_CODE_CAPTURE_PICTURE:I = 0x2

.field private static final REQUEST_CODE_CAPTURE_VIDEO:I = 0x4

.field private static final REQUEST_CODE_CREATE_SLIDESHOW:I = 0x6

.field private static final REQUEST_CODE_GET_LOCATION:I = 0x7

.field private static final REQUEST_CODE_LAST:I = 0xb

.field public static final REQUEST_CODE_NOTES_PICKER:I = 0xa

.field private static final REQUEST_CODE_PICK_AUDIO:I = 0x5

.field public static final REQUEST_CODE_PICK_CONTACT:I = 0x9

.field private static final REQUEST_CODE_PICK_PICTURE:I = 0x1

.field private static final REQUEST_CODE_PICK_VIDEO:I = 0x3

.field public static final REQUEST_CODE_RANGE:I = 0xa

.field private static final REQUEST_CODE_SKETCH:I = 0x8

.field public static final RETURN_CODE_MEDIA_TYPE_AUDIO:I = 0x131

.field public static final RETURN_CODE_MEDIA_TYPE_CAMERA_IMAGE:I = 0x12e

.field public static final RETURN_CODE_MEDIA_TYPE_CAMERA_VIDEO:I = 0x130

.field public static final RETURN_CODE_MEDIA_TYPE_CONTACT:I = 0x135

.field public static final RETURN_CODE_MEDIA_TYPE_IMAGE:I = 0x12d

.field public static final RETURN_CODE_MEDIA_TYPE_LOCATION:I = 0x133

.field public static final RETURN_CODE_MEDIA_TYPE_NOTES:I = 0x136

.field public static final RETURN_CODE_MEDIA_TYPE_SKETCH:I = 0x134

.field public static final RETURN_CODE_MEDIA_TYPE_SLIDESHOW:I = 0x132

.field public static final RETURN_CODE_MEDIA_TYPE_VIDEO:I = 0x12f

.field private static final SKETCH_FLAG:Ljava/lang/String; = "flag_caller_id"

.field private static final SKETCH_FLAG_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AddMediaController"

.field public static final TYPE:Ljava/lang/String; = "type"

.field private static mCaptureUri:Landroid/net/Uri;


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private final mRequestBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mCaptureUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestBase"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    .line 90
    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    .line 91
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->getPhotoUri()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mCaptureUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/util/AddMediaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    .prologue
    .line 27
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/util/AddMediaController;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/util/AddMediaController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->popUpToastInUiThread(I)V

    return-void
.end method

.method private static createPhotoDir()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Messaging"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "photoDirStr":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "photoDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const-string v2, "AddMediaController"

    const-string v3, "photoDir mkdir failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    :cond_1
    const-string v2, "AddMediaController"

    const-string v3, "photoDir set attribute failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    return-object v1
.end method

.method private static getPhotoUri()V
    .locals 6

    .prologue
    .line 114
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->createPhotoDir()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "photoDir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 116
    .local v2, "photoNameStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, "photoFile":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    new-instance v1, Ljava/io/File;

    .end local v1    # "photoFile":Ljava/io/File;
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .restart local v1    # "photoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mCaptureUri:Landroid/net/Uri;

    .line 123
    return-void
.end method

.method private handleCapturePictureResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 207
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    .line 211
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 213
    .local v0, "imageUri":Landroid/net/Uri;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    const-string v2, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v3, 0x12e

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 211
    .end local v0    # "imageUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mCaptureUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private handleCaptureVideoResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 229
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_1

    .line 230
    :cond_0
    const/4 v1, 0x0

    .line 237
    :goto_0
    return-object v1

    .line 233
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 234
    .local v0, "imageUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    const-string v2, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v3, 0x130

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleCreateSlideshowResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x132

    .line 250
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 251
    const-string v1, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    .end local p2    # "data":Landroid/content/Intent;
    :goto_0
    return-object p2

    .line 254
    .restart local p2    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 256
    const-string v1, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object p2, v0

    .line 257
    goto :goto_0
.end method

.method private handleGetLocationResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 262
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 263
    :cond_0
    const/4 p2, 0x0

    .line 267
    .end local p2    # "data":Landroid/content/Intent;
    :goto_0
    return-object p2

    .line 266
    .restart local p2    # "data":Landroid/content/Intent;
    :cond_1
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v1, 0x133

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleNotesResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 280
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 281
    :cond_0
    const/4 p2, 0x0

    .line 285
    .end local p2    # "data":Landroid/content/Intent;
    :goto_0
    return-object p2

    .line 284
    .restart local p2    # "data":Landroid/content/Intent;
    :cond_1
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v1, 0x136

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handlePickAudioResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 241
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 242
    :cond_0
    const/4 p2, 0x0

    .line 246
    .end local p2    # "data":Landroid/content/Intent;
    :goto_0
    return-object p2

    .line 245
    .restart local p2    # "data":Landroid/content/Intent;
    :cond_1
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v1, 0x131

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handlePickPictureResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 198
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    const/4 p2, 0x0

    .line 203
    .end local p2    # "data":Landroid/content/Intent;
    :goto_0
    return-object p2

    .line 202
    .restart local p2    # "data":Landroid/content/Intent;
    :cond_1
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v1, 0x12d

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handlePickVideoResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 220
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 221
    :cond_0
    const/4 p2, 0x0

    .line 225
    .end local p2    # "data":Landroid/content/Intent;
    :goto_0
    return-object p2

    .line 224
    .restart local p2    # "data":Landroid/content/Intent;
    :cond_1
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v1, 0x12f

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleSketchResult(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 271
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 272
    :cond_0
    const/4 p2, 0x0

    .line 276
    .end local p2    # "data":Landroid/content/Intent;
    :goto_0
    return-object p2

    .line 275
    .restart local p2    # "data":Landroid/content/Intent;
    :cond_1
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    const/16 v1, 0x134

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private popUpToastInUiThread(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;-><init>(Lcom/sonyericsson/conversations/ui/util/AddMediaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 301
    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    sub-int v0, p1, v1

    .line 303
    .local v0, "requestType":I
    packed-switch v0, :pswitch_data_0

    .line 332
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 305
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handlePickPictureResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 308
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handleCapturePictureResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 311
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handlePickVideoResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 314
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handleCaptureVideoResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 317
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handlePickAudioResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 320
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handleCreateSlideshowResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 323
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handleGetLocationResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 326
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handleSketchResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 329
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handleNotesResult(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public launchAudioPicker(I)V
    .locals 5
    .param p1, "sizeLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getAudioPicker(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    return-void
.end method

.method public launchCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/util/AddMediaController;Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method

.method public launchContactPicker()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getContactPicker(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    return-void
.end method

.method public launchLocationEdior(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getLocationEditor(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    return-void
.end method

.method public launchNotes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getNotesPickerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    return-void
.end method

.method public launchPicturePicker()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getImagePicker()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method

.method public launchSketch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "flag_caller_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    return-void
.end method

.method public launchSlideshowEdior(Landroid/net/Uri;)V
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSlideshowEditor(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method

.method public launchSlideshowEdior(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSlideshowEditor(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    return-void
.end method

.method public launchVideoCamera(I)V
    .locals 4
    .param p1, "sizeLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getVideoCapture(J)Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    return-void
.end method

.method public launchVideoPicker()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getVideoPicker()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    return-void
.end method
