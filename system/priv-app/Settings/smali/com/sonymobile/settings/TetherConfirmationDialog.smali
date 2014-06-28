.class public Lcom/sonymobile/settings/TetherConfirmationDialog;
.super Landroid/app/Activity;
.source "TetherConfirmationDialog.java"


# instance fields
.field private mCheckbox:Landroid/view/View;

.field private mDialog:Landroid/app/AlertDialog;

.field private mShowCheckbox:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    .line 37
    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/TetherConfirmationDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    .line 44
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-boolean v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v1, :cond_0

    const-string v1, "show_tether_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p0, v3, p1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 63
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0448

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0053

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/sonymobile/settings/TetherConfirmationDialog$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$3;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sonymobile/settings/TetherConfirmationDialog$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$2;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/settings/TetherConfirmationDialog$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$1;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v1, :cond_0

    .line 93
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 99
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 60
    return-void
.end method
