.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;
.super Ljava/lang/Thread;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyMessage(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 994
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$000(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 996
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 998
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    const-string v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "address":Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1002
    .local v4, "body":Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1004
    .local v6, "date":Ljava/lang/Long;
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1006
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # invokes: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isIncomingMessage(Landroid/database/Cursor;)Z
    invoke-static {v2, v8}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$700(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1007
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    invoke-interface/range {v1 .. v7}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->addInboxMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    .end local v1    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "body":Ljava/lang/String;
    .end local v6    # "date":Ljava/lang/Long;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$activity:Landroid/app/Activity;

    new-instance v5, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1032
    return-void

    .line 1010
    .restart local v1    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .restart local v3    # "address":Ljava/lang/String;
    .restart local v4    # "body":Ljava/lang/String;
    .restart local v6    # "date":Ljava/lang/Long;
    :cond_2
    const/4 v5, 0x0

    move-object v2, v0

    :try_start_2
    invoke-interface/range {v1 .. v6}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->addSentMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v9

    .line 1013
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v9}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1017
    .end local v1    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "body":Ljava/lang/String;
    .end local v6    # "date":Ljava/lang/Long;
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method
