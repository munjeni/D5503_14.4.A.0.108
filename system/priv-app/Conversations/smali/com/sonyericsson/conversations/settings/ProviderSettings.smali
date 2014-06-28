.class Lcom/sonyericsson/conversations/settings/ProviderSettings;
.super Lcom/sonyericsson/conversations/settings/Settings;
.source "ProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;
    }
.end annotation


# static fields
.field public static final CMZ_PROVIDER_NAME:Ljava/lang/String; = "com.sonyericsson.provider.customization"

.field private static final CONTENT_URI_CMZ:Ljava/lang/String; = "content://com.sonyericsson.provider.customization/settings"

.field private static final KEY_CMZ_SETTINGS_VERSION:Ljava/lang/String; = "semc_pref_key_cmz_settings_version"

.field private static final KEY_DEFAULT_SETTINGS_VERSION:Ljava/lang/String; = "semc_pref_key_default_settings_version"

.field private static final NO_VERSION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ProviderSettings"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 51
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 148
    move v1, p2

    .line 150
    .local v1, "res":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "cce":Ljava/lang/ClassCastException;
    const-string v2, "ProviderSettings"

    const-string v3, "It is not a boolean setting item"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getCmzInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v1, "content://com.sonyericsson.provider.customization/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 206
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected declared-synchronized getCmzVersion()I
    .locals 3

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "semc_pref_key_cmz_settings_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDefaultSettingsResourceId()Landroid/content/res/XmlResourceParser;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 163
    move v1, p2

    .line 165
    .local v1, "res":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "cce":Ljava/lang/ClassCastException;
    const-string v2, "ProviderSettings"

    const-string v3, "It is not a int setting item"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getSettingsversion()I
    .locals 3

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "semc_pref_key_default_settings_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 178
    move-object v1, p2

    .line 180
    .local v1, "res":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "cce":Ljava/lang/ClassCastException;
    const-string v2, "ProviderSettings"

    const-string v3, "It is not a string setting item"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/settings/ProviderSettings;->init(Landroid/content/Context;Z)V

    .line 56
    return-void
.end method

.method protected init(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMasterReset"    # Z

    .prologue
    .line 65
    iget-object v10, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 69
    iget-object v10, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 70
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 71
    .local v0, "appliedOk":Z
    const/4 v1, 0x0

    .line 72
    .local v1, "defaultSettingsApplied":Z
    const/4 v4, 0x0

    .line 75
    .local v4, "firstTime":Z
    const/4 v9, 0x0

    .line 77
    .local v9, "xppDefault":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/ProviderSettings;->getDefaultSettingsResourceId()Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 79
    new-instance v8, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

    invoke-direct {v8, p0, v9, p2}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;-><init>(Lcom/sonyericsson/conversations/settings/ProviderSettings;Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 80
    .local v8, "parser":Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/ProviderSettings;->getSettingsversion()I

    move-result v7

    .line 81
    .local v7, "oldVersion":I
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->getVersion()I

    move-result v6

    .line 83
    .local v6, "newVersion":I
    if-ne v7, v6, :cond_0

    if-eqz p2, :cond_1

    .line 84
    :cond_0
    const-string v10, "ProviderSettings"

    const-string v11, "Applying default settings"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v10, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v8, v10, v3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->apply(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 87
    const-string v10, "semc_pref_key_default_settings_version"

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v0, 0x1

    .line 89
    const/4 v1, 0x1

    .line 91
    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    .line 95
    const/4 v4, 0x1

    .line 104
    :cond_1
    if-eqz v9, :cond_2

    .line 105
    .end local v6    # "newVersion":I
    .end local v7    # "oldVersion":I
    .end local v8    # "parser":Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 110
    :cond_2
    const/4 v5, 0x0

    .line 112
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/ProviderSettings;->getCmzInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 114
    new-instance v8, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

    invoke-direct {v8, p0, v5, p2}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;-><init>(Lcom/sonyericsson/conversations/settings/ProviderSettings;Ljava/io/InputStream;Z)V

    .line 115
    .restart local v8    # "parser":Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/ProviderSettings;->getCmzVersion()I

    move-result v7

    .line 116
    .restart local v7    # "oldVersion":I
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->getVersion()I

    move-result v6

    .line 118
    .restart local v6    # "newVersion":I
    if-nez v1, :cond_3

    if-eq v7, v6, :cond_4

    .line 119
    :cond_3
    const-string v10, "ProviderSettings"

    const-string v11, "Applying CMZ settings"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v10, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v8, v10, v3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->apply(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 122
    const-string v10, "semc_pref_key_cmz_settings_version"

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sonyericsson/conversations/settings/SettingsException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    const/4 v0, 0x1

    .line 131
    :cond_4
    if-eqz v5, :cond_5

    .line 133
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 139
    .end local v6    # "newVersion":I
    .end local v7    # "oldVersion":I
    .end local v8    # "parser":Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    if-eqz v4, :cond_7

    .line 140
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    const-string v10, "ProviderSettings"

    const-string v11, "Settings committed"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_7
    return-void

    .line 98
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Lcom/sonyericsson/conversations/settings/SettingsException;
    const/4 v0, 0x0

    .line 100
    :try_start_3
    const-string v10, "ProviderSettings"

    const-string v11, "Applying default settings failed"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    if-eqz v9, :cond_2

    goto :goto_0

    .line 101
    .end local v2    # "e":Lcom/sonyericsson/conversations/settings/SettingsException;
    :catch_1
    move-exception v2

    .line 102
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v10, "ProviderSettings"

    const-string v11, "Settings resource not found"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    if-eqz v9, :cond_2

    goto :goto_0

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_8

    .line 105
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 104
    :cond_8
    throw v10

    .line 127
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 128
    .local v2, "e":Lcom/sonyericsson/conversations/settings/SettingsException;
    const/4 v0, 0x0

    .line 129
    :try_start_4
    const-string v10, "ProviderSettings"

    const-string v11, "Applying CMZ settings failed"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    if-eqz v5, :cond_5

    .line 133
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 134
    .end local v2    # "e":Lcom/sonyericsson/conversations/settings/SettingsException;
    :catch_3
    move-exception v10

    goto :goto_1

    .line 131
    :catchall_1
    move-exception v10

    if-eqz v5, :cond_9

    .line 133
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 131
    :cond_9
    :goto_2
    throw v10

    .line 125
    :catch_4
    move-exception v10

    .line 131
    if-eqz v5, :cond_5

    .line 133
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 134
    :catch_5
    move-exception v11

    goto :goto_2
.end method

.method public masterReset()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/settings/ProviderSettings;->init(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method
