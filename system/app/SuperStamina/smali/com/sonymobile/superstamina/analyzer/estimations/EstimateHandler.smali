.class public Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;
.super Ljava/lang/Object;
.source "EstimateHandler.java"


# static fields
.field private static final KEY_NODE_LIST:Ljava/lang/String; = "node_list-"

.field private static final VALUES_URI:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEstimates:Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/estimates/values"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->VALUES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    invoke-direct {v0, p1}, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mEstimates:Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->VALUES_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 50
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 52
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/16 v0, 0x8

    new-array v9, v0, [I

    .line 54
    .local v9, "values":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 55
    sget-object v0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 57
    .local v6, "columnIndex":I
    sget-object v0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->INDEXES:[I

    aget v0, v0, v8

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v9, v0

    .line 54
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 60
    .end local v6    # "columnIndex":I
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mEstimates:Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    invoke-virtual {v0, v9}, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->setParameters([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v8    # "i":I
    .end local v9    # "values":[I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_2
    return-void

    .line 63
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getEstimates()Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mEstimates:Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    return-object v0
.end method

.method public getParameters()[I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mEstimates:Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->getParameters()[I

    move-result-object v0

    return-object v0
.end method

.method public loadNodeStringSet(Z)Ljava/util/Set;
    .locals 3
    .param p1, "xssmActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "node_list-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public saveEstimates()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mEstimates:Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    invoke-virtual {v3}, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->getParameters()[I

    move-result-object v0

    .line 74
    .local v0, "estimates":[I
    new-instance v2, Landroid/content/ContentValues;

    sget-object v3, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 75
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 76
    sget-object v3, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->INDEXES:[I

    aget v4, v4, v1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->VALUES_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public saveNodeStringSet(ZLjava/util/HashSet;)V
    .locals 3
    .param p1, "xssmActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "node_list-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method protected setParameters([I)V
    .locals 1
    .param p1, "values"    # [I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->mEstimates:Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->setParameters([I)V

    .line 98
    return-void
.end method
