.class public Lcom/android/phone/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

.field private shouldHideButtons:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 80
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/EditPinPreference;->shouldHideButtons:Z

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 65
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 67
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "dialog":Landroid/view/View;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 72
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/phone/EditPinPreference;Z)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 88
    iget-boolean v0, p0, Lcom/android/phone/EditPinPreference;->shouldHideButtons:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    .line 48
    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method
