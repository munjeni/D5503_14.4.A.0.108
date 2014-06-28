.class Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceInfo"
.end annotation


# instance fields
.field final preference:Landroid/preference/Preference;

.field visible:Z


# direct methods
.method public constructor <init>(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    .line 150
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    .line 151
    return-void
.end method
