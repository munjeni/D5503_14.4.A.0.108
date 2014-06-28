.class public Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverContentProviderHelper;
.super Ljava/lang/Object;
.source "PowerSaverContentProviderHelper.java"


# static fields
.field public static final ENABLED:Ljava/lang/String; = "powersaver/enabled"

.field public static final FEATURES:Ljava/lang/String; = "powersaver/features"

.field public static final SHOW_ACTIVATION_DIALOG:Ljava/lang/String; = "powersaver/activation_dialog"

.field public static final THRESHOLD:Ljava/lang/String; = "powersaver/battery_threshold"

.field public static final TOGGLE_ENABLED:Ljava/lang/String; = "powersaver/toggle_enabled"


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriEnabled;

    const-string v2, "powersaver/enabled"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriEnabled;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 29
    new-instance v1, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriFeatures;

    const-string v2, "powersaver/features"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriFeatures;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 30
    new-instance v1, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriThreshold;

    const-string v2, "powersaver/battery_threshold"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriThreshold;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 31
    new-instance v1, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriActivationDialog;

    const-string v2, "powersaver/activation_dialog"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriActivationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 32
    new-instance v1, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriToggleEnabled;

    const-string v2, "powersaver/toggle_enabled"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriToggleEnabled;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 33
    return-void
.end method
