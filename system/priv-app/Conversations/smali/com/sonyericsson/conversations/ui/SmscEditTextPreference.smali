.class public Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "SmscEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;
    }
.end annotation


# instance fields
.field private mOnSmscPreferenceListener:Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;

.field private mSmscEditableVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->mSmscEditableVisible:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->mSmscEditableVisible:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->mSmscEditableVisible:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 38
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->mOnSmscPreferenceListener:Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->mOnSmscPreferenceListener:Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;->onSmscPreference(Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;Z)V

    .line 54
    :cond_0
    return-void
.end method

.method public setOnSmscPreferenceListener(Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->mOnSmscPreferenceListener:Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;

    .line 46
    return-void
.end method

.method public setSmscEditable(Z)V
    .locals 0
    .param p1, "smscEditable"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->mSmscEditableVisible:Z

    .line 42
    return-void
.end method
