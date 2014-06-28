.class public Lcom/android/settings/CryptKeeperDialog;
.super Landroid/app/Activity;
.source "CryptKeeperDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x20000

    const/4 v6, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 26
    new-instance v2, Lcom/android/settings/CryptKeeperDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeperDialog$1;-><init>(Lcom/android/settings/CryptKeeperDialog;)V

    .line 44
    .local v2, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/settings/CryptKeeperDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/CryptKeeperDialog$2;-><init>(Lcom/android/settings/CryptKeeperDialog;)V

    .line 52
    .local v3, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b00a1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 61
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    return-void
.end method
