.class public Lcom/sonymobile/settings/MPDNSupportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MPDNSupportReceiver.java"


# static fields
.field private static oldMultiplePDNMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_dun_required"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 29
    const-string v2, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v1, v4, :cond_1

    .line 31
    const-string v0, "mpdnSupport"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/settings/MPDNSupportActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v2, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v2, "mpdnSupport"

    const-string v3, "mpdnSupport"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    :cond_0
    sput-boolean v0, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    .line 45
    :cond_1
    return-void
.end method
