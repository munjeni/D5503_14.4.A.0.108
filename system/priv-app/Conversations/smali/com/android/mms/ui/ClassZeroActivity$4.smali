.class Lcom/android/mms/ui/ClassZeroActivity$4;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 262
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->useAsWarningDialog:Z
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$1100(Lcom/android/mms/ui/ClassZeroActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->processNextIntent()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$1200(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 269
    return-void
.end method
