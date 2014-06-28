.class public Lcom/android/phone/SomcRejectMsgManager;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;,
        Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;,
        Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;,
        Lcom/android/phone/SomcRejectMsgManager$DbFailListener;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field static final DEFAULT_MESSAGES_ARRAY:[I

.field private static sInstance:Lcom/android/phone/SomcRejectMsgManager;

.field private static final sPendingRejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContextualRejectMessageProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/ContextualRejectMsgProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomResponseDialog:Landroid/app/AlertDialog;

.field private mInCallScreen:Lcom/android/phone/SomcInCallScreen;

.field private final mLanguageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.android.phone.somcrejectmsgprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->CONTENT_URI:Landroid/net/Uri;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->DEFAULT_MESSAGES_ARRAY:[I

    return-void

    :array_0
    .array-data 4
        0x7f0b0114
        0x7f0b0115
        0x7f0b0116
        0x7f0b0117
        0x7f0b0118
        0x7f0b0119
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mContextualRejectMessageProviders:Ljava/util/ArrayList;

    .line 89
    new-instance v2, Lcom/android/phone/SomcRejectMsgManager$1;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcRejectMsgManager$1;-><init>(Lcom/android/phone/SomcRejectMsgManager;)V

    iput-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mLanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SomcRejectMsgManager"

    const-string v3, "SomcRejectMsgManager construct"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;-><init>(Lcom/android/phone/SomcRejectMsgManager;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    .line 139
    invoke-direct {p0}, Lcom/android/phone/SomcRejectMsgManager;->readMsgsFromDb()V

    .line 140
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mLanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mContextualRejectMessageProviders:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/phone/CalendarRejectMsgProvider;

    invoke-direct {v3}, Lcom/android/phone/CalendarRejectMsgProvider;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcRejectMsgManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcRejectMsgManager;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/SomcRejectMsgManager;->readMsgsFromDb()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/phone/SomcRejectMsgManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcRejectMsgManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcRejectMsgManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcRejectMsgManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/SomcRejectMsgManager;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    return-object v0
.end method

.method private hangupRingingCall()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->hangupRingingCall()V

    .line 382
    invoke-virtual {p0}, Lcom/android/phone/SomcRejectMsgManager;->dismissPopup()V

    .line 383
    return-void
.end method

.method static init()V
    .locals 4

    .prologue
    .line 121
    const-class v1, Lcom/android/phone/SomcRejectMsgManager;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v0, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lcom/android/phone/SomcRejectMsgManager;

    invoke-direct {v0}, Lcom/android/phone/SomcRejectMsgManager;-><init>()V

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    .line 128
    :cond_0
    :goto_0
    monitor-exit v1

    .line 129
    return-void

    .line 125
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcRejectMsgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string v0, "SomcRejectMsgManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private readMsgsFromDb()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public static rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 186
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 188
    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 189
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->showMessageSentToast()V

    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 196
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private static showMessageSentToast()V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SomcRejectMsgManager$3;

    invoke-direct {v1}, Lcom/android/phone/SomcRejectMsgManager$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method

.method private updateMsgInDb(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "dbFailListener"    # Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

    .prologue
    .line 250
    new-instance v2, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;-><init>(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V

    .line 252
    .local v2, "dbInfo":Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v0, "message"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 257
    return-void
.end method


# virtual methods
.method addPendingRejectMsgInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v2, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 350
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    monitor-exit v2

    .line 358
    :goto_0
    return-void

    .line 352
    :cond_1
    new-instance v0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v0, "rejMsg":Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    sget-object v1, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    sget-object v1, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-direct {p0}, Lcom/android/phone/SomcRejectMsgManager;->hangupRingingCall()V

    goto :goto_0

    .line 356
    .end local v0    # "rejMsg":Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dismissPopup()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    .line 369
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->requestUpdateNavigationBar()V

    .line 373
    :cond_0
    return-void
.end method

.method getRejectMsgs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method getRejectMsgsWithDynamicalInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_0

    .line 151
    const-string v4, "getRejectMsgsWithDynamicalInfoList"

    invoke-static {v4}, Lcom/android/phone/SomcRejectMsgManager;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/ContextualRejectMsg;>;"
    iget-object v4, p0, Lcom/android/phone/SomcRejectMsgManager;->mContextualRejectMessageProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ContextualRejectMsgProvider;

    .line 154
    .local v2, "provider":Lcom/android/phone/ContextualRejectMsgProvider;
    invoke-interface {v2}, Lcom/android/phone/ContextualRejectMsgProvider;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/ContextualRejectMsg;>;"
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_1

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRejectMsgsWithDynamicalInfoList provider list size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/SomcRejectMsgManager;->log(Ljava/lang/String;)V

    .line 158
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 161
    .end local v2    # "provider":Lcom/android/phone/ContextualRejectMsgProvider;
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/ContextualRejectMsg;>;"
    :cond_2
    new-instance v4, Lcom/android/phone/SomcRejectMsgManager$2;

    invoke-direct {v4, p0}, Lcom/android/phone/SomcRejectMsgManager$2;-><init>(Lcom/android/phone/SomcRejectMsgManager;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_3

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRejectMsgsWithDynamicalInfoList list size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/SomcRejectMsgManager;->log(Ljava/lang/String;)V

    .line 171
    :cond_3
    return-object v1
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendPendingRejectMsgForNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 339
    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 340
    :try_start_0
    sget-object v2, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    .line 341
    .local v1, "msgInfo":Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    iget-object v2, v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->content:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/phone/SomcRejectMsgManager;->rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v2, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "msgInfo":Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    return-void
.end method

.method public setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    .line 133
    return-void
.end method

.method public showCustomMessageDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 395
    .local v1, "et":Landroid/widget/EditText;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/SomcRejectMsgManager;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0454

    new-instance v5, Lcom/android/phone/SomcRejectMsgManager$5;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/phone/SomcRejectMsgManager$5;-><init>(Lcom/android/phone/SomcRejectMsgManager;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0453

    new-instance v5, Lcom/android/phone/SomcRejectMsgManager$4;

    invoke-direct {v5, p0}, Lcom/android/phone/SomcRejectMsgManager$4;-><init>(Lcom/android/phone/SomcRejectMsgManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0110

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 411
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    .line 414
    new-instance v3, Lcom/android/phone/SomcRejectMsgManager$6;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcRejectMsgManager$6;-><init>(Lcom/android/phone/SomcRejectMsgManager;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 430
    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 432
    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 435
    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 436
    .local v2, "sendButton":Landroid/widget/Button;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    return-void
.end method

.method updateRejMsg(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "dbFailListener"    # Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/SomcRejectMsgManager;->updateMsgInDb(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V

    .line 176
    return-void
.end method
