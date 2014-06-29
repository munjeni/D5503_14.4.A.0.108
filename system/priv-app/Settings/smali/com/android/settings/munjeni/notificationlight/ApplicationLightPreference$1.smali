.class Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

.field final synthetic val$d:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->getColor()I

    move-result v1

    const/high16 v2, -0x1000000

    sub-int/2addr v1, v2

    # setter for: Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I
    invoke-static {v0, v1}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->access$002(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;I)I

    .line 172
    iget-object v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v1

    # setter for: Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I
    invoke-static {v0, v1}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->access$102(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;I)I

    .line 173
    iget-object v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v1

    # setter for: Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I
    invoke-static {v0, v1}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->access$202(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;I)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V
    invoke-static {v0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->access$300(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->access$400(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z

    .line 176
    return-void
.end method
