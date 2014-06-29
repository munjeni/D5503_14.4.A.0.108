.class Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog$2;
.super Landroid/os/Handler;
.source "LightSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog$2;->this$0:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog$2;->this$0:Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    # invokes: Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->updateLed()V
    invoke-static {v0}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->access$200(Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;)V

    .line 246
    return-void
.end method
