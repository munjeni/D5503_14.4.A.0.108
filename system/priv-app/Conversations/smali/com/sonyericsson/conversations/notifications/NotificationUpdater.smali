.class public Lcom/sonyericsson/conversations/notifications/NotificationUpdater;
.super Ljava/lang/Object;
.source "NotificationUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/notifications/NotificationUpdater$1;,
        Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;,
        Lcom/sonyericsson/conversations/notifications/NotificationUpdater$InstanceHolder;
    }
.end annotation


# instance fields
.field private mObserver:Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/notifications/NotificationUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/notifications/NotificationUpdater$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/notifications/NotificationUpdater;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/sonyericsson/conversations/notifications/NotificationUpdater$InstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/notifications/NotificationUpdater;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$InstanceHolder;->access$100()Lcom/sonyericsson/conversations/notifications/NotificationUpdater;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->mObserver:Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 39
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->mObserver:Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;

    if-eqz v2, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v2, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, p1}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;-><init>(Lcom/sonyericsson/conversations/notifications/NotificationUpdater;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->mObserver:Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;

    .line 43
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "read"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 44
    .local v1, "sms":Landroid/net/Uri;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "read"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "mms":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->mObserver:Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->mObserver:Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
