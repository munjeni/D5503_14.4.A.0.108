.class public Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;
.super Landroid/content/ContentProvider;
.source "XperiaPowerServiceContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$InstalledApplicationsUriHandler;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.superstamina.xperiapowerservice.provider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST_OPERATOR:Landroid/net/Uri;

.field private static final CURRENT_PREFERENCE_VERSION:F = 3.0f

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUriMatcher:Landroid/content/UriMatcher;

.field private mUriMatcherCounter:I

.field private mUriMatcherMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/superstamina/provider/IUriHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 50
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/whitelist_groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/whitelist/operator"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI_WHITELIST_OPERATOR:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherCounter:I

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$1;-><init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI_WHITELIST_OPERATOR:Landroid/net/Uri;

    return-object v0
.end method

.method private getUriHandler(Landroid/net/Uri;)Lcom/sonymobile/superstamina/provider/IUriHandler;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/provider/IUriHandler;

    .line 96
    .local v0, "uriHandler":Lcom/sonymobile/superstamina/provider/IUriHandler;
    if-nez v0, :cond_0

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    return-object v0
.end method

.method private validatePreferences(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/high16 v4, 0x40400000

    .line 159
    const-string v2, "version"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 160
    .local v1, "version":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 161
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "power_estimates"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v2, "version"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/provider/IUriHandler;

    .line 107
    .local v1, "handler":Lcom/sonymobile/superstamina/provider/IUriHandler;
    invoke-interface {v1}, Lcom/sonymobile/superstamina/provider/IUriHandler;->beginBatch()V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "handler":Lcom/sonymobile/superstamina/provider/IUriHandler;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ContentProviderResult;

    .line 111
    .local v0, "backRefs":[Landroid/content/ContentProviderResult;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    .line 112
    .local v4, "operation":Landroid/content/ContentProviderOperation;
    array-length v5, v0

    invoke-virtual {v4, p0, v0, v5}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    goto :goto_1

    .line 115
    .end local v4    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 116
    iget-object v5, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/provider/IUriHandler;

    .line 117
    .restart local v1    # "handler":Lcom/sonymobile/superstamina/provider/IUriHandler;
    invoke-interface {v1}, Lcom/sonymobile/superstamina/provider/IUriHandler;->endBatch()V

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 119
    .end local v1    # "handler":Lcom/sonymobile/superstamina/provider/IUriHandler;
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->getUriHandler(Landroid/net/Uri;)Lcom/sonymobile/superstamina/provider/IUriHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sonymobile/superstamina/provider/IUriHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->getUriHandler(Landroid/net/Uri;)Lcom/sonymobile/superstamina/provider/IUriHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/superstamina/provider/IUriHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->validatePreferences(Landroid/content/SharedPreferences;)V

    .line 133
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 134
    new-instance v1, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverContentProviderHelper;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverContentProviderHelper;-><init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V

    .line 135
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmContentProviderHelper;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/provider/xssm/XssmContentProviderHelper;-><init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V

    .line 136
    new-instance v1, Lcom/sonymobile/superstamina/provider/estimates/EstimatesContentProviderHelper;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesContentProviderHelper;-><init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V

    .line 137
    new-instance v1, Lcom/sonymobile/superstamina/provider/lte/LteContentProviderHelper;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/provider/lte/LteContentProviderHelper;-><init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V

    .line 138
    new-instance v1, Lcom/sonymobile/superstamina/provider/runtime/RuntimeContentProviderHelper;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/provider/runtime/RuntimeContentProviderHelper;-><init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V

    .line 140
    new-instance v1, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$InstalledApplicationsUriHandler;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "installedApps"

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$InstalledApplicationsUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 142
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sonymobile.SUPER_STAMINA_SERVICE_STARTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->getUriHandler(Landroid/net/Uri;)Lcom/sonymobile/superstamina/provider/IUriHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/superstamina/provider/IUriHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V
    .locals 4
    .param p1, "uriHandler"    # Lcom/sonymobile/superstamina/provider/IUriHandler;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.superstamina.xperiapowerservice.provider"

    invoke-interface {p1}, Lcom/sonymobile/superstamina/provider/IUriHandler;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherCounter:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherCounter:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->mUriMatcherCounter:I

    .line 179
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->getUriHandler(Landroid/net/Uri;)Lcom/sonymobile/superstamina/provider/IUriHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/superstamina/provider/IUriHandler;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
