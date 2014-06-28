.class Lcom/android/mms/ui/ClassZeroActivity$2;
.super Landroid/os/Handler;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const v3, 0x104000a

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$500(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$400(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07004f

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v3}, Lcom/android/mms/ui/ClassZeroActivity;->access$300(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v3}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/ClassZeroActivity;->mDisplayDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$102(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$600(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$400(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/ClassZeroActivity;->mDisplayDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$102(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$600(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->showProgress:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$700(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->showProgress:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$700(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$800(Lcom/android/mms/ui/ClassZeroActivity;)V

    goto/16 :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mMessageBody:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$400(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/ClassZeroActivity;->mDisplayDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$102(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
