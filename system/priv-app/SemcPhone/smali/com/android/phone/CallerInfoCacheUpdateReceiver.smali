.class public Lcom/android/phone/CallerInfoCacheUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallerInfoCacheUpdateReceiver.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->LOG_TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerInfoCacheUpdateReceiver#onReceive(). Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallerInfoCacheUpdateReceiver;->log(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0}, Lcom/android/phone/CallerInfoCache;->startAsyncCache()V

    .line 43
    return-void
.end method
