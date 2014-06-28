.class public Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;
    }
.end annotation


# static fields
.field public static final MENU_ID_DIAL_NUMBER:I = 0x3e9

.field public static final MENU_ID_OPEN_LINK:I = 0x3ee

.field public static final MENU_ID_SAVE_CONTENT:I = 0x3f0

.field public static final MENU_ID_SAVE_EMAIL_ADDRESS:I = 0x3ec

.field public static final MENU_ID_SAVE_NUMBER:I = 0x3ea

.field public static final MENU_ID_SEND_MESSAGE_TO_EMAIL_ADDRESS:I = 0x3ed

.field public static final MENU_ID_SEND_MESSAGE_TO_NUMBER:I = 0x3eb

.field public static final MENU_ID_VIEW_CONTENT:I = 0x3ef

.field public static final OPTION_COPY:I = 0x10000

.field public static final OPTION_DOWNLOAD:I = 0x2

.field public static final OPTION_FORWARD:I = 0x4

.field public static final OPTION_REPLY_ALL:I = 0x8

.field public static final OPTION_RESEND:I = 0x1

.field public static final OPTION_VIEW_RECIPIENTS:I = 0x10

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_MAILTO:Ljava/lang/String; = "mailto"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_RTSP:Ljava/lang/String; = "rtsp"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field private static final TAG:Ljava/lang/String; = "MessageActionsController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageUri:Landroid/net/Uri;

.field private mMimeType:Ljava/lang/String;

.field private mObjectUri:Landroid/net/Uri;

.field private mOptions:I

.field private mPd:Landroid/app/ProgressDialog;

