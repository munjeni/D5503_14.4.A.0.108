.class public Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriActivationDialog;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "PowerSaverUriActivationDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "show"

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 41
    .local v0, "result":Landroid/database/MatrixCursor;
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_POWERSAVE_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/superstamina/Util;->getSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 45
    .local v1, "values":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 46
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_POWERSAVE_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    const-string v2, "show"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/superstamina/Util;->saveSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;Z)V

    .line 32
    const/4 v0, 0x0

    return v0
.end method
