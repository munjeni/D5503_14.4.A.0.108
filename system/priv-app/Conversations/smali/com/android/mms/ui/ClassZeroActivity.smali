.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final CELL_BROADCAST_MSG:I = 0x2

.field public static final CLASS_ZERO_ADDRESS_KEY:Ljava/lang/String; = "CLASS_ZERO_ADDRESS"

.field public static final CLASS_ZERO_BODY_KEY:Ljava/lang/String; = "CLASS_ZERO_BODY"

.field private static final CLASS_ZERO_MSG:I = 0x1

.field private static final DISMISS_PROGRESS_DIALOG:I = 0x4

.field private static final SHOW_PROGRESS_DIALOG:I = 0x3

.field public static final USE_AS_WARNING_DIALOG_FLAG:Ljava/lang/String; = "USE_AS_WARNING_DIALOG"

.field private static final WARNING_DIALOG_MSG:I = 0x5


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mClassZeroValues:Landroid/content/ContentValues;

.field private mDisplayDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIntentQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageBody:Ljava/lang/String;

.field private mMessageFrom:Ljava/lang/StringBuffer;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPd:Landroid/app/ProgressDialog;

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field private final showProgress:Ljava/lang/Runnable;

.field private useAsWarningDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    .line 80
    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBundle:Landroid/os/Bundle;

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;

    .line 90
    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->showProgress:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    .line 262
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$4;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 272
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$5;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ClassZeroActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ClassZeroActivity;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ClassZeroActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->processNextIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->showProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private displayZeroMessage(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 186
    const-string v1, "pdus"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 187
    .local v0, "messages":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->parsePdu(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 192
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    new-instance v1, Lcom/android/mms/ui/ClassZeroActivity$3;

    const-string v2, "saveClassZeroMessageThread"

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 242
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 245
    :cond_1
    return-void

    .line 219
    :cond_2
    const-string v1, "CLASS_ZERO_BODY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;

    .line 233
    :cond_3
    const-string v1, "USE_AS_WARNING_DIALOG"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z

    .line 234
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z

    if-eqz v1, :cond_4

    .line 235
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private parsePdu(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v2

    .line 249
    .local v2, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v2, p1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 252
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    invoke-static {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "messageBody":Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/model/SmsMessage;->extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    .line 256
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    const-string v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;

    const-string v4, "body"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-object v0
.end method

.method private processNextIntent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private queueForIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_1
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getClassZeroDialogForTest()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDisplayDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->queueForIntent(Landroid/content/Intent;)V

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mIntentQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;)V

    .line 182
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->queueForIntent(Landroid/content/Intent;)V

    .line 167
    return-void
.end method
