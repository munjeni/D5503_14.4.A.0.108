.class public Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriThreshold;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "PowerSaverUriThreshold.java"


# static fields
.field private static final KEY_BATTERY_THRESHOLD:Ljava/lang/String; = "PowerSaver-threshold"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PowerSaver-threshold"

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, "batteryThreshold":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "threshold"

    aput-object v4, v3, v7

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 55
    .local v1, "result":Landroid/database/MatrixCursor;
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 58
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 59
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PowerSaver-threshold"

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, "oldBatteryThreshold":I
    const-string v2, "threshold"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    .local v0, "newBatteryThreshold":I
    if-eq v0, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PowerSaver-threshold"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    .line 43
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
