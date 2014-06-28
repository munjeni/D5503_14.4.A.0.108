.class public Lcom/sonymobile/superstamina/provider/lte/LteContentProviderHelper;
.super Ljava/lang/Object;
.source "LteContentProviderHelper.java"


# static fields
.field public static final ENABLED:Ljava/lang/String; = "gate/enabled"

.field public static final THRESHOLD:Ljava/lang/String; = "gate/battery_threshold"


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/superstamina/provider/lte/LteUriEnabled;

    const-string v2, "gate/enabled"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/lte/LteUriEnabled;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 23
    new-instance v1, Lcom/sonymobile/superstamina/provider/lte/LteUriThreshold;

    const-string v2, "gate/battery_threshold"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/lte/LteUriThreshold;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 24
    return-void
.end method
