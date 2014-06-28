.class public Lcom/sonymobile/superstamina/SuperStaminaDialog;
.super Landroid/app/Activity;
.source "SuperStaminaDialog.java"


# static fields
.field private static final CHECK_BOX_KEY:Ljava/lang/String; = "checkBoxIsChecked"

.field private static final CONTENT_URI_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

.field private static final SMS_SCHEME:Ljava/lang/String; = "smsto"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/activation_dialog"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->CONTENT_URI_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    .line 35
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->CONTENT_URI_ENABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/SuperStaminaDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/SuperStaminaDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private isSmsIntentRegistered()Z
    .locals 5

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030001

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "contentView":Landroid/view/View;
    const v7, 0x7f0b0005

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v7, "checkBoxIsChecked"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 59
    .local v1, "checked":Z
    iget-object v7, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 62
    .end local v1    # "checked":Z
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;-><init>(Lcom/sonymobile/superstamina/SuperStaminaDialog;)V

    .line 77
    .local v5, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/sonymobile/superstamina/SuperStaminaDialog$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/superstamina/SuperStaminaDialog$2;-><init>(Lcom/sonymobile/superstamina/SuperStaminaDialog;)V

    .line 83
    .local v4, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    const v3, 0x7f050002

    .line 87
    .local v3, "messageId":I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.telephony"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/superstamina/SuperStaminaDialog;->isSmsIntentRegistered()Z

    move-result v7

    if-eqz v7, :cond_2

    const v3, 0x7f050003

    .line 92
    :cond_1
    :goto_0
    const v7, 0x7f0b0004

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 94
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 96
    const v7, 0x7f050005

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f020008

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f050007

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f050008

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mDialog:Landroid/app/AlertDialog;

    .line 101
    return-void

    .line 88
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f050004

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const-string v0, "checkBoxIsChecked"

    iget-object v1, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setShowXssmActivationDialog(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 105
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "show"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/SuperStaminaDialog;->CONTENT_URI_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public setXssmEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 111
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/SuperStaminaDialog;->CONTENT_URI_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    return-void
.end method
