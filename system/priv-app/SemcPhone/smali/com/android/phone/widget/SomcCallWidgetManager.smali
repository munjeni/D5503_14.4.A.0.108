.class public Lcom/android/phone/widget/SomcCallWidgetManager;
.super Lcom/sonymobile/callwidgetframework/ICallWidgetManager$Stub;
.source "SomcCallWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/widget/SomcCallWidgetManager$CustomComparator;,
        Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;,
        Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

.field private mLocalWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetAreaReserved:Z

.field private mWidgetStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;"
        }
    .end annotation
.end field

.field private packageListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sonymobile/callwidgetframework/ICallWidgetManager$Stub;-><init>()V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    .line 79
    new-instance v1, Lcom/android/phone/widget/SomcCallWidgetManager$1;

    invoke-direct {v1, p0}, Lcom/android/phone/widget/SomcCallWidgetManager$1;-><init>(Lcom/android/phone/widget/SomcCallWidgetManager;)V

    iput-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->packageListener:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    .line 136
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->loadWidgets()V

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->packageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/widget/SomcCallWidgetManager;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetsFromUid(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/widget/SomcCallWidgetManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->loadWidgetsFromUid(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/widget/SomcCallWidgetManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/widget/SomcCallWidgetManager;Lcom/android/phone/widget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager;
    .param p1, "x1"    # Lcom/android/phone/widget/SomcCallWidget;
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/phone/widget/SomcCallWidgetManager;->getResolveInfoFromUid(Lcom/android/phone/widget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/widget/SomcCallWidgetManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/widget/SomcCallWidgetManager;)Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/widget/SomcCallWidgetManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private checkCallerUid(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/SomcCallWidget;

    .line 525
    .local v1, "widget":Lcom/android/phone/widget/SomcCallWidget;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 526
    .local v0, "callingUid":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/widget/SomcCallWidget;->getUid()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 527
    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid widget className: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_1
    return-void
.end method

.method private checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sonymobile.permission.CALL_WIDGET_FRAMEWORK"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 534
    .local v0, "res":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkType(I)V
    .locals 3
    .param p1, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {p1}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->valueOf(I)Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid widget type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    return-void
.end method

.method private getResolveInfoFromUid(Lcom/android/phone/widget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;
    .locals 7
    .param p1, "widget"    # Lcom/android/phone/widget/SomcCallWidget;
    .param p2, "uid"    # I

    .prologue
    .line 440
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sonymobile.callwidget.CALLWIDGETPROVIDER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 442
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v5, 0x81

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 445
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    .line 446
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 447
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/phone/widget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 454
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 401
    .local v0, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    if-nez v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 404
    :cond_0
    return-object v0
.end method

.method private getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;
    .locals 3
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/phone/widget/ISomcCallWidget;"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/widget/ISomcCallWidget;>;"
    if-eqz p2, :cond_1

    .line 410
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ISomcCallWidget;

    .line 411
    .local v1, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    invoke-interface {v1}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getWidgetList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "allWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/widget/ISomcCallWidget;>;"
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 422
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 423
    return-object v0
.end method

.method private getWidgetsFromUid(I)Ljava/util/List;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/SomcCallWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "callWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/widget/SomcCallWidget;>;"
    iget-object v4, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ISomcCallWidget;

    .line 429
    .local v2, "w":Lcom/android/phone/widget/ISomcCallWidget;
    instance-of v4, v2, Lcom/android/phone/widget/SomcCallWidget;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 430
    check-cast v3, Lcom/android/phone/widget/SomcCallWidget;

    .line 431
    .local v3, "widget":Lcom/android/phone/widget/SomcCallWidget;
    invoke-virtual {v3}, Lcom/android/phone/widget/SomcCallWidget;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 432
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    .end local v2    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    .end local v3    # "widget":Lcom/android/phone/widget/SomcCallWidget;
    :cond_1
    return-object v0
.end method

.method private loadWidgets()V
    .locals 10

    .prologue
    .line 494
    iget-object v8, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 495
    .local v3, "oldWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/widget/ISomcCallWidget;>;"
    iget-object v8, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 496
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.sonymobile.callwidget.CALLWIDGETPROVIDER"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 498
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v8, 0x81

    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 501
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_3

    .line 502
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 504
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v7, Lcom/android/phone/widget/SomcCallWidget;

    invoke-direct {v7, v5, v4}, Lcom/android/phone/widget/SomcCallWidget;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 505
    .local v7, "widget":Lcom/android/phone/widget/SomcCallWidget;
    invoke-virtual {v7}, Lcom/android/phone/widget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/SomcCallWidget;

    .line 508
    .local v2, "oldWidget":Lcom/android/phone/widget/SomcCallWidget;
    if-eqz v2, :cond_1

    .line 509
    invoke-direct {p0, v5}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 510
    invoke-virtual {v2, v5}, Lcom/android/phone/widget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 511
    iget-object v8, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 514
    iget-object v8, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid permission for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/phone/widget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "oldWidget":Lcom/android/phone/widget/SomcCallWidget;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "widget":Lcom/android/phone/widget/SomcCallWidget;
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->orderByPrio()V

    .line 521
    return-void
.end method

.method private loadWidgetsFromUid(I)V
    .locals 9
    .param p1, "uid"    # I

    .prologue
    .line 458
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.sonymobile.callwidget.CALLWIDGETPROVIDER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 460
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x81

    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 463
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_4

    .line 464
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 465
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, p1, :cond_0

    .line 466
    new-instance v6, Lcom/android/phone/widget/SomcCallWidget;

    invoke-direct {v6, v4, v2}, Lcom/android/phone/widget/SomcCallWidget;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 467
    .local v6, "widget":Lcom/android/phone/widget/SomcCallWidget;
    iget-object v7, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/phone/widget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v3

    check-cast v3, Lcom/android/phone/widget/SomcCallWidget;

    .line 470
    .local v3, "presentWidget":Lcom/android/phone/widget/SomcCallWidget;
    if-eqz v3, :cond_2

    .line 472
    invoke-direct {p0, v4}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 473
    invoke-virtual {v3, v4}, Lcom/android/phone/widget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v7, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 480
    iget-object v7, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NOT adding widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/phone/widget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no permission"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "presentWidget":Lcom/android/phone/widget/SomcCallWidget;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "widget":Lcom/android/phone/widget/SomcCallWidget;
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->orderByPrio()V

    .line 489
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 556
    return-void
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onMenuUpdate(Ljava/util/List;)V

    .line 188
    :cond_0
    return-void
.end method

.method private onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V
    .locals 4
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "widgetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetAreaReserved:Z

    if-nez v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-interface {v1, p2, p3}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onWidgetUpdate(Landroid/widget/RemoteViews;I)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 356
    .local v0, "w":Lcom/android/phone/widget/ISomcCallWidget;
    invoke-interface {v0}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p3, v3}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;IZ)V

    goto :goto_0
.end method

.method private orderByPrio()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/widget/SomcCallWidgetManager$CustomComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/widget/SomcCallWidgetManager$CustomComparator;-><init>(Lcom/android/phone/widget/SomcCallWidgetManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    return-void
.end method

.method private setViewByType(Ljava/lang/String;Landroid/widget/RemoteViews;ILjava/util/Stack;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "widgetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    .local p4, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p4, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 365
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 369
    .local v0, "oldW":Lcom/android/phone/widget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, p3, v4}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;IZ)V

    .line 373
    .end local v0    # "oldW":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_0
    invoke-virtual {p4, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-direct {p0, p4, p2, p3}, Lcom/android/phone/widget/SomcCallWidgetManager;->onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    if-nez p2, :cond_4

    .line 377
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 379
    invoke-direct {p0, p4, p2, p3}, Lcom/android/phone/widget/SomcCallWidgetManager;->onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V

    .line 380
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v1

    .line 384
    .local v1, "w":Lcom/android/phone/widget/ISomcCallWidget;
    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v1}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, p3, v4}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;IZ)V

    goto :goto_0

    .line 388
    .end local v1    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_3
    invoke-virtual {p4, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {p4, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    invoke-direct {p0, p4, p2, p3}, Lcom/android/phone/widget/SomcCallWidgetManager;->onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V

    goto :goto_0
.end method


# virtual methods
.method public clearStack()V
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 314
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    goto :goto_0

    .line 316
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    :cond_0
    return-void
.end method

.method public clearWidgetView(Ljava/lang/String;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clearWidgetView type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p2}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkType(I)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 261
    .local v0, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->setViewByType(Ljava/lang/String;Landroid/widget/RemoteViews;ILjava/util/Stack;)V

    .line 262
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->packageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    return-void
.end method

.method public isWidgetFocused(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWidgetFocused type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p2}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkType(I)V

    .line 268
    iget-boolean v2, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetAreaReserved:Z

    if-eqz v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 272
    .local v0, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public registerListener(Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    .line 156
    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->notifyListeners()V

    .line 157
    return-void
.end method

.method public setAreaReserved(Z)V
    .locals 9
    .param p1, "reserved"    # Z

    .prologue
    .line 290
    iget-boolean v5, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetAreaReserved:Z

    if-eq p1, v5, :cond_3

    .line 291
    iget-object v5, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 292
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 293
    .local v2, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v3, "topWidgetClassName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v4

    .line 296
    .local v4, "w":Lcom/android/phone/widget/ISomcCallWidget;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 297
    invoke-interface {v4}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez p1, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v6, v7, v4, v8, v5}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;IZ)V

    .line 298
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    if-eqz v5, :cond_0

    .line 299
    iget-object v6, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onWidgetUpdate(Landroid/widget/RemoteViews;I)V

    goto :goto_0

    .line 297
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 304
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    .end local v2    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v3    # "topWidgetClassName":Ljava/lang/String;
    .end local v4    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_2
    iput-boolean p1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetAreaReserved:Z

    .line 306
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public setMenuItemIcon(Ljava/lang/String;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setMenuItemIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 234
    .local v0, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p2}, Lcom/android/phone/widget/ISomcCallWidget;->setIcon(I)V

    .line 236
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onMenuUpdate(Ljava/util/List;)V

    .line 240
    :cond_0
    return-void
.end method

.method public setMenuItemStatus(Ljava/lang/String;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setMenuItemStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 210
    .local v0, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p2}, Lcom/android/phone/widget/ISomcCallWidget;->setStatus(I)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onMenuUpdate(Ljava/util/List;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setMenuItemText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setMenuItemText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 222
    .local v0, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 223
    invoke-interface {v0, p2}, Lcom/android/phone/widget/ISomcCallWidget;->setText(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onMenuUpdate(Ljava/util/List;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setMenuItemVisible(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setMenuItemVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v0

    .line 198
    .local v0, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p2}, Lcom/android/phone/widget/ISomcCallWidget;->setVisible(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onMenuUpdate(Ljava/util/List;)V

    .line 204
    :cond_0
    return-void
.end method

.method public setWidgetView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setWidgetView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, p3}, Lcom/android/phone/widget/SomcCallWidgetManager;->checkType(I)V

    .line 247
    if-eqz p2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 249
    .local v0, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->setViewByType(Ljava/lang/String;Landroid/widget/RemoteViews;ILjava/util/Stack;)V

    .line 253
    return-void

    .line 251
    .end local v0    # "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "The remoteViews are null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public triggerReload()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager;->notifyListeners()V

    .line 182
    return-void
.end method

.method public unregisterListener(Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    .line 166
    return-void
.end method
