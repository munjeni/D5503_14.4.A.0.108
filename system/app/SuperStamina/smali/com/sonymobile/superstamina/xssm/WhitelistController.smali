.class public Lcom/sonymobile/superstamina/xssm/WhitelistController;
.super Ljava/lang/Object;
.source "WhitelistController.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-WhitelistController"

.field private static final OPERATOR_WHITELIST_URI:Landroid/net/Uri;

.field private static final USER_WHITELIST_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

.field private mOperatorWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private final mRulesLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

.field private mUserWhitelistListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

.field private mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/whitelist/operator"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->OPERATOR_WHITELIST_URI:Landroid/net/Uri;

    .line 61
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/whitelist/user"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->USER_WHITELIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nodeListener"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mCurrentUser:I

    .line 86
    new-instance v1, Lcom/sonymobile/superstamina/xssm/WhitelistController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/xssm/WhitelistController$1;-><init>(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    .line 93
    new-instance v1, Lcom/sonymobile/superstamina/xssm/WhitelistController$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/xssm/WhitelistController$2;-><init>(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhitelistListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

    .line 132
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mContext:Landroid/content/Context;

    .line 133
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserManager:Landroid/os/UserManager;

    .line 134
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 136
    new-instance v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mGraphListener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    .line 139
    new-instance v1, Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhitelistListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

    invoke-direct {v1, v2, p1}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;-><init>(Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/sonymobile/superstamina/xssm/WhitelistController$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/xssm/WhitelistController$3;-><init>(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->readWhitelists()V

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->logIddWhiteList()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/xssm/WhitelistController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/xssm/WhitelistController;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/superstamina/xssm/WhitelistController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->userAdded(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/superstamina/xssm/WhitelistController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->userRemoved(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/sonymobile/superstamina/xssm/WhitelistController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mCurrentUser:I

    return p1
.end method

.method private applyWhitelistLocked(ILjava/util/HashSet;)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, "whitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 200
    .local v3, "saveWhitelist":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    invoke-virtual {v4, v2, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->addPackageToGraphLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 206
    const/4 v3, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private getPackageName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # Ljava/lang/Integer;

    .prologue
    .line 473
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 474
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 477
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 478
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 479
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 482
    :cond_0
    return-object v1
.end method

.method private logIddWhiteList()V
    .locals 17

    .prologue
    .line 410
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 411
    .local v7, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->getChildren()Ljava/util/HashSet;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 412
    .local v8, "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->get()Landroid/util/SparseArray;

    move-result-object v15

    .line 413
    .local v15, "whitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_0

    .line 414
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 415
    .local v13, "userId":I
    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    .line 416
    .local v14, "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 418
    iget-object v0, v8, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 419
    .local v2, "child":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v7, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->populateDependencyList(Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_1

    .line 413
    .end local v2    # "child":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    .end local v3    # "i":I
    .end local v8    # "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .end local v13    # "userId":I
    .end local v14    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "whitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 427
    .local v10, "time":J
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v1

    .line 430
    .local v1, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->get()Landroid/util/SparseArray;

    move-result-object v15

    .line 431
    .restart local v15    # "whitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_4

    .line 432
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 433
    .restart local v13    # "userId":I
    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    .line 434
    .restart local v14    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 436
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v6

    .line 437
    .local v6, "itemBuilder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    sget-object v16, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;->MANUAL:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    .line 438
    invoke-virtual {v6, v9}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setPackageNameFromUid(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    .line 439
    invoke-virtual {v1, v6}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->addWhiteListItem(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    goto :goto_3

    .line 431
    .end local v6    # "itemBuilder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 444
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v13    # "userId":I
    .end local v14    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 445
    .local v12, "uid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->getPackageName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    .line 446
    .restart local v9    # "packageName":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 448
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v6

    .line 449
    .restart local v6    # "itemBuilder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    sget-object v16, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;->AUTOMATIC:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    .line 450
    invoke-virtual {v6, v9}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setPackageNameFromUid(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    .line 451
    invoke-virtual {v1, v6}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->addWhiteListItem(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    goto :goto_4

    .line 456
    .end local v6    # "itemBuilder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "uid":Ljava/lang/Integer;
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_5
    return-void

    .line 457
    :catch_0
    move-exception v16

    goto :goto_5
.end method

.method private readWhitelists()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/xssm/WhitelistController;->OPERATOR_WHITELIST_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 381
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 383
    .local v10, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v0, "package"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 384
    .local v8, "packageIndex":I
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 387
    .local v9, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v10, v9, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 388
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_0

    .line 389
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 393
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 400
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 402
    return-void

    .line 400
    .end local v8    # "packageIndex":I
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private removePackageFromOperatorWhitelistLocked(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 255
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 257
    .local v3, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 258
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    invoke-virtual {v6}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->get()Landroid/util/SparseArray;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 259
    .local v4, "whitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v5

    .line 260
    .local v1, "removeFromGraph":Z
    :goto_2
    if-eqz v1, :cond_0

    .line 261
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, p1, v7}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->removePackage(Ljava/lang/String;I)V

    goto :goto_1

    .line 255
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "removeFromGraph":Z
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "whitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 259
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "user":Landroid/content/pm/UserInfo;
    .restart local v3    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "whitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_2

    .line 264
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "whitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private userAdded(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 292
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->applyWhitelistLocked(ILjava/util/HashSet;)Z

    .line 297
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 301
    const/16 v2, -0x2710

    if-ne p1, v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    invoke-virtual {v2, p1}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->remove(I)V

    .line 306
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    invoke-virtual {v2, v1, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->removePackage(Ljava/lang/String;I)V

    goto :goto_1

    .line 309
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
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

    goto :goto_0
.end method


# virtual methods
.method public addPackageToOperatorWhitelist(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 234
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1, v5}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->addPackageToGraphLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 237
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v3, "SuperStamina-WhitelistController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to whitelist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->logIddWhiteList()V

    goto :goto_0

    .line 236
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 240
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public debug([Ljava/lang/String;)I
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x0

    .line 313
    const-string v4, "xssm"

    aget-object v5, p1, v10

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "whitelist"

    aget-object v5, p1, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    array-length v4, p1

    if-eq v4, v8, :cond_0

    array-length v4, p1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 316
    :cond_0
    const-string v4, "operator"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    aget-object v0, p1, v8

    .line 318
    .local v0, "packageName":Ljava/lang/String;
    const-string v4, "add"

    aget-object v5, p1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->addPackageToOperatorWhitelist(Ljava/lang/String;)V

    .line 343
    :goto_0
    return v10

    .line 321
    :cond_1
    const-string v4, "remove"

    aget-object v5, p1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->removePackageFromOperatorWhitelist(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    aget-object v0, p1, v7

    .line 328
    .restart local v0    # "packageName":Ljava/lang/String;
    :try_start_0
    array-length v4, p1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x4

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "userId":I
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 331
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3

    .line 332
    const-string v4, "add"

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 333
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 334
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "user"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v4, "package"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/superstamina/xssm/WhitelistController;->USER_WHITELIST_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v1    # "userId":I
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 353
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Usage: xssm whitelist add|remove <package name> <userId>\nor:    xssm whitelist add|remove <package name>\nor:    xssm whitelist operator add|remove <package name>\n"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mCurrentUser:I

    goto :goto_1

    .line 338
    .restart local v1    # "userId":I
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    const-string v4, "remove"

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 339
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/superstamina/xssm/WhitelistController;->USER_WHITELIST_URI:Landroid/net/Uri;

    const-string v6, "user=? and package=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 359
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 360
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operator Whitelist ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " items):"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 364
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserManager:Landroid/os/UserManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 365
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    invoke-virtual {v5}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->get()Landroid/util/SparseArray;

    move-result-object v5

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 366
    .local v4, "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", Whitelist ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " items):"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    .restart local v2    # "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    invoke-virtual {v5, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->dump(Ljava/io/PrintWriter;)V

    .line 374
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    return-void
.end method

.method public getGraph()Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    return-object v0
.end method

.method public getOperatorWhitelist()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 177
    iget-object v8, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 178
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    invoke-virtual {v9}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->init()V

    .line 179
    iget-object v9, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserManager:Landroid/os/UserManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 180
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v10, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mOperatorWhiteList:Ljava/util/HashSet;

    invoke-direct {p0, v9, v10}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->applyWhitelistLocked(ILjava/util/HashSet;)Z

    goto :goto_0

    .line 194
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 182
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    .line 183
    .local v2, "saveUserWhitelist":Z
    :try_start_1
    iget-object v9, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    invoke-virtual {v9}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->get()Landroid/util/SparseArray;

    move-result-object v6

    .line 184
    .local v6, "whitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 185
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 186
    .local v4, "userId":I
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 187
    .local v5, "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->applyWhitelistLocked(ILjava/util/HashSet;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v2, v7

    .line 184
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 190
    .end local v4    # "userId":I
    .end local v5    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    if-eqz v2, :cond_4

    .line 191
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mUserWhiteList:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    invoke-virtual {v7}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->writeUserWhiteList()V

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->logIddWhiteList()V

    .line 194
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    return-void
.end method

.method protected removePackageFromOperatorWhitelist(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->removePackageFromOperatorWhitelistLocked(Ljava/lang/String;I)Z

    .line 279
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
