.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/settings/accessibility/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    # getter for: Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;
    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$000(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    return v1

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
