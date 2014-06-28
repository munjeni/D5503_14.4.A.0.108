.class Lcom/android/phone/CallFeaturesSetting$6;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->createEqualizerSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field final synthetic val$equalizerBtn:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 2175
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$6;->val$equalizerBtn:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 2177
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 2178
    .local v1, "equalizerBtnValue":Ljava/lang/String;
    const-string v2, "voice_personal_eq"

    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, "equalizerAudioValue":Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    .line 2181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEqualizerSettings: Requesting to set equalizer value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", audio holds value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$800(Ljava/lang/String;)V

    .line 2184
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2185
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->val$equalizerBtn:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2186
    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->setEqualizer(Ljava/lang/String;)V

    .line 2187
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateEqualizerSummary(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->access$1900(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;)V

    .line 2189
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
