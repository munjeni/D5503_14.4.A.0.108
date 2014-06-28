.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;
.super Ljava/lang/Thread;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageReadIndicators(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$updateOnlyOutgoing:Z

.field final synthetic val$updateThreadId:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;JZ)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-wide p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;->val$updateThreadId:J

    iput-boolean p5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;->val$updateOnlyOutgoing:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1916
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v7, v7, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1917
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 1918
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thread_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;->val$updateThreadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1919
    .local v6, "where":Ljava/lang/String;
    const-string v4, ""

    .line 1920
    .local v4, "smsTypeSpecificWhere":Ljava/lang/String;
    const-string v3, " AND m_type <> 132"

    .line 1922
    .local v3, "mmsTypeSpecificWhere":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1923
    .local v5, "updateCount":I
    iget-boolean v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;->val$updateOnlyOutgoing:Z

    if-eqz v7, :cond_0

    .line 1924
    const-string v4, " AND type <> 1"

    .line 1927
    :cond_0
    const-string v7, "read"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1930
    :try_start_0
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1940
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1943
    sget-object v7, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v1, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/2addr v5, v7

    .line 1948
    :goto_0
    if-lez v5, :cond_1

    .line 1954
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v7, v7, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 1957
    :cond_1
    return-void

    .line 1944
    :catch_0
    move-exception v2

    .line 1945
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "ConversationActivityUiController"

    const-string v8, "File system full"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
