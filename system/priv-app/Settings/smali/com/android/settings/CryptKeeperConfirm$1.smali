.class Lcom/android/settings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "somc.intent.action.ACTION_ENCRYPTION_TRIGGERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
