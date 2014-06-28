.class Lcom/android/settings/location/WrappingIZatSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "LocationMode.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 317
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 326
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 328
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 329
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 331
    :cond_0
    return-void
.end method
