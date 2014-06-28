.class Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroid/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppRestrictionsPreference"
.end annotation


# instance fields
.field private final grayscaleFilter:Landroid/graphics/ColorFilter;

.field private hasSettings:Z

.field private immutable:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private panelOpen:Z

.field private restrictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    .line 171
    const v2, 0x7f040059

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 172
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 175
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 176
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 177
    .local v1, "matrix":[F
    const/16 v2, 0x12

    const/high16 v3, 0x3f000000

    aput v3, v1, v2

    .line 178
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 179
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    return v0
.end method

.method private setSettingsEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    .line 183
    return-void
.end method


# virtual methods
.method getRestrictions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    return v0
.end method

.method isPanelOpen()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 237
    const v4, 0x7f0800e0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 238
    .local v1, "appRestrictionsSettings":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    const v4, 0x7f0800e1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v8, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    const v4, 0x7f0800df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "appRestrictionsPref":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    const v4, 0x1020018

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 249
    .local v3, "widget":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 251
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 252
    .local v2, "toggle":Landroid/widget/Switch;
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    .end local v2    # "toggle":Landroid/widget/Switch;
    :cond_1
    return-void

    .end local v0    # "appRestrictionsPref":Landroid/view/View;
    .end local v3    # "widget":Landroid/view/ViewGroup;
    :cond_2
    move v4, v6

    .line 238
    goto :goto_0

    .restart local v0    # "appRestrictionsPref":Landroid/view/View;
    .restart local v3    # "widget":Landroid/view/ViewGroup;
    :cond_3
    move v4, v5

    .line 249
    goto :goto_1

    .restart local v2    # "toggle":Landroid/widget/Switch;
    :cond_4
    move v7, v5

    .line 252
    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 192
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 193
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method setImmutable(Z)V
    .locals 0
    .param p1, "immutable"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    .line 201
    return-void
.end method

.method setPanelOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    .line 227
    return-void
.end method

.method setRestrictions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    .line 197
    return-void
.end method
