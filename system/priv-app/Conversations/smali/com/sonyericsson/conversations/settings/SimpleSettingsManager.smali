.class Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;
.super Lcom/sonyericsson/conversations/settings/RROSettingsManager;
.source "ResourceSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleSettingsManager"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;-><init>(Landroid/content/res/Resources;Ljava/util/HashMap;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 88
    move v2, p2

    .line 90
    .local v2, "res":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 95
    .local v3, "srid":I
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "type":Ljava/lang/String;
    const-string v5, "bool"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 109
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v3    # "srid":I
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 99
    .restart local v0    # "i":Ljava/lang/Integer;
    .restart local v3    # "srid":I
    .restart local v4    # "type":Ljava/lang/String;
    :cond_1
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Not a boolean setting item"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Rid is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "srid":I
    :cond_2
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Can not find the key in setting map"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 113
    move v2, p2

    .line 115
    .local v2, "res":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 117
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 120
    .local v3, "srid":I
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "type":Ljava/lang/String;
    const-string v5, "integer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 134
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v3    # "srid":I
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 124
    .restart local v0    # "i":Ljava/lang/Integer;
    .restart local v3    # "srid":I
    .restart local v4    # "type":Ljava/lang/String;
    :cond_1
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Not a int setting item"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Rid is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "srid":I
    :cond_2
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Can not find the key in setting map"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 138
    move-object v2, p2

    .line 140
    .local v2, "res":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 142
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 145
    .local v3, "srid":I
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "type":Ljava/lang/String;
    const-string v5, "string"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v3    # "srid":I
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 149
    .restart local v0    # "i":Ljava/lang/Integer;
    .restart local v3    # "srid":I
    .restart local v4    # "type":Ljava/lang/String;
    :cond_1
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Not a string setting item"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Rid is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "srid":I
    :cond_2
    const-string v5, "SimpleSettingsManager"

    const-string v6, "Can not find the key in setting map"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
