.class public Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
.super Landroid/app/DialogFragment;
.source "EncodingChangeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARGUMENT_MESSAGE_SIZE:Ljava/lang/String; = "argument_message_size"

.field public static final DIALOG_TAG:Ljava/lang/String; = "EncodingChangeDialog"

.field private static final PREFERENCE_SHOW_DIALOG:Ljava/lang/String; = "preference_show_dialog"

.field private static final SHOW_UCS2_WARNING:Ljava/lang/String; = "show_ucs2_warning"


# instance fields
.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mExampleTextView:Landroid/widget/TextView;

.field private mRememberCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    .locals 3
    .param p0, "messageSize"    # I

    .prologue
    .line 53
    new-instance v1, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;-><init>()V

    .line 54
    .local v1, "ecd":Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "argument_message_size"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method

.method public static resetDisplayDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->saveShowDialogPreference(Landroid/content/Context;Z)V

    .line 130
    return-void
.end method

.method private static saveShowDialogPreference(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showDialog"    # Z

    .prologue
    .line 104
    const-string v1, "preference_show_dialog"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "show_ucs2_warning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method

.method public static shouldDisplayDialog(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const-string v1, "preference_show_dialog"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "show_ucs2_warning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->mRememberCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->saveShowDialogPreference(Landroid/content/Context;Z)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 63
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f03002a

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "dialogBodyView":Landroid/view/View;
    const v9, 0x7f0a009d

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->mRememberCheckbox:Landroid/widget/CheckBox;

    .line 68
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->mRememberCheckbox:Landroid/widget/CheckBox;

    const v10, 0x7f07007c

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 72
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "argument_message_size"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 75
    .local v7, "messageSize":I
    const v9, 0x7f0a009a

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->mDescriptionTextView:Landroid/widget/TextView;

    .line 77
    const v9, 0x7f07007a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "descriptionText":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v9, 0x7f0a009c

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->mExampleTextView:Landroid/widget/TextView;

    .line 84
    const v9, 0x7f0b0004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "exampleCharacters":[Ljava/lang/Object;
    const v9, 0x7f07007b

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "exampleText":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->mExampleTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v9, 0x7f070079

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    const v9, 0x104000a

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method
