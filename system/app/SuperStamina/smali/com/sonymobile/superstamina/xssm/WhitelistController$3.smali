.class Lcom/sonymobile/superstamina/xssm/WhitelistController$3;
.super Landroid/content/BroadcastReceiver;
.source "WhitelistController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/xssm/WhitelistController;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$3;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, -0x2710

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$3;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/sonymobile/superstamina/xssm/WhitelistController;->userAdded(I)V
    invoke-static {v2, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$300(Lcom/sonymobile/superstamina/xssm/WhitelistController;I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$3;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    # invokes: Lcom/sonymobile/superstamina/xssm/WhitelistController;->userRemoved(I)V
    invoke-static {v2, v1}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$400(Lcom/sonymobile/superstamina/xssm/WhitelistController;I)V

    goto :goto_0

    .line 164
    .end local v1    # "userId":I
    :cond_2
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$3;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/sonymobile/superstamina/xssm/WhitelistController;->mCurrentUser:I
    invoke-static {v2, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$502(Lcom/sonymobile/superstamina/xssm/WhitelistController;I)I

    goto :goto_0
.end method
