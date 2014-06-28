.class Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MultiSimSettings;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MultiSimSettings;Lcom/android/settings/MultiSimSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/MultiSimSettings;
    .param p2, "x1"    # Lcom/android/settings/MultiSimSettings$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/settings/MultiSimSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const-string v1, "MultiSimSettings"

    const-string v2, "Intent ACTION_AIRPLANE_MODE_CHANGED received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 258
    :cond_0
    return-void
.end method
