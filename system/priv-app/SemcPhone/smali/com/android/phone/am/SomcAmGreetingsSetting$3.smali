.class Lcom/android/phone/am/SomcAmGreetingsSetting$3;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;


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
    .line 277
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$3;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconClick(Landroid/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "playMessageId":I
    iget-object v4, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$3;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I
    invoke-static {v4}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$100(Lcom/android/phone/am/SomcAmGreetingsSetting;)I

    move-result v0

    .local v0, "k":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$3;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v4}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$3;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v4}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v3, v4

    check-cast v3, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 286
    .local v3, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    if-ne p1, v3, :cond_1

    .line 288
    move v1, v0

    .line 282
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v3}, Lcom/android/phone/am/SomcAmMessagePreference;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {v3}, Lcom/android/phone/am/SomcAmMessagePreference;->toggle()V

    goto :goto_1

    .line 295
    .end local v3    # "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$3;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v4}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v2, v4

    check-cast v2, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 297
    .local v2, "playPref":Lcom/android/phone/am/SomcAmGreetingPreference;
    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmMessagePreference;->toggle()V

    .line 298
    return-void
.end method
