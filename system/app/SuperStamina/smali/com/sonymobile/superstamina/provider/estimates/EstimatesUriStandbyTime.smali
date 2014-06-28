.class public Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "EstimatesUriStandbyTime.java"


# instance fields
.field private mBatteryCapacity:I

.field private mStaminaOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "staminaOn"    # Z
    .param p4, "batteryCapacity"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-boolean p3, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;->mStaminaOn:Z

    .line 31
    iput p4, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;->mBatteryCapacity:I

    .line 32
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v11, 0x0

    .line 39
    .local v11, "timeLeft":I
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/provider/estimates/EstimatesContentProviderHelper;->VALUES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 41
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 43
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v7, -0x1

    .line 45
    .local v7, "columnIndex":I
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;->mStaminaOn:Z

    if-eqz v0, :cond_2

    .line 46
    const-string v0, "standby_with_xssm"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 50
    :goto_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 51
    .local v8, "mA":I
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesContentProviderHelper;->getBatteryLevel(Landroid/content/Context;)I

    move-result v9

    .line 52
    .local v9, "percent":I
    iget v0, p0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;->mBatteryCapacity:I

    invoke-static {v9, v8, v0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesContentProviderHelper;->getHours(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 56
    .end local v7    # "columnIndex":I
    .end local v8    # "mA":I
    .end local v9    # "percent":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_1
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time"

    aput-object v2, v0, v1

    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 63
    .local v10, "result":Landroid/database/MatrixCursor;
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 66
    .local v12, "values":[Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 67
    return-object v10

    .line 48
    .end local v10    # "result":Landroid/database/MatrixCursor;
    .end local v12    # "values":[Ljava/lang/String;
    .restart local v7    # "columnIndex":I
    :cond_2
    :try_start_1
    const-string v0, "standby_without_xssm"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_0

    .line 56
    .end local v7    # "columnIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
