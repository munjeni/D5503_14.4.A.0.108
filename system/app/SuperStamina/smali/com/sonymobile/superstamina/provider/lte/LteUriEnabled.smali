.class public Lcom/sonymobile/superstamina/provider/lte/LteUriEnabled;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "LteUriEnabled.java"


# static fields
.field private static final KEY_ENABLED:Ljava/lang/String; = "Gate-enabled"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
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

    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "Gate-enabled"

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    .local v0, "enabled":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "enabled"

    aput-object v4, v3, v7

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 54
    .local v1, "result":Landroid/database/MatrixCursor;
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 57
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 58
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "Gate-enabled"

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    .local v1, "oldEnabled":Z
    const-string v2, "enabled"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 35
    .local v0, "newEnabled":Z
    if-eq v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Gate-enabled"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    .line 42
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
