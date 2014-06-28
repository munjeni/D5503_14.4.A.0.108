.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;
.super Ljava/lang/Thread;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copySMSToSimCard(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 644
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$000(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 645
    .local v1, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v2, v4

    .local v2, "projection":[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 647
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 648
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 649
    .local v6, "address":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 651
    :try_start_0
    const-string v3, "address"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 652
    .local v7, "addressIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 656
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 660
    .end local v7    # "addressIndex":I
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "[\\+]?[0-9]+"

    invoke-static {v3, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 662
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->val$activity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 663
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1$1;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 699
    :cond_3
    :goto_0
    return-void

    .line 656
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 675
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$000(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 677
    .local v9, "smsMsg":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v9, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    iget-wide v11, v9, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-static {v3, v6, v4, v11, v12}, Lcom/sonyericsson/conversations/util/SimCardUtils;->copySMSToSimCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v10

    .line 681
    .local v10, "success":Z
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->val$activity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 685
    if-eqz v10, :cond_5

    .line 686
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1$2;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 697
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->showSimCardFullDialog(Landroid/app/Activity;)V

    goto :goto_0
.end method
