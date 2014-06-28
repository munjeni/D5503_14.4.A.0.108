.class public Lcom/sonymobile/superstamina/PowerSaverDialog;
.super Landroid/app/Activity;
.source "PowerSaverDialog.java"


# static fields
.field private static final CHECK_BOX_KEY:Ljava/lang/String; = "checkBoxIsChecked"

.field private static final CONTENT_URI_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "powersaver/activation_dialog"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/PowerSaverDialog;->CONTENT_URI_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    .line 33
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "powersaver/enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/PowerSaverDialog;->CONTENT_URI_ENABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/PowerSaverDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/PowerSaverDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "contentView":Landroid/view/View;
    const v6, 0x7f0b0005

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string v6, "checkBoxIsChecked"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 56
    .local v1, "checked":Z
    iget-object v6, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 59
    .end local v1    # "checked":Z
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/sonymobile/superstamina/PowerSaverDialog$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/superstamina/PowerSaverDialog$1;-><init>(Lcom/sonymobile/superstamina/PowerSaverDialog;)V

    .line 75
    .local v4, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/sonymobile/superstamina/PowerSaverDialog$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/superstamina/PowerSaverDialog$2;-><init>(Lcom/sonymobile/superstamina/PowerSaverDialog;)V

    .line 81
    .local v3, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    const v6, 0x7f0b0004

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 83
    .local v5, "tv":Landroid/widget/TextView;
    const v6, 0x7f050006

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const v6, 0x7f050005

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f020008

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f050007

    invoke-virtual {v6, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f050008

    invoke-virtual {v6, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mDialog:Landroid/app/AlertDialog;

    .line 90
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const-string v0, "checkBoxIsChecked"

    iget-object v1, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setPowersaveEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 100
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/PowerSaverDialog;->CONTENT_URI_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public setShowPowersaveActivationDialog(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 94
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "show"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/PowerSaverDialog;->CONTENT_URI_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    return-void
.end method
