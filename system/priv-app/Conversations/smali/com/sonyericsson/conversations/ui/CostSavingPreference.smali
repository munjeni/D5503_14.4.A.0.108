.class public Lcom/sonyericsson/conversations/ui/CostSavingPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CostSavingPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 47
    .local v2, "oldValue":Z
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    .line 49
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 51
    .local v1, "newValue":Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700a3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 55
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 59
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
