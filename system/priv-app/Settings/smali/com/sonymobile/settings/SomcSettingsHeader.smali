.class public final Lcom/sonymobile/settings/SomcSettingsHeader;
.super Landroid/preference/PreferenceActivity;
.source "SomcSettingsHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static getIndexOfId(Ljava/util/List;II)I
    .locals 5
    .param p1, "resId"    # I
    .param p2, "defaultIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 152
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 147
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 152
    goto :goto_1
.end method

.method private static getIndexOfTitle(Ljava/util/List;II)I
    .locals 2
    .param p1, "resId"    # I
    .param p2, "defaultIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget v1, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-ne v1, p1, :cond_0

    .line 140
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 135
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 140
    goto :goto_1
.end method

.method private static getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "resName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isForAllUsers(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 2
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "extra_depend_on_is_owner_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extra_depend_on_is_owner_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadHeadersFromResource(Lcom/android/settings/Settings;ILjava/util/List;)V
    .locals 12
    .param p0, "settings"    # Lcom/android/settings/Settings;
    .param p1, "resourcesToAdd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/Settings;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x0

    .line 44
    .local v8, "resId":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 45
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "pkg":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0, p1, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 53
    .local v3, "headerToAdd":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 54
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 56
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    const-string v9, "extra_depend_on_is_voice_capable"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    const-string v9, "extra_depend_on_is_voice_capable"

    const/4 v11, 0x1

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_1
    if-eq v10, v9, :cond_0

    .line 67
    :cond_2
    const-string v9, "extra_depend_on_is_wifi_only"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    const-string v9, "extra_depend_on_is_wifi_only"

    const/4 v11, 0x1

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x1

    :goto_2
    if-eq v10, v9, :cond_0

    .line 72
    :cond_3
    const-string v9, "extra_depend_on_is_valid_intent"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 74
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "listQuery":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 80
    .end local v5    # "listQuery":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    const-string v9, "extra_depend_on_resource"

    const-string v10, "bool"

    invoke-static {v7, v2, v9, v10, v6}, Lcom/sonymobile/settings/SomcSettingsHeader;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    :cond_5
    const-string v9, "extra_move_id"

    const-string v10, "id"

    invoke-static {v7, v2, v9, v10, v6}, Lcom/sonymobile/settings/SomcSettingsHeader;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 88
    const/4 v9, -0x1

    invoke-static {p2, v8, v9}, Lcom/sonymobile/settings/SomcSettingsHeader;->getIndexOfId(Ljava/util/List;II)I

    move-result v4

    .line 89
    .local v4, "index":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_0

    .line 94
    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    move-object v3, v0

    .line 98
    .end local v4    # "index":I
    :cond_6
    const-string v9, "extra_after_id"

    const-string v10, "id"

    invoke-static {v7, v2, v9, v10, v6}, Lcom/sonymobile/settings/SomcSettingsHeader;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    .line 99
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {p2, v8, v9}, Lcom/sonymobile/settings/SomcSettingsHeader;->getIndexOfId(Ljava/util/List;II)I

    move-result v4

    .line 100
    .restart local v4    # "index":I
    add-int/lit8 v9, v4, 0x1

    invoke-interface {p2, v9, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    .end local v4    # "index":I
    :cond_7
    const-string v9, "extra_after_title"

    const-string v10, "string"

    invoke-static {v7, v2, v9, v10, v6}, Lcom/sonymobile/settings/SomcSettingsHeader;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 103
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {p2, v8, v9}, Lcom/sonymobile/settings/SomcSettingsHeader;->getIndexOfTitle(Ljava/util/List;II)I

    move-result v4

    .line 104
    .restart local v4    # "index":I
    add-int/lit8 v9, v4, 0x1

    invoke-interface {p2, v9, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    .end local v4    # "index":I
    :cond_8
    const-string v9, "extra_replace_id"

    const-string v10, "id"

    invoke-static {v7, v2, v9, v10, v6}, Lcom/sonymobile/settings/SomcSettingsHeader;->getResource(Landroid/content/res/Resources;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    const/4 v9, -0x1

    invoke-static {p2, v8, v9}, Lcom/sonymobile/settings/SomcSettingsHeader;->getIndexOfId(Ljava/util/List;II)I

    move-result v4

    .line 108
    .restart local v4    # "index":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 109
    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    invoke-interface {p2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v4    # "index":I
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 62
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 67
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 117
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "headerToAdd":Landroid/preference/PreferenceActivity$Header;
    :cond_b
    return-void
.end method
