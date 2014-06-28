.class Lcom/android/server/AlarmManagerService$StaminaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaReceiver"
.end annotation


# static fields
.field private static final ACTION_POWER_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

.field private static final ACTION_XSSM_SMS_EMERGENCY_CB:Ljava/lang/String; = "com.sonymobile.XSSM_SMS_EMERGENCY_CB"

.field private static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"


# instance fields
.field private mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$StaminaController;)V
    .locals 0
    .param p2, "controller"    # Lcom/android/server/AlarmManagerService$StaminaController;

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$StaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2204
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$StaminaReceiver;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;

    .line 2205
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2209
    const-string v0, "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaReceiver;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;

    const-string v1, "power_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$StaminaController;->setPowerState(I)V

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2211
    :cond_1
    const-string v0, "com.sonymobile.XSSM_SMS_EMERGENCY_CB"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaReceiver;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;

    const-string v1, "emg_sms_cb_timeout_ms"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$StaminaController;->onEmergencySMS(J)V

    goto :goto_0
.end method
