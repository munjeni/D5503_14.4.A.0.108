.class public Lcom/sonyericsson/conversations/ConversationsApp;
.super Landroid/app/Application;
.source "ConversationsApp.java"


# static fields
.field public static final CONVERSATION_PROXY_SERVICE:Ljava/lang/String; = "conversation_proxy_service"

.field public static final LOG_TAG:Ljava/lang/String; = "Conversations"

.field public static final NAMESPACE:Ljava/lang/String; = "com.sonyericsson.conversations"

.field private static mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mProxyService:Lcom/sonymobile/conversations/proxy/ProxyService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private enableStrictMode(Z)V
    .locals 1
    .param p1, "setEnable"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 140
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 147
    :cond_0
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "conversation_proxy_service"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mProxyService:Lcom/sonymobile/conversations/proxy/ProxyService;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sonymobile/conversations/proxy/ProxyService;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/ProxyService;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mProxyService:Lcom/sonymobile/conversations/proxy/ProxyService;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mProxyService:Lcom/sonymobile/conversations/proxy/ProxyService;

    .line 71
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 151
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 82
    const v1, 0x7f0e0004

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 85
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    .line 87
    new-instance v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;-><init>()V

    sput-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    .line 90
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    .line 91
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->init(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/model/ModelCache;->init(Landroid/content/Context;)V

    .line 94
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 95
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->init(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 97
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->getInstance()Lcom/sonyericsson/conversations/notifications/NotificationUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->init(Landroid/content/Context;)V

    .line 105
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ConversationsApp;->enableStrictMode(Z)V

    .line 109
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    .line 110
    .local v0, "isEnabledMMS":Z
    if-eqz v0, :cond_0

    .line 111
    const-string v1, "com.sonyericsson.conversations.ui.ShareMediaActivity"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v1, "com.sonyericsson.conversations.ui.ShareMediaActivity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    .line 123
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->cleanup()V

    .line 124
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/ModelCache;->cleanup(Landroid/content/Context;)V

    .line 125
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->unregisterListeners()V

    .line 126
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->getInstance()Lcom/sonyericsson/conversations/notifications/NotificationUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/notifications/NotificationUpdater;->cleanUp(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 163
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->notifyOnTrimMemoryListeners(I)V

    .line 164
    return-void
.end method
