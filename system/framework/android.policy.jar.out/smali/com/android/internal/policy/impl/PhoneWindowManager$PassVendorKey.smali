.class Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassVendorKey"
.end annotation


# instance fields
.field mKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 5038
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5039
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->mKeyEvent:Landroid/view/KeyEvent;

    .line 5040
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 5043
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5044
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5045
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.sonyericsson.intent.action.VENDOR_BUTTON"

    invoke-direct {v1, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5046
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5047
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.sonyericsson.permission.VENDOR_BUTTON"

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 5051
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
