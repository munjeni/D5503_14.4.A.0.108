.class Lcom/android/settings/wifi/WpsDialog$2;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$400(Lcom/android/settings/wifi/WpsDialog;)Lcom/android/settings/wifi/WpsDialog$WpsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    return-void
.end method
