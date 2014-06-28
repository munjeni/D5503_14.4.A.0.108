.class Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$2;
.super Landroid/content/BroadcastReceiver;
.source "XssmBlockerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$2;->this$0:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 109
    const-string v1, "uid"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "uid":I
    if-eq v0, v2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$2;->this$0:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    invoke-virtual {v1, v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->ignoreUid(I)V

    .line 112
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector$2;->this$0:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    # getter for: Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->access$000(Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "BlockDetector"

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 114
    :cond_0
    return-void
.end method
