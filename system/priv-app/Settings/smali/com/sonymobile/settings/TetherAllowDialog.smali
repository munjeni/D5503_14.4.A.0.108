.class public Lcom/sonymobile/settings/TetherAllowDialog;
.super Landroid/app/Activity;
.source "TetherAllowDialog.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/TetherAllowDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 34
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 47
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 49
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0055

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0448

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    new-instance v4, Lcom/sonymobile/settings/TetherAllowDialog$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/TetherAllowDialog$2;-><init>(Lcom/sonymobile/settings/TetherAllowDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/sonymobile/settings/TetherAllowDialog$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/TetherAllowDialog$1;-><init>(Lcom/sonymobile/settings/TetherAllowDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/TetherAllowDialog;->mDialog:Landroid/app/AlertDialog;

    .line 70
    iget-object v2, p0, Lcom/sonymobile/settings/TetherAllowDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 52
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/settings/TetherAllowDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonymobile/settings/TetherAllowDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 41
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    return-void
.end method
