.class public Lcom/sonymobile/settings/stamina/SwitchPreference;
.super Landroid/preference/Preference;
.source "SwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchButton:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 61
    const v0, 0x7f08016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mSwitchButton:Landroid/widget/Switch;

    .line 62
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mSwitchButton:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mSwitchButton:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mChecked:Z

    .line 46
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mSwitchButton:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 53
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mSwitchButton:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mSwitchButton:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/SwitchPreference;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    :cond_0
    return-void
.end method