.field private mScheme:Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p5, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mHandler:Landroid/os/Handler;

    .line 181
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    .line 183
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must not pass null context to the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 200
    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mThreadId:J

    .line 201
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 202
    if-eqz p4, :cond_1

    .line 203
    invoke-virtual {p4}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    .line 205
    :cond_1
    iput p5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p5, "objectUri"    # Landroid/net/Uri;
    .param p6, "options"    # I
    .param p7, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;I)V

    .line 222
    if-nez p5, :cond_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must not pass a null uri to the constructor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    .line 226
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 238
    .local v7, "cr":Landroid/content/ContentResolver;
    if-eqz v7, :cond_1

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 248
    .end local v7    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v10, 0x0

    .line 250
    .local v10, "originalMimeType":Ljava/lang/String;
    :try_start_0
    new-instance v8, Landroid/drm/DrmManagerClient;

    invoke-direct {v8, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 251
    .local v8, "drmClient":Landroid/drm/DrmManagerClient;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 258
    .end local v8    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 259
    iput-object v10, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 261
    :cond_3
    return-void

    .line 254
    :catch_0
    move-exception v9

    .line 255
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MessageActionsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not convert mime type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getSimCardFullDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    monitor-exit p0

    return-void

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private displaySimCardState(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 711
    packed-switch p2, :pswitch_data_0

    .line 728
    const-string v0, "MessageActionsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong SIM card state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_0
    return-void

    .line 713
    :pswitch_0
    const v0, 0x7f0700d5

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 722
    :pswitch_1
    const v0, 0x7f0700d4

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private findPartByObjectUri()Lcom/google/android/mms/pdu/PduPart;
    .locals 8

    .prologue
    .line 571
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v5, v5, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v5, :cond_1

    .line 572
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 574
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 576
    .local v4, "pduBody":Lcom/google/android/mms/pdu/PduBody;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 577
    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 578
    .local v3, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    .end local v1    # "i":I
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v3    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v4    # "pduBody":Lcom/google/android/mms/pdu/PduBody;
    :goto_1
    return-object v3

    .line 576
    .restart local v1    # "i":I
    .restart local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v3    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v4    # "pduBody":Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v1    # "i":I
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v3    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v4    # "pduBody":Lcom/google/android/mms/pdu/PduBody;
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Lcom/google/android/mms/MmsException;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-string v6, "mms exception"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 586
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getContentSpecificSaveText()I
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const v0, 0x7f070050

    .line 943
    :goto_0
    return v0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    const v0, 0x7f070051

    goto :goto_0

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/ogg"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    :cond_2
    const v0, 0x7f07004d

    goto :goto_0

    .line 938
    :cond_3
    const-string v0, "text/x-vCard"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 940
    const v0, 0x7f07004e

    goto :goto_0

    .line 943
    :cond_4
    const v0, 0x7f07004f

    goto :goto_0
.end method

.method private getContentSpecificViewText()I
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const v0, 0x7f070056

    .line 923
    :goto_0
    return v0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    const v0, 0x7f070057

    goto :goto_0

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/ogg"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    :cond_2
    const v0, 0x7f07004c

    goto :goto_0

    .line 923
    :cond_3
    const v0, 0x7f070183

    goto :goto_0
.end method

.method public static getDefaultMessageOptions(Lcom/sonyericsson/conversations/model/Message;)I
    .locals 6
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/high16 v5, 0x10000

    .line 264
    const/4 v2, 0x0

    .line 266
    .local v2, "options":I
    if-nez p0, :cond_0

    .line 267
    const-string v3, "MessageActionsController"

    const-string v4, "message is null, no option can be found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v3, 0x0

    .line 297
    :goto_0
    return v3

    .line 271
    :cond_0
    iget v3, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 272
    :cond_1
    or-int/lit8 v2, v2, 0x1

    .line 275
    :cond_2
    instance-of v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_6

    move-object v1, p0

    .line 276
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 277
    .local v1, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 278
    or-int/lit8 v2, v2, 0x2

    .end local v1    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_3
    :goto_1
    move v3, v2

    .line 297
    goto :goto_0

    .line 280
    .restart local v1    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_4
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 282
    or-int/2addr v2, v5

    .line 284
    :cond_5
    or-int/lit8 v2, v2, 0x4

    .line 286
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    or-int/lit8 v2, v2, 0x8

    .line 289
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 293
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_6
    or-int/lit8 v2, v2, 0x4

    .line 294
    or-int/2addr v2, v5

    goto :goto_1
.end method

.method private static getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;
    .locals 10
    .param p0, "msg"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 947
    const/4 v6, 0x0

    .line 948
    .local v6, "strRet":Ljava/lang/String;
    const/4 v5, 0x0

    .line 950
    .local v5, "strBuffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 951
    const-string v8, "MessageActionsController"

    const-string v9, "getMesssageContent - parameter is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 983
    .end local v6    # "strRet":Ljava/lang/String;
    .end local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    .local v7, "strRet":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 955
    .end local v7    # "strRet":Ljava/lang/String;
    .restart local v6    # "strRet":Ljava/lang/String;
    .restart local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5    # "strBuffer":Ljava/lang/StringBuffer;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 957
    .restart local v5    # "strBuffer":Ljava/lang/StringBuffer;
    instance-of v8, p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v8, :cond_4

    .line 959
    :try_start_0
    check-cast p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 960
    .local v3, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 961
    const/4 v2, 0x0

    .line 962
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 963
    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 964
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 965
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 966
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 970
    .end local v1    # "i":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v8, "MessageActionsController"

    const-string v9, "getMesssageContent - failed to get the slideshow"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 980
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    move-object v7, v6

    .line 983
    .end local v6    # "strRet":Ljava/lang/String;
    .restart local v7    # "strRet":Ljava/lang/String;
    goto :goto_0

    .end local v7    # "strRet":Ljava/lang/String;
    .restart local v6    # "strRet":Ljava/lang/String;
    .restart local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_4
    move-object v4, p0

    .line 975
    check-cast v4, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 976
    .local v4, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v8, v4, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, "mimeType":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    .line 329
    const/4 v5, 0x0

    .line 330
    .local v5, "slideshow":Lcom/android/mms/model/SlideshowModel;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v6, v6, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v6, :cond_0

    .line 332
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v6, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 340
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    .line 341
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 342
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 343
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 344
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 345
    .local v2, "item":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 347
    goto :goto_1

    .line 353
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "item":Lcom/android/mms/model/MediaModel;
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v5    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_3
    return-object v3

    .line 333
    .restart local v5    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private getMmsc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 853
    new-instance v0, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 854
    .local v0, "ts":Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSimCardFullDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 744
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "simCardFullDialogBuilder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 746
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 747
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 748
    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 749
    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 750
    const v1, 0x104000a

    new-instance v2, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 768
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .restart local v0    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_0
    return-object v0
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1041
    const/4 v0, 0x1

    return v0
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1211
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private performAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const v2, 0x7f070055

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private popUpToastInUiThread(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1176
    return-void
.end method

.method private saveAddress()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 421
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->performAction(Landroid/content/Intent;)V

    .line 424
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    :cond_1
    monitor-exit p0

    return-void

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startGifViewerActivity()V
    .locals 3

    .prologue
    .line 1163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/conversations/ui/GifViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1164
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1165
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1166
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->dismissProgressDialog()V

    .line 1201
    return-void
.end method

.method public copyMessage(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 987
    const-string v1, ""

    const v2, 0x7f070019

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 990
    .local v0, "pd":Landroid/app/ProgressDialog;
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1034
    return-void
.end method

.method public copySMSToSimCard(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 634
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/SimCardUtils;->getSimCardState(Landroid/content/Context;)I

    move-result v0

    .line 636
    .local v0, "simState":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->displaySimCardState(Landroid/content/Context;I)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v1, :cond_0

    .line 642
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;

    const-string v2, "copySmsToSim"

    invoke-direct {v1, p0, v2, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public copyTextToClipboard()V
    .locals 5

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 601
    .local v1, "strMsgContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v1

    .line 602
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 604
    .local v0, "cbm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const v3, 0x7f0700d8

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 608
    return-void
.end method

.method public createLinkContextMenu(Landroid/view/ContextMenu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v4, 0x0

    .line 1048
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1049
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    move-result-object v1

    .line 1053
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1054
    const/16 v2, 0x3e9

    const v3, 0x7f070058

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1056
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1060
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    const/16 v2, 0x3ea

    const v3, 0x7f070059

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1062
    .restart local v0    # "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1065
    const/16 v2, 0x3eb

    const v3, 0x7f07005a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1067
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1097
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    :cond_1
    :goto_0
    return-void

    .line 1072
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v3, "mailto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1075
    const/16 v2, 0x3ed

    const v3, 0x7f07005c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1077
    .restart local v0    # "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1080
    const/16 v2, 0x3ec

    const v3, 0x7f07005d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1082
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1087
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v3, "rtsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    :cond_4
    const/16 v2, 0x3ee

    const v3, 0x7f07005b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1092
    .restart local v0    # "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public createObjectContextMenu(Landroid/view/ContextMenu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/16 v4, 0x3ef

    const/4 v3, 0x0

    .line 1103
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1106
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getContentSpecificViewText()I

    move-result v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1108
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1111
    const/16 v1, 0x3f0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getContentSpecificSaveText()I

    move-result v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1113
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1115
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    const-string v2, "text/x-vCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1122
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public deleteMessage()V
    .locals 2

    .prologue
    .line 877
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 906
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 907
    return-void
.end method

.method public downloadMessage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 834
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMmsc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const v3, 0x7f070069

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 844
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_RETRIEVE_TRANSACTION"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    const-string v1, "manual_request"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 850
    return-void
.end method

.method public forwardMessage()V
    .locals 4

    .prologue
    .line 866
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 868
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 870
    const-string v1, "msg_uri"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 871
    const-string v1, "source_thread_id"

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mThreadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 873
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 874
    return-void
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isCopySmsToSimEnabled()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v0, v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCopyVisible()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadVisible()Z
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForwardEnabled()Z
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/Message;->isForwardable(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    return v0
.end method

.method public isForwardVisible()Z
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaySlideshowVisible()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "visible":Z
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v3, v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_0

    .line 308
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 309
    .local v1, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-le v3, v4, :cond_1

    move v2, v4

    .line 316
    .end local v1    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_0
    return v2

    .line 309
    .restart local v1    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 310
    .end local v1    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v3, "MessageActionsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPlaySlideshowVisible - failed to get the slideshow for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isReplyAllVisible()Z
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResendVisible()Z
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarredMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v2, v2, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v2, v0, :cond_0

    .line 323
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 321
    goto :goto_0

    :cond_1
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method public isViewRecipientsVisible()Z
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewVisible()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1125
    const/4 v0, 0x1

    .line 1126
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1156
    const/4 v0, 0x0

    .line 1159
    :goto_0
    return v0

    .line 1131
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    goto :goto_0

    .line 1136
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveAddress()V

    goto :goto_0

    .line 1140
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->sendMessageToNumber()V

    goto :goto_0

    .line 1144
    :pswitch_3
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;

    const-string v2, "MessageActionsController_Save_Content"

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1126
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public playSlideshow()V
    .locals 6

    .prologue
    .line 813
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v3, v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_0

    .line 815
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 816
    .local v2, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 817
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 820
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 821
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v3, "MessageActionsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playSlideshow - failed to get the slideshow for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public replyAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 611
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v4, v4, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_0

    .line 612
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 613
    .local v1, "msg":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v2

    .line 614
    .local v2, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v6}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getAll(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v3

    .line 615
    .local v3, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatAddresses(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 620
    const-string v4, "reply_all_msg_uri"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 621
    const-string v4, "force_mms"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 624
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "msg":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v2    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .end local v3    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    return-void
.end method

.method public resendMessage()V
    .locals 9

    .prologue
    .line 783
    const/4 v7, 0x0

    .line 784
    .local v7, "sender":Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 785
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/sonyericsson/conversations/model/Message;->getType(Landroid/net/Uri;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v0, v7

    .line 802
    .end local v7    # "sender":Lcom/android/mms/transaction/MessageSender;
    .local v0, "sender":Lcom/android/mms/transaction/MessageSender;
    :goto_0
    if-eqz v0, :cond_0

    .line 803
    :try_start_1
    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mThreadId:J

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 810
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 787
    .end local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v7    # "sender":Lcom/android/mms/transaction/MessageSender;
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 788
    .end local v7    # "sender":Lcom/android/mms/transaction/MessageSender;
    .restart local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    goto :goto_0

    .line 794
    .end local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    .restart local v7    # "sender":Lcom/android/mms/transaction/MessageSender;
    :pswitch_1
    new-instance v8, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 795
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "msg_box"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 798
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mThreadId:J

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->getRawPriority()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v7    # "sender":Lcom/android/mms/transaction/MessageSender;
    .restart local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    goto :goto_0

    .line 805
    .end local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    .restart local v7    # "sender":Lcom/android/mms/transaction/MessageSender;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 806
    .end local v7    # "sender":Lcom/android/mms/transaction/MessageSender;
    .restart local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    .local v6, "e":Lcom/google/android/mms/MmsException;
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const v4, 0x7f0700a1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 805
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveObject()V
    .locals 22

    .prologue
    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->findPartByObjectUri()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 457
    .local v15, "part":Lcom/google/android/mms/pdu/PduPart;
    if-nez v15, :cond_2

    .line 458
    const v18, 0x7f070054

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->popUpToastInUiThread(I)V

    goto :goto_0

    .line 462
    :cond_2
    const/4 v12, 0x0

    .line 463
    .local v12, "input":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 466
    .local v9, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 469
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "dir":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v13

    .line 477
    .local v13, "name":[B
    if-nez v13, :cond_3

    .line 478
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v13

    .line 480
    :cond_3
    if-nez v13, :cond_4

    .line 481
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v13

    .line 483
    :cond_4
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    .local v17, "type":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 486
    :try_start_1
    invoke-static {v13}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v3

    .line 487
    .local v3, "decodedName":[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    .end local v3    # "decodedName":[B
    .local v8, "filename":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 499
    .local v11, "index":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_7

    .line 500
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "ext":Ljava/lang/String;
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 510
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    .line 511
    .local v14, "parentFile":Ljava/io/File;
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_8

    .line 512
    const-string v18, "MessageActionsController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed to copy file to directory "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const v18, 0x7f070054

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->popUpToastInUiThread(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    if-eqz v12, :cond_5

    .line 542
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 547
    :cond_5
    :goto_3
    if-eqz v9, :cond_0

    .line 549
    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 550
    :catch_0
    move-exception v5

    .line 551
    .end local v4    # "dir":Ljava/lang/String;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v13    # "name":[B
    .end local v14    # "parentFile":Ljava/io/File;
    .end local v17    # "type":Ljava/lang/String;
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 488
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v13    # "name":[B
    .restart local v17    # "type":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 491
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/lang/String;-><init>([B)V

    .line 492
    .restart local v8    # "filename":Ljava/lang/String;
    goto/16 :goto_1

    .line 494
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "filename":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "filename":Ljava/lang/String;
    goto/16 :goto_1

    .line 502
    .restart local v11    # "index":I
    :cond_7
    add-int/lit8 v18, v11, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 503
    .restart local v6    # "ext":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 517
    .restart local v7    # "file":Ljava/io/File;
    .restart local v14    # "parentFile":Ljava/io/File;
    :cond_8
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 519
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .local v10, "fout":Ljava/io/FileOutputStream;
    const/16 v18, 0x1f40

    :try_start_6
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 520
    .local v2, "buffer":[B
    const/16 v16, 0x0

    .line 521
    .local v16, "size":I
    :goto_5
    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v16

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 522
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v10, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 535
    .end local v2    # "buffer":[B
    .end local v16    # "size":I
    :catch_2
    move-exception v5

    move-object v9, v10

    .line 536
    .end local v4    # "dir":Ljava/lang/String;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "index":I
    .end local v13    # "name":[B
    .end local v14    # "parentFile":Ljava/io/File;
    .end local v17    # "type":Ljava/lang/String;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 540
    if-eqz v12, :cond_9

    .line 542
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 547
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_7
    if-eqz v9, :cond_0

    .line 549
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 550
    :catch_3
    move-exception v5

    goto :goto_4

    .line 527
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v6    # "ext":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v11    # "index":I
    .restart local v13    # "name":[B
    .restart local v14    # "parentFile":Ljava/io/File;
    .restart local v16    # "size":I
    .restart local v17    # "type":Ljava/lang/String;
    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-nez v18, :cond_d

    .line 531
    const v18, 0x7f070053

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->popUpToastInUiThread(I)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 540
    :goto_8
    if-eqz v12, :cond_b

    .line 542
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 547
    :cond_b
    :goto_9
    if-eqz v10, :cond_c

    .line 549
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :cond_c
    :goto_a
    move-object v9, v10

    .line 554
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 533
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :cond_d
    const v18, 0x7f070052

    :try_start_d
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->popUpToastInUiThread(I)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    .line 537
    .end local v2    # "buffer":[B
    .end local v16    # "size":I
    :catch_4
    move-exception v5

    move-object v9, v10

    .line 538
    .end local v4    # "dir":Ljava/lang/String;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "index":I
    .end local v13    # "name":[B
    .end local v14    # "parentFile":Ljava/io/File;
    .end local v17    # "type":Ljava/lang/String;
    .local v5, "e":Ljava/io/IOException;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    :goto_b
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 540
    if-eqz v12, :cond_e

    .line 542
    :try_start_f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 547
    :cond_e
    :goto_c
    if-eqz v9, :cond_0

    .line 549
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_0

    .line 550
    :catch_5
    move-exception v5

    goto/16 :goto_4

    .line 540
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_d
    if-eqz v12, :cond_f

    .line 542
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 547
    :cond_f
    :goto_e
    if-eqz v9, :cond_10

    .line 549
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 540
    :cond_10
    :goto_f
    throw v18

    .line 543
    :catch_6
    move-exception v5

    .line 544
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 550
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 551
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 543
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v5

    .line 544
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 543
    :catch_9
    move-exception v5

    .line 544
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 543
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v6    # "ext":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v11    # "index":I
    .restart local v13    # "name":[B
    .restart local v14    # "parentFile":Ljava/io/File;
    .restart local v17    # "type":Ljava/lang/String;
    :catch_a
    move-exception v5

    .line 544
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 543
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v16    # "size":I
    :catch_b
    move-exception v5

    .line 544
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 550
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 551
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 540
    .end local v2    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v16    # "size":I
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    goto :goto_d

    .line 537
    .end local v4    # "dir":Ljava/lang/String;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v13    # "name":[B
    .end local v14    # "parentFile":Ljava/io/File;
    .end local v17    # "type":Ljava/lang/String;
    :catch_d
    move-exception v5

    goto :goto_b

    .line 535
    :catch_e
    move-exception v5

    goto/16 :goto_6
.end method

.method public saveVCardContact()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    const-string v1, "text/x-vCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/VCardUtil;->saveContact(Landroid/content/Context;Landroid/net/Uri;)V

    .line 446
    :cond_0
    return-void
.end method

.method public sendMessageToNumber()V
    .locals 5

    .prologue
    .line 430
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel"

    const-string v4, "sms"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 435
    .local v1, "smsUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->performAction(Landroid/content/Intent;)V

    .line 439
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "smsUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    .line 1193
    return-void
.end method

.method public showSimCardFullDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 734
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 741
    :cond_0
    return-void
.end method

.method public starMessage(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V
    .locals 4
    .param p1, "header"    # Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 559
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonyericsson/conversations/model/Message;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 560
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->starMessageWithAnimation()V

    .line 562
    :cond_0
    return-void
.end method

.method public viewObject()V
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->startGifViewerActivity()V

    goto :goto_0

    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->sendMessageToNumber()V

    goto :goto_0

    .line 400
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->performAction(Landroid/content/Intent;)V

    goto :goto_0
.end method
