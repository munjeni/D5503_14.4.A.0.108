.class Lcom/sonymobile/superstamina/powersaver/features/WifiFeature$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "wifiState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 47
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;

    const/4 v2, 0x0

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->sendStickyBroadcast(I)V
    invoke-static {v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->access$000(Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;I)V

    .line 49
    :cond_0
    return-void
.end method
