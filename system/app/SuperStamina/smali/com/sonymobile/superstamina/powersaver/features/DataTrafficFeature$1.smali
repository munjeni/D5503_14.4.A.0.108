.class Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature$1;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafficFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;

    # getter for: Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->access$000(Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 29
    :cond_0
    return-void
.end method
