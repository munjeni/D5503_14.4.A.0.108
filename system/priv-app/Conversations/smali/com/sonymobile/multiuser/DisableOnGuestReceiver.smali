.class public Lcom/sonymobile/multiuser/DisableOnGuestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisableOnGuestReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-static {p1}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableApp(Landroid/content/Context;)V

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sonymobile/multiuser/DisableOnGuestReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 25
    return-void
.end method
