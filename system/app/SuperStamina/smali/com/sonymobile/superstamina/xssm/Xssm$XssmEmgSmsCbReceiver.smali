.class Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Xssm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/Xssm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XssmEmgSmsCbReceiver"
.end annotation


# static fields
.field public static final ACTION_XSSM_SMS_EMERGENCY_CB:Ljava/lang/String; = "com.sonymobile.XSSM_SMS_EMERGENCY_CB"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/Xssm;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/Xssm$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/xssm/Xssm$1;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 623
    const-string v4, "com.sonymobile.XSSM_SMS_EMERGENCY_CB"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 625
    const-string v4, "emg_sms_cb_timeout_ms"

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 631
    .local v0, "rval":J
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z
    invoke-static {v4}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$600(Lcom/sonymobile/superstamina/xssm/Xssm;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 632
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    const/4 v5, 0x1

    # setter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z
    invoke-static {v4, v5}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$602(Lcom/sonymobile/superstamina/xssm/Xssm;Z)Z

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 635
    .local v2, "startTimeSmsCb":J
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    add-long v5, v2, v0

    # setter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmTimeSmsCbShutdown:J
    invoke-static {v4, v5, v6}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$902(Lcom/sonymobile/superstamina/xssm/Xssm;J)J

    .line 638
    .end local v0    # "rval":J
    .end local v2    # "startTimeSmsCb":J
    :cond_0
    return-void
.end method
