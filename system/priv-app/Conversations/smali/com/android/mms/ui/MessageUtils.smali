.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final IMAGE_COMPRESSION_QUALITY:I = 0x50

.field private static final LOCAL_LOGV:Z = false

.field public static final MESSAGE_OVERHEAD:I = 0x1388

.field public static final MINIMUM_IMAGE_COMPRESSION_QUALITY:I = 0x32

.field private static final NUMERIC_CHARS_SUGAR:[C

.field private static final TAG:Ljava/lang/String; = "MessageUtils"

.field private static numericSugarMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 79
    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 83
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 87
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void

    .line 79
    :array_0
    .array-data 2
        0x2ds
        0x2es
        0x2cs
        0x28s
        0x29s
        0x20s
        0x2fs
        0x5cs
        0x2as
        0x23s
        0x2bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "fullFormat"    # Z

    .prologue
    .line 98
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 99
    .local v2, "then":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 100
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 101
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 104
    const v0, 0x80b00

    .line 109
    .local v0, "format_flags":I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 110
    or-int/lit8 v0, v0, 0x14

    .line 122
    :goto_0
    if-eqz p3, :cond_0

    .line 123
    or-int/lit8 v0, v0, 0x11

    .line 126
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 111
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 113
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 116
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static recordSound(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 130
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    .param p4, "append"    # Z

    .prologue
    .line 271
    new-instance v4, Lcom/android/mms/ui/MessageUtils$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageUtils$2;-><init>(Landroid/content/Context;)V

    .line 277
    .local v4, "showProgress":Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 300
    return-void
.end method

.method public static saveBitmapAsPart(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "originPictureUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    const/4 v12, 0x0

    .line 252
    :goto_0
    return-object v12

    .line 217
    :cond_0
    const/4 v13, 0x0

    .line 218
    .local v13, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    .line 219
    move-object/from16 v0, p3

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v9

    .line 220
    .local v9, "orientation":I
    invoke-static {v9}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v6

    .line 221
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 225
    if-eqz v13, :cond_1

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    move-object/from16 p2, v13

    .line 232
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v9    # "orientation":I
    :cond_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    .local v10, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_2

    .line 234
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 237
    :cond_2
    new-instance v11, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 239
    .local v11, "part":Lcom/google/android/mms/pdu/PduPart;
    const-string v1, "image/jpeg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "contentId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 242
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 243
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 245
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v11, v2, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v12

    .line 252
    .local v12, "retVal":Landroid/net/Uri;
    goto/16 :goto_0
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 145
    const-string v0, "image/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 150
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 158
    .local v1, "wrapperIntent":Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    .end local v0    # "innerIntent":Landroid/content/Intent;
    .end local v1    # "wrapperIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 141
    const-string v0, "video/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 142
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "briefMessage"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    return-void
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgUri"    # Landroid/net/Uri;
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 316
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 317
    .local v2, "isSimple":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 319
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 338
    :goto_1
    return-void

    .line 316
    .end local v2    # "isSimple":Z
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v2

    goto :goto_0

    .line 322
    .restart local v2    # "isSimple":Z
    :cond_1
    if-eqz p2, :cond_2

    .line 323
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v4

    .line 325
    .local v4, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    .line 326
    .local v3, "pb":Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v4, p1, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 327
    invoke-virtual {p2, v3}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v3    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .end local v4    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 328
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v5, "MessageUtils"

    const-string v6, "Unable to save message for preview"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 168
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 169
    .local v2, "mm":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 175
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    if-eqz v2, :cond_2

    .line 180
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_2
    return-void

    .line 171
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_0
.end method
