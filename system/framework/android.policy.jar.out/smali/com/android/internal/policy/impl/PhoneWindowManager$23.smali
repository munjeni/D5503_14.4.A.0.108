.class Lcom/android/internal/policy/impl/PhoneWindowManager$23;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5342
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5345
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sonymobile.intent.action.CAR_MIRRORLINK_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5346
    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5347
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 5360
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 5349
    .restart local v1    # "state":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarMirrorLinkMode:Z

    .line 5358
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    goto :goto_0

    .line 5352
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarMirrorLinkMode:Z

    goto :goto_1

    .line 5347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
