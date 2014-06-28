.class public Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriToggleEnabled;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "PowerSaverUriToggleEnabled.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.POWERSAVER_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "powersaverToggleIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 30
    const/4 v1, 0x0

    return v1
.end method
