.class Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiReminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/WifiReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LBWReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.android.locationbasedwifi.ACTION_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    # invokes: Lcom/sonymobile/superstamina/analyzer/WifiReminder;->lbwEnabled()V
    invoke-static {v0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->access$700(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.android.locationbasedwifi.ACTION_DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    # invokes: Lcom/sonymobile/superstamina/analyzer/WifiReminder;->lbwDisabled()V
    invoke-static {v0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->access$800(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V

    goto :goto_0
.end method
