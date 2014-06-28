.class Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RejectMsgAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/SomcRejectMsgManager;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    .line 261
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 262
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 266
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_0

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RejectMsgAsyncQueryHandler onQueryComplete :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/SomcRejectMsgManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/SomcRejectMsgManager;->access$100(Ljava/lang/String;)V

    .line 269
    :cond_0
    if-nez p3, :cond_1

    .line 288
    :goto_0
    return-void

    .line 271
    :cond_1
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 286
    :cond_2
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 273
    :cond_3
    :try_start_1
    const-string v3, "_id"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 274
    .local v1, "columnId":I
    const-string v3, "default_message"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 276
    .local v2, "defaultMsgId":I
    const-string v3, "message"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "changedMsg":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 279
    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    # getter for: Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/SomcRejectMsgManager;->access$200(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 281
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    # getter for: Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/SomcRejectMsgManager;->access$200(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/phone/SomcRejectMsgManager;->DEFAULT_MESSAGES_ARRAY:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 286
    .end local v0    # "changedMsg":Ljava/lang/String;
    .end local v1    # "columnId":I
    .end local v2    # "defaultMsgId":I
    :catchall_0
    move-exception v3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 292
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RejectMsgAsyncQueryHandler onUpdateComplete"

    # invokes: Lcom/android/phone/SomcRejectMsgManager;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/SomcRejectMsgManager;->access$100(Ljava/lang/String;)V

    :cond_0
    move-object v0, p2

    .line 293
    check-cast v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;

    .line 294
    .local v0, "dbInfo":Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;
    if-lez p3, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    # getter for: Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/phone/SomcRejectMsgManager;->access$200(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v1, v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->dbFailListener:Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

    .line 298
    .local v1, "dbfailListener":Lcom/android/phone/SomcRejectMsgManager$DbFailListener;
    invoke-interface {v1}, Lcom/android/phone/SomcRejectMsgManager$DbFailListener;->updateFailed()V

    goto :goto_0
.end method
