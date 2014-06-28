.class public Lcom/sonymobile/superstamina/xssm/UserWhitelist;
.super Ljava/lang/Object;
.source "UserWhitelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;,
        Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;
    }
.end annotation


# static fields
.field private static final USER_WHITELIST_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

.field private mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/whitelist/user"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->USER_WHITELIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;Landroid/content/Context;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    .line 42
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->readWhitelist()V

    .line 47
    new-instance v0, Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;-><init>(Lcom/sonymobile/superstamina/xssm/UserWhitelist;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mObserver:Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->USER_WHITELIST_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mObserver:Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/xssm/UserWhitelist;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/xssm/UserWhitelist;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->readWhitelist()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/xssm/UserWhitelist;)Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

    return-object v0
.end method

.method private readWhitelist()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 83
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->USER_WHITELIST_URI:Landroid/net/Uri;

    const-string v3, "user = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "*"

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 89
    .local v7, "packageIndex":I
    const-string v0, "user"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 90
    .local v8, "userIdIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 92
    .local v9, "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v9, :cond_0

    .line 93
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 94
    .restart local v9    # "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 96
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    .end local v7    # "packageIndex":I
    .end local v8    # "userIdIndex":I
    .end local v9    # "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7    # "packageIndex":I
    .restart local v8    # "userIdIndex":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 101
    return-void
.end method


# virtual methods
.method public get()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public remove(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 64
    const/16 v1, -0x2710

    if-ne p1, v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 70
    .local v0, "oldWhitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 71
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->writeUserWhiteList()V

    .line 72
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-interface {v1, v0, v2}, Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;->onChanged(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public writeUserWhiteList()V
    .locals 12

    .prologue
    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->USER_WHITELIST_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "user=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "*"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 113
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 114
    .local v5, "userId":I
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 115
    .local v6, "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, "pkg":Ljava/lang/String;
    sget-object v7, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->USER_WHITELIST_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "user"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "package"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "userId":I
    .end local v6    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.sonymobile.superstamina.xperiapowerservice.provider"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_2
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
