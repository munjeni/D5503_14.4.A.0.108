.class Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;
.super Lcom/sonyericsson/conversations/settings/RROSettingsManager;
.source "ResourceSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeSettingsManager"


# instance fields
.field protected mEditor:Landroid/content/SharedPreferences$Editor;

.field protected mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;-><init>()V

    .line 172
    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 174
    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 178
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    const-string v1, "RuntimeSettingsManager"

    const-string v2, "invalid parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "tempContext":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 185
    move-object v0, p1

    .line 188
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    .line 189
    iput-object p2, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    .line 191
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private applySetting(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isMasterReset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/settings/SettingsException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 272
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 278
    .local v2, "srid":I
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "type":Ljava/lang/String;
    const-string v5, "string"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v4, p2}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->putString(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-instance v5, Lcom/sonyericsson/conversations/settings/SettingsException;

    invoke-direct {v5}, Lcom/sonyericsson/conversations/settings/SettingsException;-><init>()V

    throw v5

    .line 283
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "bool"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 285
    .local v4, "value":Z
    invoke-virtual {p0, p1, v4, p2}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->putBoolean(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 286
    .end local v4    # "value":Z
    :cond_2
    const-string v5, "integer"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 287
    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 288
    .local v4, "value":I
    invoke-virtual {p0, p1, v4, p2}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->putInt(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 290
    .end local v4    # "value":I
    :cond_3
    const-string v5, "RuntimeSettingsManager"

    const-string v6, "Unknown resource type"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 200
    move v1, p2

    .line 202
    .local v1, "res":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "cce":Ljava/lang/ClassCastException;
    const-string v2, "RuntimeSettingsManager"

    const-string v3, "It is not a boolean setting item"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 214
    move v1, p2

    .line 216
    .local v1, "res":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "cce":Ljava/lang/ClassCastException;
    const-string v2, "RuntimeSettingsManager"

    const-string v3, "It is not a int setting item"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 228
    move-object v1, p2

    .line 230
    .local v1, "res":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    :cond_0
    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "cce":Ljava/lang/ClassCastException;
    const-string v2, "RuntimeSettingsManager"

    const-string v3, "It is not a string setting item"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Z)V
    .locals 9
    .param p1, "isMasterReset"    # Z

    .prologue
    .line 246
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 247
    :cond_0
    const-string v7, "RuntimeSettingsManager"

    const-string v8, "mSettingsMap is null or empty"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-void

    .line 252
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 253
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    new-array v3, v7, [Ljava/lang/String;

    .line 254
    .local v3, "keyArray":[Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 256
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v2, v0, v1

    .line 257
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 258
    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->applySetting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyArray":[Ljava/lang/String;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "len$":I
    :catch_0
    move-exception v6

    .line 262
    .local v6, "se":Lcom/sonyericsson/conversations/settings/SettingsException;
    const-string v7, "RuntimeSettingsManager"

    const-string v8, "Apply setting item failed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v6    # "se":Lcom/sonyericsson/conversations/settings/SettingsException;
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public masterReset()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->init(Z)V

    .line 243
    return-void
.end method

.method protected putBoolean(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "isMasterReset"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    :cond_1
    return-void
.end method

.method protected putInt(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "isMasterReset"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    :cond_1
    return-void
.end method

.method protected putString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isMasterReset"    # Z

    .prologue
    .line 299
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_1
    return-void
.end method
