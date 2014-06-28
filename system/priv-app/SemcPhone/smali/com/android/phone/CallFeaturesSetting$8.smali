.class Lcom/android/phone/CallFeaturesSetting$8;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->createSlowTalkSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field final synthetic val$slowTalkCheckbox:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$8;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$8;->val$slowTalkCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$8;->val$slowTalkCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->setSlowTalk(Z)V

    .line 2231
    const/4 v0, 0x1

    return v0
.end method
