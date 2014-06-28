.class abstract Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
.super Ljava/lang/Object;
.source "XssmSettingListItemBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;
.end method

.method protected abstract getApplicationIcon()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getLabel()Ljava/lang/CharSequence;
.end method

.method protected initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "enabled"    # Z

    .prologue
    const/high16 v4, 0x3f800000

    const/high16 v5, 0x3f000000

    .line 21
    const v3, 0x7f0800b1

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 26
    const v3, 0x7f080025

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 27
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getApplicationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 28
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    if-eqz p4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 32
    invoke-virtual {p0, p3}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    .line 33
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    if-eqz p4, :cond_1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 35
    invoke-virtual {v1, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    invoke-virtual {p3, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    invoke-virtual {p3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    return-void

    :cond_0
    move v3, v5

    .line 29
    goto :goto_0

    :cond_1
    move v4, v5

    .line 34
    goto :goto_1
.end method

.method protected onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listAdapter"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .prologue
    .line 53
    return-void
.end method

.method protected onItemClick(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    return-void
.end method
