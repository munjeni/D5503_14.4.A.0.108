.class Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
.super Landroid/os/Handler;
.source "MtpVendorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpVendorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpVendorHandler;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpVendorHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 176
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    .line 177
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    return-void
.end method

.method private processVendorEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 228
    const-string v2, "EXTRA_MTP_OP_CODE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 229
    .local v0, "code":I
    const-string v2, "EXTRA_MTP_PARAMS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 230
    .local v1, "eventParams":[I
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$600(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/IMtpVendorServer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/mtp/IMtpVendorServer;->sendVendorEvent(I[I)V

    .line 231
    return-void
.end method

.method private processVendorResponse(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 198
    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Landroid/mtp/MtpVendorHandler;->access$200(Landroid/mtp/MtpVendorHandler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 199
    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    const/4 v7, 0x0

    # setter for: Landroid/mtp/MtpVendorHandler;->mVendorResult:I
    invoke-static {v5, v7}, Landroid/mtp/MtpVendorHandler;->access$302(Landroid/mtp/MtpVendorHandler;I)I

    .line 200
    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z
    invoke-static {v5}, Landroid/mtp/MtpVendorHandler;->access$400(Landroid/mtp/MtpVendorHandler;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    monitor-exit v6

    .line 221
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v5, "EXTRA_MTP_TRANSACTION_ID"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 206
    .local v2, "id":J
    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mTransactionId:J
    invoke-static {v5}, Landroid/mtp/MtpVendorHandler;->access$500(Landroid/mtp/MtpVendorHandler;)J

    move-result-wide v7

    cmp-long v5, v2, v7

    if-eqz v5, :cond_1

    .line 207
    const-string v5, "MtpVendorHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore response because of incorrect transaction ID(id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " expect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mTransactionId:J
    invoke-static {v8}, Landroid/mtp/MtpVendorHandler;->access$500(Landroid/mtp/MtpVendorHandler;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v6

    goto :goto_0

    .line 219
    .end local v2    # "id":J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 212
    .restart local v2    # "id":J
    :cond_1
    :try_start_1
    const-string v5, "EXTRA_MTP_DATA"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 213
    .local v1, "dataArray":[B
    const-string v5, "EXTRA_MTP_RESPONSE_CODE"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, "code":I
    const-string v5, "EXTRA_MTP_PARAMS"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 216
    .local v4, "responseParams":[I
    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    iget-object v7, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;
    invoke-static {v7}, Landroid/mtp/MtpVendorHandler;->access$600(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/IMtpVendorServer;

    move-result-object v7

    invoke-interface {v7, v0, v4, v1}, Landroid/mtp/IMtpVendorServer;->sendVendorResponse(I[I[B)I

    move-result v7

    # setter for: Landroid/mtp/MtpVendorHandler;->mVendorResult:I
    invoke-static {v5, v7}, Landroid/mtp/MtpVendorHandler;->access$302(Landroid/mtp/MtpVendorHandler;I)I

    .line 218
    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    const/4 v7, 0x1

    # setter for: Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z
    invoke-static {v5, v7}, Landroid/mtp/MtpVendorHandler;->access$402(Landroid/mtp/MtpVendorHandler;Z)Z

    .line 219
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v5}, Landroid/mtp/MtpVendorHandler;->access$700(Landroid/mtp/MtpVendorHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->processVendorResponse(Landroid/os/Bundle;)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->processVendorEvent(Landroid/os/Bundle;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
