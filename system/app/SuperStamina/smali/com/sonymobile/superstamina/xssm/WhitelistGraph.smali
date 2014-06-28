.class public Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
.super Ljava/lang/Object;
.source "WhitelistGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;,
        Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;,
        Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-WhitelistGraph"

.field private static final ROOT:Lcom/sony/stamina/ProcessInfo;


# instance fields
.field private mApplicationDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sony/stamina/IApplicationDependency;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationDependencyObserver:Lcom/sony/stamina/IApplicationDependencyObserver;

.field private mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

.field private mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

.field private mHandler:Landroid/os/Handler;

.field private mNodeListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mRulesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/sony/stamina/ProcessInfo;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/sony/stamina/ProcessInfo;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->ROOT:Lcom/sony/stamina/ProcessInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "nodeListener"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;
    .param p4, "graphListner"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mRulesLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$1;-><init>(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mApplicationDependencyObserver:Lcom/sony/stamina/IApplicationDependencyObserver;

    .line 95
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 96
    iput-object p3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mNodeListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    .line 97
    iput-object p4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mApplicationDependencies:Ljava/util/ArrayList;

    .line 101
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mApplicationDependencies:Ljava/util/ArrayList;

    const-string v1, "xperiaappdepinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sony/stamina/IApplicationDependency$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sony/stamina/IApplicationDependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mApplicationDependencies:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-direct {v1, p1, v2}, Lcom/sonymobile/superstamina/xssm/PermissionDependencies;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
    .param p1, "x1"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "x2"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->whitelistPackageLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/superstamina/xssm/WhitelistGraph;Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
    .param p1, "x1"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "x2"    # Lcom/sony/stamina/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->removeDependenciesForUidLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    return-void
.end method

.method static synthetic access$600()Lcom/sony/stamina/ProcessInfo;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->ROOT:Lcom/sony/stamina/ProcessInfo;

    return-object v0
.end method

.method private addUidToGraph(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 3
    .param p1, "from"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "to"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    .line 225
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v2, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v1

    .line 226
    .local v1, "parentNode":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v2, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v0

    .line 227
    .local v0, "childNode":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .end local v0    # "childNode":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mNodeListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    invoke-direct {v0, p2, v2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;-><init>(Lcom/sony/stamina/ProcessInfo;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;)V

    .line 230
    .restart local v0    # "childNode":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->add(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V

    .line 231
    return-void
.end method

.method private removeDependenciesForUidLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 3
    .param p1, "from"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "to"    # Lcom/sony/stamina/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v2, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v1

    .line 218
    .local v1, "parentNode":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v0

    .line 220
    .local v0, "childNode":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    invoke-virtual {v1, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->remove(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V

    .line 222
    .end local v0    # "childNode":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :cond_0
    return-void
.end method

.method private whitelistPackageLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 10
    .param p1, "from"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "to"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->addUidToGraph(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    .line 175
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mApplicationDependencies:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sony/stamina/IApplicationDependency;

    .line 176
    .local v3, "dependency":Lcom/sony/stamina/IApplicationDependency;
    invoke-interface {v3, p2}, Lcom/sony/stamina/IApplicationDependency;->getDependency(Lcom/sony/stamina/ProcessInfo;)[Lcom/sony/stamina/ProcessInfo;

    move-result-object v2

    .line 178
    .local v2, "dependencies":[Lcom/sony/stamina/ProcessInfo;
    move-object v0, v2

    .local v0, "arr$":[Lcom/sony/stamina/ProcessInfo;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, v0, v6

    .line 179
    .local v1, "dep":Lcom/sony/stamina/ProcessInfo;
    iget-object v8, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v8, v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v8

    if-nez v8, :cond_1

    .line 182
    invoke-direct {p0, p2, v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->whitelistPackageLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    .line 178
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->addUidToGraph(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    .end local v0    # "arr$":[Lcom/sony/stamina/ProcessInfo;
    .end local v1    # "dep":Lcom/sony/stamina/ProcessInfo;
    .end local v2    # "dependencies":[Lcom/sony/stamina/ProcessInfo;
    .end local v3    # "dependency":Lcom/sony/stamina/IApplicationDependency;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "dude we are dead"

    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 193
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method


# virtual methods
.method protected addPackageToGraphLocked(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "pis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5, p2}, Lcom/sonymobile/superstamina/Util;->getPackageInfo(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 135
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, p1, v3}, Lcom/sonymobile/superstamina/Util;->buildUidProcesslist(Landroid/content/pm/IPackageManager;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 136
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sony/stamina/ProcessInfo;

    .line 137
    .local v2, "pi":Lcom/sony/stamina/ProcessInfo;
    sget-object v4, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->ROOT:Lcom/sony/stamina/ProcessInfo;

    invoke-direct {p0, v4, v2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->whitelistPackageLocked(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V

    goto :goto_0

    .line 139
    .end local v2    # "pi":Lcom/sony/stamina/ProcessInfo;
    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->findUid(I)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "Temporary (dependencies) Whitelist :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->dump(Ljava/io/PrintWriter;)V

    .line 169
    :goto_0
    monitor-exit v1

    .line 170
    return-void

    .line 167
    :cond_0
    const-string v0, "NativeDaemonConnector is not connected yet."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildren()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    iget-object v0, v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    .line 110
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 112
    :try_start_0
    new-instance v3, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    sget-object v5, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->ROOT:Lcom/sony/stamina/ProcessInfo;

    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mNodeListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    invoke-direct {v3, v5, v6}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;-><init>(Lcom/sony/stamina/ProcessInfo;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;)V

    iput-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 113
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mApplicationDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/stamina/IApplicationDependency;

    .line 114
    .local v0, "dependency":Lcom/sony/stamina/IApplicationDependency;
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mApplicationDependencyObserver:Lcom/sony/stamina/IApplicationDependencyObserver;

    invoke-interface {v0, v3}, Lcom/sony/stamina/IApplicationDependency;->setObserver(Lcom/sony/stamina/IApplicationDependencyObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "dependency":Lcom/sony/stamina/IApplicationDependency;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    return-void
.end method

.method protected removePackage(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, "pis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    invoke-static {v6, p1, v7, p2}, Lcom/sonymobile/superstamina/Util;->getPackageInfo(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 146
    .local v4, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7, p1, v5}, Lcom/sonymobile/superstamina/Util;->buildUidProcesslist(Landroid/content/pm/IPackageManager;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 148
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sony/stamina/ProcessInfo;

    .line 149
    .local v3, "nodeInfo":Lcom/sony/stamina/ProcessInfo;
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v6, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v2

    .line 150
    .local v2, "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    if-eqz v2, :cond_0

    .line 151
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->mDependencyRoot:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v6, v2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->remove(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .end local v3    # "nodeInfo":Lcom/sony/stamina/ProcessInfo;
    .end local v4    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "SuperStamina-WhitelistGraph"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-void
.end method
