.class public Lcom/sonymobile/superstamina/provider/xssm/XssmContentProviderHelper;
.super Ljava/lang/Object;
.source "XssmContentProviderHelper.java"


# static fields
.field public static final ENABLED:Ljava/lang/String; = "xssm/enabled"

.field public static final INTERNAL_WHITELIST:Ljava/lang/String; = "xssm/whitelist_internal"

.field public static final SHOW_ACTIVATION_DIALOG:Ljava/lang/String; = "xssm/activation_dialog"

.field public static final THRESHOLD:Ljava/lang/String; = "xssm/battery_threshold"

.field public static final TOGGLE_ENABLED:Ljava/lang/String; = "xssm/toggle_enabled"

.field public static final WHITELIST_GROUPS:Ljava/lang/String; = "xssm/whitelist_groups"

.field public static final WHITELIST_OPERATOR:Ljava/lang/String; = "xssm/whitelist/operator"

.field public static final WHITELIST_USER:Ljava/lang/String; = "xssm/whitelist/user"


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriEnabled;

    const-string v2, "xssm/enabled"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriEnabled;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 35
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;

    const-string v2, "xssm/whitelist/user"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 36
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistOperator;

    const-string v2, "xssm/whitelist/operator"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistOperator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 37
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriThreshold;

    const-string v2, "xssm/battery_threshold"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriThreshold;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 38
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistGroups;

    const-string v2, "xssm/whitelist_groups"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistGroups;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 39
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriActivationDialog;

    const-string v2, "xssm/activation_dialog"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriActivationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 40
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriToggleEnabled;

    const-string v2, "xssm/toggle_enabled"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriToggleEnabled;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 41
    new-instance v1, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistInternal;

    const-string v2, "xssm/whitelist_internal"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 43
    return-void
.end method
