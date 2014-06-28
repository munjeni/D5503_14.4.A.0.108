.class public Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# instance fields
.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 47
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 48
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 109
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    :cond_2
    return-void

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 114
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 117
    if-nez v0, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 53
    const v1, 0x7f0800fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "textLayout":Landroid/view/View;
    new-instance v1, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f0800fb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    .line 63
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 64
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 73
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSettingsButtonClicked()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 87
    return-void
.end method

.method public setFragmentIntent(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 91
    iput-object p2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 92
    return-void
.end method
