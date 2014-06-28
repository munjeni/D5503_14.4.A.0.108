.class public Lcom/android/phone/SomcProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "SomcProgressCategory.java"


# instance fields
.field private mProgress:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcProgressCategory;->mProgress:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcProgressCategory;->mTitle:Ljava/lang/String;

    .line 31
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    const v4, 0x7f0700e9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "progressBar":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/phone/SomcProgressCategory;->mProgress:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 41
    .local v2, "visibility":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    const v4, 0x7f0700e8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "titleBar":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/phone/SomcProgressCategory;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 46
    iget-object v4, p0, Lcom/android/phone/SomcProgressCategory;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void

    .line 40
    .end local v1    # "titleBar":Landroid/widget/TextView;
    .end local v2    # "visibility":I
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/SomcProgressCategory;->mTitle:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 67
    return-void
.end method
