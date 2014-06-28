.class Lcom/android/phone/am/SomcAmGreetingsSetting$2;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingsSetting;->setOnClickListeners(Lcom/android/phone/am/SomcAmGreetingPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$2;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 254
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$2;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I
    invoke-static {v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$100(Lcom/android/phone/am/SomcAmGreetingsSetting;)I

    move-result v1

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$2;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$2;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v2, v3

    check-cast v2, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 259
    .local v2, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    if-ne p1, v2, :cond_1

    .line 262
    invoke-virtual {v2, v5}, Lcom/android/phone/am/SomcAmGreetingPreference;->setChecked(Z)V

    .line 263
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$2;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$300(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_am_greetings"

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmGreetingPreference;->getMessageId()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmGreetingPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/am/SomcAmGreetingPreference;->setChecked(Z)V

    goto :goto_1

    .line 272
    .end local v2    # "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    :cond_2
    return v5
.end method
