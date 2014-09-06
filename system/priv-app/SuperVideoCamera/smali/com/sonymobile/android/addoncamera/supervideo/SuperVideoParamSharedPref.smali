.class public Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;
.super Ljava/lang/Object;
.source "SuperVideoParamSharedPref.java"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 23
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 27
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 28
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    :cond_0
    return-void
.end method

.method public getParamFromSP(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 67
    .end local p2    # "value":F
    :cond_0
    return p2
.end method

.method public getParamFromSP(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 82
    .end local p2    # "value":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getParamFromSP(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 45
    .end local p2    # "value":Z
    :cond_0
    return p2
.end method

.method public setParamFromSP(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    :cond_0
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    :cond_0
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    :cond_0
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    :cond_0
    return-void
.end method
