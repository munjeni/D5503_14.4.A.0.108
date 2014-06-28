.class public Lcom/sonyericsson/conversations/ui/ShareMediaActivity;
.super Landroid/app/Activity;
.source "ShareMediaActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 19
    const-class v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    return-void
.end method
