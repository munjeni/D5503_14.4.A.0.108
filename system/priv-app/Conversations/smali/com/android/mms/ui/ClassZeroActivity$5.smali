.class Lcom/android/mms/ui/ClassZeroActivity$5;
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
    .line 272
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 276
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$900(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 278
    .local v0, "currentZeroValues":Landroid/content/ContentValues;
    new-instance v1, Lcom/android/mms/ui/ClassZeroActivity$5$1;

    const-string v2, "saveClassZeroMessageThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mms/ui/ClassZeroActivity$5$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity$5;Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 285
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->processNextIntent()V
    invoke-static {v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$1200(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 286
    return-void
.end method
