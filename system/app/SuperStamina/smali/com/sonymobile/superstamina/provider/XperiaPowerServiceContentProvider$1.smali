.class Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "XperiaPowerServiceContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$1;->this$0:Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonymobile.SUPER_STAMINA_SERVICE_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$1;->this$0:Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "xssm/enabled"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 75
    :cond_0
    return-void
.end method
