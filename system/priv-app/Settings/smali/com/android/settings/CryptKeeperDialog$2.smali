.class Lcom/android/settings/CryptKeeperDialog$2;
.super Ljava/lang/Object;
.source "CryptKeeperDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 45
    iput-object p1, p0, Lcom/android/settings/CryptKeeperDialog$2;->this$0:Lcom/android/settings/CryptKeeperDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/CryptKeeperDialog$2;->this$0:Lcom/android/settings/CryptKeeperDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 49
    return-void
.end method
