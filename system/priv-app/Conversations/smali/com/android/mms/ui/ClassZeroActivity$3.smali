.class Lcom/android/mms/ui/ClassZeroActivity$3;
.super Ljava/lang/Thread;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mClassZeroValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$900(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "messageAddress":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 202
    .local v0, "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$500(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$500(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$600(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CLASS_ZERO_ADDRESS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$1000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ClassZeroActivity;->access$1000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$1000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ClassZeroActivity;->access$1000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mMessageFrom:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$500(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
