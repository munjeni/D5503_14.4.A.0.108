.class public Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "EstimatesUriValues.java"


# instance fields
.field private final mColummns:[Ljava/lang/String;

.field private final mIndex:[I

.field private mValues:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "standby_with_xssm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "standby_without_xssm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "battery_with_xssm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "battery_without_xssm"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mColummns:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mIndex:[I

    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->loadEstimates(Landroid/content/Context;)V

    .line 51
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x6
        0x7
    .end array-data
.end method

.method private loadEstimates(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v4, 0x0

    .line 96
    .local v4, "loaded":Z
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "power_estimates"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "values":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 100
    :try_start_0
    invoke-static {v6}, Lcom/sonymobile/superstamina/Util;->parseCommaSeparatedIntArray(Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mValues:[I

    .line 101
    const/4 v4, 0x1

    .line 103
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mValues:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v0, v2

    .line 104
    .local v5, "value":I
    const/4 v7, 0x1

    if-ge v5, v7, :cond_2

    .line 105
    const-string v7, "SuperStamina"

    const-string v8, "mValues contained invalid values. Reset to default"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v4, 0x0

    .line 120
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "value":I
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mValues:[I

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->saveToPreferences()V

    .line 124
    :cond_1
    return-void

    .line 103
    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "value":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "value":I
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "SuperStamina"

    const-string v8, "Saved data corrupted"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private saveToPreferences()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mValues:[I

    invoke-static {v1}, Lcom/sonymobile/superstamina/Util;->buildIntArrayString([I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "values":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "power_estimates"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v1, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mColummns:[Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 59
    .local v1, "result":Landroid/database/MatrixCursor;
    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mColummns:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/String;

    .line 60
    .local v2, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mColummns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mValues:[I

    iget-object v4, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mIndex:[I

    aget v4, v4, v0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 65
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p2, :cond_3

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mColummns:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mColummns:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mValues:[I

    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mIndex:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->mColummns:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 77
    const/4 v0, 0x1

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    if-eqz v0, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;->saveToPreferences()V

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "xssm/estimates"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 91
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method
