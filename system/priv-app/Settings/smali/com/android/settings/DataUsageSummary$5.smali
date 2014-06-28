.class Lcom/android/settings/DataUsageSummary$5;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1141
    const-string v0, "mobile"

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$502(Lcom/android/settings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1143
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1145
    :cond_0
    return-void
.end method
