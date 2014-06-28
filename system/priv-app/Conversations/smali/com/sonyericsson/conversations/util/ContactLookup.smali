.class public Lcom/sonyericsson/conversations/util/ContactLookup;
.super Ljava/lang/Object;
.source "ContactLookup.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupHolder;,
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;,
        Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x20

.field public static final INVALID_RECIPIENT:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ContactLookup"

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_PHONENUMBER:I = 0x1

.field private static mLock:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x2ba653291271b9a1L


# instance fields
.field private transient mContentObserver:Landroid/database/ContentObserver;

.field private transient mContentResolver:Landroid/content/ContentResolver;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReQueryProfile:Z

.field private mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfileLookupKey:Ljava/lang/String;

.field private mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "[a-zA-Z].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/util/ContactLookup;->INVALID_RECIPIENT:Ljava/util/regex/Pattern;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedReQueryProfile:Z

    .line 185
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 190
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup$1;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentObserver:Landroid/database/ContentObserver;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/conversations/util/ContactLookup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/util/ContactLookup;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedReQueryProfile:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public static determineType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v0

    .line 454
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v0, p0}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const/4 v1, 0x2

    .line 460
    :goto_0
    return v1

    .line 457
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sonyericsson/conversations/util/ContactLookup;->INVALID_RECIPIENT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    .line 460
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getContactLedColor(Landroid/content/Context;ZLjava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 511
    const/4 v9, 0x0

    .line 517
    .local v9, "ledColor":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    if-eqz p1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v9

    .line 522
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "somc_phone_lookup_with_light"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 526
    .local v6, "CONTENT_FILTER_URI":Landroid/net/Uri;
    const-string v7, "light_color"

    .line 528
    .local v7, "LIGHT_COLOR":Ljava/lang/String;
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 529
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 531
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "light_color"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 534
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 538
    :cond_2
    if-eqz v8, :cond_0

    .line 539
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 538
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 539
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;
    .locals 2

    .prologue
    .line 146
    const-class v0, Lcom/sonyericsson/conversations/util/ContactLookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupHolder;->INSTANCE:Lcom/sonyericsson/conversations/util/ContactLookup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 5
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfile(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 238
    .local v0, "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-nez v0, :cond_1

    .line 239
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 240
    .local v1, "contactRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 242
    .restart local v0    # "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-nez v0, :cond_0

    .line 243
    sget-object v3, Lcom/sonyericsson/conversations/util/ContactLookup;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->queryForPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 251
    sget-object v3, Lcom/sonyericsson/conversations/util/ContactLookup;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 252
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    .end local v1    # "contactRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    :cond_1
    return-object v0

    .line 245
    .restart local v1    # "contactRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 253
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private getPersonInMap(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 4
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfile(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 263
    .local v0, "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-nez v0, :cond_0

    .line 264
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 265
    .local v1, "contactRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 267
    .restart local v0    # "contact":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-nez v0, :cond_0

    .line 268
    sget-object v3, Lcom/sonyericsson/conversations/util/ContactLookup;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mPersonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v3

    .line 275
    .end local v1    # "contactRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    :cond_0
    return-object v0

    .line 270
    .restart local v1    # "contactRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getProfile(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedReQueryProfile:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->queryForProfile()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mNeedReQueryProfile:Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    return-object v0
.end method

.method private getStrictNumberComparisonAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personAddress"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStrictPhonenumberComparisonPrefix()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "strictPhonenumberComparisonPrefix":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 479
    if-eqz p2, :cond_0

    .line 480
    move-object v5, p2

    .line 482
    .local v5, "tmpAddress":Ljava/lang/String;
    const-string v6, "[^1234567890]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 484
    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 485
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "prefix":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "numberPrefixes":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    .line 489
    aget-object v6, v2, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 490
    const/4 p2, 0x0

    .line 498
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "numberPrefixes":[Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v5    # "tmpAddress":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 488
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "numberPrefixes":[Ljava/lang/String;
    .restart local v3    # "prefix":Ljava/lang/String;
    .restart local v5    # "tmpAddress":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private queryForPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 18
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 380
    const-wide/16 v12, -0x1

    .line 381
    .local v12, "contactId":J
    const/16 v17, 0x0

    .line 382
    .local v17, "personName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 383
    .local v8, "personAddress":Ljava/lang/String;
    const/4 v9, 0x0

    .line 389
    .local v9, "photoId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 391
    const/4 v15, 0x0

    .line 392
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .line 393
    :try_start_0
    const-string v14, "vnd.android.cursor.item/email_v2"

    .line 395
    .local v14, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "contact_id"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "display_name"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "data1"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "photo_id"

    aput-object v11, v4, v10

    const-string v5, "mimetype = ? AND data1 = ?"

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v14, v6, v10

    const/4 v10, 0x1

    aput-object p2, v6, v10

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 417
    .end local v14    # "contentType":Ljava/lang/String;
    :goto_0
    if-eqz v15, :cond_2

    .line 426
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    .line 428
    .end local v12    # "contactId":J
    .local v5, "contactId":J
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 429
    .end local v17    # "personName":Ljava/lang/String;
    .local v7, "personName":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_3
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 430
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v9

    .line 438
    :goto_1
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/conversations/util/ContactLookup;->getStrictNumberComparisonAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v8

    .line 449
    .end local v15    # "cursor":Landroid/database/Cursor;
    :goto_2
    new-instance v4, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$1;)V

    return-object v4

    .line 403
    .end local v5    # "contactId":J
    .end local v7    # "personName":Ljava/lang/String;
    .restart local v12    # "contactId":J
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "personName":Ljava/lang/String;
    :cond_0
    :try_start_5
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 409
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "display_name"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "number"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "photo_id"

    aput-object v11, v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v15

    goto :goto_0

    .line 438
    .end local v3    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    move-object/from16 v7, v17

    .end local v17    # "personName":Ljava/lang/String;
    .restart local v7    # "personName":Ljava/lang/String;
    move-wide v5, v12

    .end local v12    # "contactId":J
    .restart local v5    # "contactId":J
    :goto_3
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 443
    :catch_0
    move-exception v16

    .line 445
    .local v16, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 443
    .end local v5    # "contactId":J
    .end local v7    # "personName":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v12    # "contactId":J
    .restart local v17    # "personName":Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object/from16 v7, v17

    .end local v17    # "personName":Ljava/lang/String;
    .restart local v7    # "personName":Ljava/lang/String;
    move-wide v5, v12

    .end local v12    # "contactId":J
    .restart local v5    # "contactId":J
    goto :goto_4

    .line 438
    .end local v7    # "personName":Ljava/lang/String;
    .restart local v17    # "personName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object/from16 v7, v17

    .end local v17    # "personName":Ljava/lang/String;
    .restart local v7    # "personName":Ljava/lang/String;
    goto :goto_3

    :catchall_2
    move-exception v2

    goto :goto_3

    .end local v5    # "contactId":J
    .end local v7    # "personName":Ljava/lang/String;
    .restart local v12    # "contactId":J
    .restart local v17    # "personName":Ljava/lang/String;
    :cond_1
    move-object/from16 v7, v17

    .end local v17    # "personName":Ljava/lang/String;
    .restart local v7    # "personName":Ljava/lang/String;
    move-wide v5, v12

    .end local v12    # "contactId":J
    .restart local v5    # "contactId":J
    goto :goto_1

    .end local v5    # "contactId":J
    .end local v7    # "personName":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "contactId":J
    .restart local v17    # "personName":Ljava/lang/String;
    :cond_2
    move-object/from16 v7, v17

    .end local v17    # "personName":Ljava/lang/String;
    .restart local v7    # "personName":Ljava/lang/String;
    move-wide v5, v12

    .end local v12    # "contactId":J
    .restart local v5    # "contactId":J
    goto :goto_2
.end method

.method private queryForProfile()V
    .locals 25

    .prologue
    .line 282
    const/16 v19, 0x0

    .line 283
    .local v19, "cursor":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 285
    .local v21, "lookupUri":Landroid/net/Uri;
    const-wide/16 v17, -0x1

    .line 286
    .local v17, "contactId":J
    const/16 v23, 0x0

    .line 287
    .local v23, "personName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 288
    .local v22, "personAddress":Ljava/lang/String;
    const/16 v24, 0x0

    .line 290
    .local v24, "photoId":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_id"

    aput-object v9, v3, v7

    const/4 v7, 0x1

    const-string v9, "display_name"

    aput-object v9, v3, v7

    const/4 v7, 0x2

    const-string v9, "photo_id"

    aput-object v9, v3, v7

    const/4 v7, 0x3

    const-string v9, "lookup"

    aput-object v9, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 302
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 303
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 304
    .end local v17    # "contactId":J
    .local v2, "contactId":J
    const/4 v1, 0x1

    :try_start_1
    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-result-object v4

    .line 305
    .end local v23    # "personName":Ljava/lang/String;
    .local v4, "personName":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_2
    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-result-object v6

    .line 306
    .end local v24    # "photoId":Ljava/lang/String;
    .local v6, "photoId":Ljava/lang/String;
    const/4 v1, 0x3

    :try_start_3
    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-result-object v5

    .line 307
    .end local v22    # "personAddress":Ljava/lang/String;
    .local v5, "personAddress":Ljava/lang/String;
    :try_start_4
    sget-object v9, Lcom/sonyericsson/conversations/util/ContactLookup;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 308
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$1;)V

    invoke-virtual {v10, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    :try_start_6
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    .line 312
    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-result-object v21

    .line 317
    :goto_0
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_0
    :goto_1
    const-wide/16 v9, -0x1

    cmp-long v1, v2, v9

    if-eqz v1, :cond_1

    if-nez v21, :cond_3

    .line 367
    :cond_1
    :goto_2
    return-void

    .line 310
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 314
    :catch_0
    move-exception v20

    .line 315
    .local v20, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 317
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v2    # "contactId":J
    .end local v4    # "personName":Ljava/lang/String;
    .end local v5    # "personAddress":Ljava/lang/String;
    .end local v6    # "photoId":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v17    # "contactId":J
    .restart local v22    # "personAddress":Ljava/lang/String;
    .restart local v23    # "personName":Ljava/lang/String;
    .restart local v24    # "photoId":Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object/from16 v6, v24

    .end local v24    # "photoId":Ljava/lang/String;
    .restart local v6    # "photoId":Ljava/lang/String;
    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    move-object/from16 v4, v23

    .end local v23    # "personName":Ljava/lang/String;
    .restart local v4    # "personName":Ljava/lang/String;
    move-wide/from16 v2, v17

    .end local v17    # "contactId":J
    .restart local v2    # "contactId":J
    :goto_4
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 327
    :cond_3
    :try_start_a
    const-string v1, "entities"

    move-object/from16 v0, v21

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 328
    .local v8, "entityUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v10, "data1"

    aput-object v10, v9, v1

    const-string v10, "mimetype=?"

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v12, "vnd.android.cursor.item/phone_v2"

    aput-object v12, v11, v1

    const-string v12, "raw_contact_id"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 331
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 333
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/TextUtil;->removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    sget-object v7, Lcom/sonyericsson/conversations/util/ContactLookup;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 336
    :try_start_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-wide v10, v2

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$1;)V

    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 339
    :try_start_c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result v1

    if-nez v1, :cond_4

    .line 344
    :cond_5
    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 349
    .end local v8    # "entityUri":Landroid/net/Uri;
    :cond_6
    :goto_5
    :try_start_d
    const-string v1, "entities"

    move-object/from16 v0, v21

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 350
    .restart local v8    # "entityUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v10, "data1"

    aput-object v10, v9, v1

    const-string v10, "mimetype=?"

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v12, "vnd.android.cursor.item/email_v2"

    aput-object v12, v11, v1

    const-string v12, "raw_contact_id"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 353
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 355
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 356
    sget-object v7, Lcom/sonyericsson/conversations/util/ContactLookup;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 357
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-wide v10, v2

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$1;)V

    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 360
    :try_start_f
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-result v1

    if-nez v1, :cond_7

    .line 365
    :cond_8
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 338
    :catchall_2
    move-exception v1

    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 341
    .end local v8    # "entityUri":Landroid/net/Uri;
    :catch_1
    move-exception v20

    .line 342
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 344
    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 359
    .restart local v8    # "entityUri":Landroid/net/Uri;
    :catchall_4
    move-exception v1

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 362
    .end local v8    # "entityUri":Landroid/net/Uri;
    :catch_2
    move-exception v20

    .line 363
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_15
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 365
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v1

    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 317
    .end local v4    # "personName":Ljava/lang/String;
    .end local v5    # "personAddress":Ljava/lang/String;
    .end local v6    # "photoId":Ljava/lang/String;
    .restart local v22    # "personAddress":Ljava/lang/String;
    .restart local v23    # "personName":Ljava/lang/String;
    .restart local v24    # "photoId":Ljava/lang/String;
    :catchall_6
    move-exception v1

    move-object/from16 v6, v24

    .end local v24    # "photoId":Ljava/lang/String;
    .restart local v6    # "photoId":Ljava/lang/String;
    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    move-object/from16 v4, v23

    .end local v23    # "personName":Ljava/lang/String;
    .restart local v4    # "personName":Ljava/lang/String;
    goto/16 :goto_4

    .end local v5    # "personAddress":Ljava/lang/String;
    .end local v6    # "photoId":Ljava/lang/String;
    .restart local v22    # "personAddress":Ljava/lang/String;
    .restart local v24    # "photoId":Ljava/lang/String;
    :catchall_7
    move-exception v1

    move-object/from16 v6, v24

    .end local v24    # "photoId":Ljava/lang/String;
    .restart local v6    # "photoId":Ljava/lang/String;
    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    goto/16 :goto_4

    .end local v5    # "personAddress":Ljava/lang/String;
    .restart local v22    # "personAddress":Ljava/lang/String;
    :catchall_8
    move-exception v1

    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    goto/16 :goto_4

    :catchall_9
    move-exception v1

    goto/16 :goto_4

    .line 314
    .end local v2    # "contactId":J
    .end local v4    # "personName":Ljava/lang/String;
    .end local v5    # "personAddress":Ljava/lang/String;
    .end local v6    # "photoId":Ljava/lang/String;
    .restart local v17    # "contactId":J
    .restart local v22    # "personAddress":Ljava/lang/String;
    .restart local v23    # "personName":Ljava/lang/String;
    .restart local v24    # "photoId":Ljava/lang/String;
    :catch_3
    move-exception v20

    move-object/from16 v6, v24

    .end local v24    # "photoId":Ljava/lang/String;
    .restart local v6    # "photoId":Ljava/lang/String;
    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    move-object/from16 v4, v23

    .end local v23    # "personName":Ljava/lang/String;
    .restart local v4    # "personName":Ljava/lang/String;
    move-wide/from16 v2, v17

    .end local v17    # "contactId":J
    .restart local v2    # "contactId":J
    goto/16 :goto_3

    .end local v4    # "personName":Ljava/lang/String;
    .end local v5    # "personAddress":Ljava/lang/String;
    .end local v6    # "photoId":Ljava/lang/String;
    .restart local v22    # "personAddress":Ljava/lang/String;
    .restart local v23    # "personName":Ljava/lang/String;
    .restart local v24    # "photoId":Ljava/lang/String;
    :catch_4
    move-exception v20

    move-object/from16 v6, v24

    .end local v24    # "photoId":Ljava/lang/String;
    .restart local v6    # "photoId":Ljava/lang/String;
    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    move-object/from16 v4, v23

    .end local v23    # "personName":Ljava/lang/String;
    .restart local v4    # "personName":Ljava/lang/String;
    goto/16 :goto_3

    .end local v5    # "personAddress":Ljava/lang/String;
    .end local v6    # "photoId":Ljava/lang/String;
    .restart local v22    # "personAddress":Ljava/lang/String;
    .restart local v24    # "photoId":Ljava/lang/String;
    :catch_5
    move-exception v20

    move-object/from16 v6, v24

    .end local v24    # "photoId":Ljava/lang/String;
    .restart local v6    # "photoId":Ljava/lang/String;
    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    goto/16 :goto_3

    .end local v5    # "personAddress":Ljava/lang/String;
    .restart local v22    # "personAddress":Ljava/lang/String;
    :catch_6
    move-exception v20

    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    goto/16 :goto_3

    .end local v2    # "contactId":J
    .end local v4    # "personName":Ljava/lang/String;
    .end local v5    # "personAddress":Ljava/lang/String;
    .end local v6    # "photoId":Ljava/lang/String;
    .restart local v17    # "contactId":J
    .restart local v22    # "personAddress":Ljava/lang/String;
    .restart local v23    # "personName":Ljava/lang/String;
    .restart local v24    # "photoId":Ljava/lang/String;
    :cond_b
    move-object/from16 v6, v24

    .end local v24    # "photoId":Ljava/lang/String;
    .restart local v6    # "photoId":Ljava/lang/String;
    move-object/from16 v5, v22

    .end local v22    # "personAddress":Ljava/lang/String;
    .restart local v5    # "personAddress":Ljava/lang/String;
    move-object/from16 v4, v23

    .end local v23    # "personName":Ljava/lang/String;
    .restart local v4    # "personName":Ljava/lang/String;
    move-wide/from16 v2, v17

    .end local v17    # "contactId":J
    .restart local v2    # "contactId":J
    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cleanup()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 1
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p2, :cond_0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getPerson(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMatchInMap(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 1
    .param p1, "isEmailAddress"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getPersonInMap(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileMatch()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mProfileLookupKey:Ljava/lang/String;

    .line 130
    .local v0, "profileLookupKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfile(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
