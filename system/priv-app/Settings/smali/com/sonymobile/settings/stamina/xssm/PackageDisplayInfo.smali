.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
.super Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
.source "PackageDisplayInfo.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabelString:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    .line 36
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 37
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 39
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    return-void

    .line 47
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 65
    instance-of v1, p1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 72
    :goto_0
    return v1

    .line 68
    :cond_0
    if-ne p0, p1, :cond_1

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .line 72
    .local v0, "uidInfo":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    const v1, 0x7f080175

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, "iv":Landroid/widget/ImageView;
    const v1, 0x7f080176

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    return-object v0
.end method

.method protected getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected bridge synthetic getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "enabled"    # Z

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;Z)V

    .line 104
    const v1, 0x7f0800b1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 107
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listAdapter"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->removePackageFromWhitelist(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->removeItemFromList(Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;)V

    .line 79
    return-void
.end method
