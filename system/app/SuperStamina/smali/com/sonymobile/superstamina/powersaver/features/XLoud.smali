.class public Lcom/sonymobile/superstamina/powersaver/features/XLoud;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "XLoud.java"


# static fields
.field private static final KEY_PRESET_EFFECT:Ljava/lang/String; = "Sony_effect;"

.field private static final KEY_SUPPORTED_EFFECTS:Ljava/lang/String; = "Sony_effect;supported_effect"

.field private static final KEY_XLOUD_STATE:Ljava/lang/String; = "Sony_effect;xloud_state"

.field private static final XLOUD_OFF:I = 0x0

.field private static final XLOUD_ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "xLOUD"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 29
    return-void
.end method

.method private getCurrentMode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 81
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v3, "Sony_effect;xloud_state"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "stateAudioManager":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setxLOUD(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sony_effect;xloud_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "xLoudParam":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 70
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->setxLOUD(I)V

    .line 47
    return-void
.end method

.method public isAvailableOnDevice()Z
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 35
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "Sony_effect;supported_effect"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "supportedEffect":Ljava/lang/String;
    const-string v2, "xLOUD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method protected restoreSetting(I)V
    .locals 0
    .param p1, "savedState"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->setxLOUD(I)V

    .line 52
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method protected startListening()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected stopListening()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
