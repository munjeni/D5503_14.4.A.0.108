.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 819
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 820
    return-void
.end method

.method private processPendingTransaction(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 8
    .param p1, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    const/4 v7, 0x2

    .line 1022
    const/4 v3, 0x0

    .line 1023
    .local v3, "transaction":Lcom/android/mms/transaction/Transaction;
    const/4 v1, 0x0

    .line 1025
    .local v1, "numProcessTransaction":I
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 1026
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1027
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v3, v0

    .line 1029
    :cond_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1030
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    if-eqz v3, :cond_5

    .line 1033
    if-eqz p1, :cond_1

    .line 1034
    invoke-virtual {v3, p1}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 1040
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v2

    .line 1041
    .local v2, "serviceId":I
    const-string v4, "Conversations"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1042
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1046
    const-string v4, "Conversations"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1047
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started deferred processing of transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .end local v2    # "serviceId":I
    :cond_3
    :goto_0
    return-void

    .line 1030
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1050
    .restart local v2    # "serviceId":I
    :cond_4
    const/4 v3, 0x0

    .line 1051
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;I)V

    goto :goto_0

    .line 1055
    .end local v2    # "serviceId":I
    :cond_5
    if-nez v1, :cond_3

    .line 1056
    const-string v4, "Conversations"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1057
    const-string v4, "TransactionService"

    const-string v5, "processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_6
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 12
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 1076
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 1077
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/Transaction;

    .line 1078
    .local v4, "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v4, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1079
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1080
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction already pending: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_1
    monitor-exit v7

    .line 1182
    .end local v4    # "t":Lcom/android/mms/transaction/Transaction;
    :goto_0
    return v10

    .line 1084
    .restart local v4    # "t":Lcom/android/mms/transaction/Transaction;
    :cond_2
    instance-of v5, v4, Lcom/android/mms/transaction/NotificationTransaction;

    if-eqz v5, :cond_0

    instance-of v5, p1, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v5, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v5, v0

    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/NotificationTransaction;->isObsoletedBy(Lcom/android/mms/transaction/RetrieveTransaction;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1094
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1095
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found NT in pending: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_3
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1103
    .end local v4    # "t":Lcom/android/mms/transaction/Transaction;
    :cond_4
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/Transaction;

    .line 1104
    .restart local v4    # "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v4, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1105
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1106
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicated transaction: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_6
    monitor-exit v7

    goto/16 :goto_0

    .line 1169
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "t":Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1109
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "t":Lcom/android/mms/transaction/Transaction;
    :cond_7
    :try_start_1
    instance-of v5, v4, Lcom/android/mms/transaction/NotificationTransaction;

    if-eqz v5, :cond_5

    instance-of v5, p1, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v5, :cond_5

    check-cast v4, Lcom/android/mms/transaction/NotificationTransaction;

    .end local v4    # "t":Lcom/android/mms/transaction/Transaction;
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/NotificationTransaction;->isObsoletedBy(Lcom/android/mms/transaction/RetrieveTransaction;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1113
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1114
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1115
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found NT in processing: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", auto = ON, skip RT!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_8
    monitor-exit v7

    goto/16 :goto_0

    .line 1133
    :cond_9
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1134
    const-string v5, "TransactionService"

    const-string v6, "processTransaction: call beginMmsConnectivity..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1138
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v1

    .line 1139
    .local v1, "connectivityResult":I
    if-ne v1, v10, :cond_c

    .line 1140
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1142
    const-string v5, "TransactionService"

    const-string v6, "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1145
    :cond_b
    :try_start_3
    monitor-exit v7

    goto/16 :goto_0

    .line 1147
    .end local v1    # "connectivityResult":I
    :catch_0
    move-exception v2

    .line 1150
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "TransactionService"

    const-string v6, "processTransaction: IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v8, 0x1f4

    invoke-virtual {p0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1154
    monitor-exit v7

    goto/16 :goto_0

    .line 1157
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "connectivityResult":I
    :cond_c
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_10

    .line 1158
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1159
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_d
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1172
    invoke-virtual {p0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1173
    invoke-virtual {p0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1176
    :cond_e
    const-string v5, "Conversations"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1177
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processTransaction: starting transaction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_f
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v5}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1181
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->process()V

    goto/16 :goto_0

    .line 1163
    :cond_10
    :try_start_4
    const-string v5, "Conversations"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1164
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProcessing reaches max, adding transaction to \'mPending\' list: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_11
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 831
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mStopService:Z
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x64

    if-eq v10, v11, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 836
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handling incoming message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_2
    const/4 v9, 0x0

    .line 840
    .local v9, "transaction":Lcom/android/mms/transaction/Transaction;
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1016
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "what="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :sswitch_0
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    iget v12, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/mms/transaction/TransactionService;->onLanchStartService(Landroid/content/Intent;I)V
    invoke-static {v11, v10, v12}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;I)V

    goto :goto_0

    .line 846
    :sswitch_1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 847
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "there are "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " transactions which are processing."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 850
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wake lock is held? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :goto_1
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retry alarm set to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/transaction/RetryScheduler;->isRetryAlarmEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MmsConnectivityReceiver is enabled? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const-class v13, Lcom/android/mms/transaction/MmsConnectivityReceiver;

    invoke-static {v12, v13}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->getComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MmsBootRetryReceiver is enabled? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const-class v13, Lcom/android/mms/transaction/MmsBootRetryReceiver;

    invoke-static {v12, v13}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->getComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v11, 0x0

    # setter for: Lcom/android/mms/transaction/TransactionService;->mStopService:Z
    invoke-static {v10, v11}, Lcom/android/mms/transaction/TransactionService;->access$002(Lcom/android/mms/transaction/TransactionService;Z)Z

    goto/16 :goto_0

    .line 852
    :cond_3
    const-string v10, "TransactionService"

    const-string v11, "wake lock is not held, that\'s great!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 867
    :sswitch_2
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 868
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 869
    monitor-exit v11

    goto/16 :goto_0

    .line 871
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_4
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 874
    const-string v10, "TransactionService"

    const-string v11, "handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v5

    .line 879
    .local v5, "result":I
    if-eqz v5, :cond_6

    .line 880
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extending MMS connectivity returned "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 886
    .end local v5    # "result":I
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "TransactionService"

    const-string v11, "Attempt to extend use of MMS connectivity failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 892
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "result":I
    :cond_6
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {p0, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 903
    .end local v5    # "result":I
    :sswitch_3
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/util/NetworkConnectivityListener;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/util/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 904
    .local v3, "info":Landroid/net/NetworkInfo;
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 905
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handle DATA_STATE_CHANGED event: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_7
    const/4 v4, 0x1

    .line 910
    .local v4, "isAvailable":Z
    const/4 v7, 0x0

    .line 912
    .local v7, "settings":Lcom/android/mms/transaction/TransactionSettings;
    if-nez v3, :cond_a

    .line 913
    const/4 v4, 0x0

    .line 928
    :cond_8
    :goto_2
    if-nez v4, :cond_d

    .line 929
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 930
    const-string v10, "TransactionService"

    const-string v11, "wait for network turning to available..."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_9
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/32 v11, 0xea60

    invoke-virtual {p0, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 915
    :cond_a
    new-instance v7, Lcom/android/mms/transaction/TransactionSettings;

    .end local v7    # "settings":Lcom/android/mms/transaction/TransactionSettings;
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 918
    .restart local v7    # "settings":Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionSettings;->isValid()Z

    move-result v10

    if-nez v10, :cond_8

    .line 920
    :cond_b
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 921
    const-string v10, "TransactionService"

    const-string v11, "type is not TYPE_MOBILE_MMS or not connected or APN is invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_c
    const/4 v4, 0x0

    goto :goto_2

    .line 936
    :cond_d
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_e

    .line 939
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {p0, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 943
    :cond_e
    invoke-direct {p0, v7}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 947
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "isAvailable":Z
    .end local v7    # "settings":Lcom/android/mms/transaction/TransactionSettings;
    :sswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 949
    .local v6, "serviceId":I
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/transaction/TransactionBundle;

    .line 951
    .local v0, "args":Lcom/android/mms/transaction/TransactionBundle;
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->createTransaction(ILcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/Transaction;
    invoke-static {v10, v6, v0}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/Transaction;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    .line 952
    if-nez v9, :cond_10

    .line 984
    if-nez v9, :cond_0

    .line 985
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 986
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transaction was null. Stopping self: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_f
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 989
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V
    invoke-static {v10, v6}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;I)V

    goto/16 :goto_0

    .line 956
    :cond_10
    :try_start_4
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v10

    if-nez v10, :cond_12

    .line 957
    const/4 v9, 0x0

    .line 984
    if-nez v9, :cond_0

    .line 985
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 986
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transaction was null. Stopping self: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_11
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 989
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V
    invoke-static {v10, v6}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;I)V

    goto/16 :goto_0

    .line 961
    :cond_12
    :try_start_5
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 962
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Started processing of incoming message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 984
    :cond_13
    if-nez v9, :cond_0

    .line 985
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 986
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transaction was null. Stopping self: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_14
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 989
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V
    invoke-static {v10, v6}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;I)V

    goto/16 :goto_0

    .line 964
    .end local v0    # "args":Lcom/android/mms/transaction/TransactionBundle;
    :catch_1
    move-exception v2

    .line 965
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occurred while handling message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 967
    if-eqz v9, :cond_16

    .line 969
    :try_start_7
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 970
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 971
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 972
    :try_start_8
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 973
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 980
    :cond_15
    const/4 v9, 0x0

    .line 984
    :cond_16
    :goto_3
    if-nez v9, :cond_0

    .line 985
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 986
    const-string v10, "TransactionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transaction was null. Stopping self: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_17
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 989
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V
    invoke-static {v10, v6}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;I)V

    goto/16 :goto_0

    .line 973
    :catchall_1
    move-exception v10

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 975
    :catch_2
    move-exception v8

    .line 976
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_b
    const-string v10, "TransactionService"

    const-string v11, "Unexpected Throwable."

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 980
    const/4 v9, 0x0

    .line 981
    goto :goto_3

    .line 980
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v10

    const/4 v9, 0x0

    :try_start_c
    throw v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 984
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_3
    move-exception v10

    if-nez v9, :cond_19

    .line 985
    const-string v11, "Conversations"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 986
    const-string v11, "TransactionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Transaction was null. Stopping self: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_18
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v11}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 989
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V
    invoke-static {v11, v6}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;I)V

    :cond_19
    throw v10

    .line 994
    .end local v6    # "serviceId":I
    :sswitch_5
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, v10}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 997
    :sswitch_6
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mStayAlive:Z
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 999
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_0

    .line 1003
    :sswitch_7
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mStayAlive:Z
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1005
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    invoke-static {v10, v11}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;I)V

    goto/16 :goto_0

    .line 1009
    :sswitch_8
    const-string v10, "Conversations"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1010
    const-string v10, "TransactionService"

    const-string v11, "network is not available,abort and exit!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_1a
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->abortMmsConnectivity()V
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)V

    .line 1013
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v10}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0

    .line 840
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0x6 -> :sswitch_8
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
