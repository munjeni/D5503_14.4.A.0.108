.class public Lcom/sonymobile/superstamina/provider/runtime/RuntimeContentProviderHelper;
.super Ljava/lang/Object;
.source "RuntimeContentProviderHelper.java"


# static fields
.field public static final ENABLED:Ljava/lang/String; = "restrict_performance/enabled"


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/superstamina/provider/runtime/RuntimeUriEnabled;

    const-string v2, "restrict_performance/enabled"

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/superstamina/provider/runtime/RuntimeUriEnabled;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 21
    return-void
.end method
