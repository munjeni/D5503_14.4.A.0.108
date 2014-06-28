.class public Lcom/sonyericsson/conversations/settings/MasterResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterResetReceiver.java"


# static fields
.field private static final MASTER_RESET:Ljava/lang/String; = "com.sonyericsson.settings.MASTERRESET"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sonyericsson.settings.MASTERRESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p1}, Lcom/sonyericsson/conversations/settings/Settings;->masterReset(Landroid/content/Context;)V

    .line 37
    :cond_0
    return-void
.end method
