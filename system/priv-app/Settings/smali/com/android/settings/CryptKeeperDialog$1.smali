.class Lcom/android/settings/CryptKeeperDialog$1;
.super Ljava/lang/Object;
.source "CryptKeeperDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeperDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperDialog;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/CryptKeeperDialog$1;->this$0:Lcom/android/settings/CryptKeeperDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 30
    packed-switch p2, :pswitch_data_0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeperDialog$1;->this$0:Lcom/android/settings/CryptKeeperDialog;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 41
    return-void

    .line 33
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/CryptKeeperDialog$1;->this$0:Lcom/android/settings/CryptKeeperDialog;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
