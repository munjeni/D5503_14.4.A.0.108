.class Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;
.super Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;
.source "ResourceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/settings/ResourceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuntimeSettingsManagerEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/settings/ResourceSettings;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/settings/ResourceSettings;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;->this$0:Lcom/sonyericsson/conversations/settings/ResourceSettings;

    .line 410
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 407
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;->putStringThenCommit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private putStringThenCommit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isMasterReset"    # Z

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 419
    :cond_1
    return-void
.end method


# virtual methods
.method protected putString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isMasterReset"    # Z

    .prologue
    .line 423
    const-string v2, "pref_key_ringtone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->putString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 456
    :goto_0
    return-void

    .line 428
    :cond_0
    move-object v1, p2

    .line 429
    .local v1, "val":Ljava/lang/String;
    move v0, p3

    .line 430
    .local v0, "isReset":Z
    new-instance v2, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;-><init>(Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
