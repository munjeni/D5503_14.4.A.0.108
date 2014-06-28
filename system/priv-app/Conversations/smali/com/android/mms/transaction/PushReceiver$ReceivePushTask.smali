.class Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private allowMmsNetworkTrafficWhenRoaming()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_key_mms_retrieval_during_roaming"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    .local v0, "downloadOnRoaming":Z
    const/4 v1, 0x1

    .line 179
    .local v1, "onRoamingNetwork":Z
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 180
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 183
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 24
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 82
    const/16 v20, 0x0

    aget-object v7, p1, v20

    .line 85
    .local v7, "intent":Landroid/content/Intent;
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 87
    .local v13, "pushData":[B
    if-nez v13, :cond_0

    .line 88
    const-string v20, "PushReceiver"

    const-string v21, "Invalid PUSH data"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/16 v20, 0x0

    .line 171
    :goto_0
    return-object v20

    .line 92
    :cond_0
    new-instance v11, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v11, v13}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 93
    .local v11, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v12

    .line 95
    .local v12, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v12, :cond_1

    .line 96
    const-string v20, "PushReceiver"

    const-string v21, "Invalid PUSH data"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v20, 0x0

    goto :goto_0

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v14

    .line 101
    .local v14, "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v18

    .line 102
    .local v18, "type":I
    const-wide/16 v16, -0x1

    .line 105
    .local v16, "threadId":J
    sparse-switch v18, :sswitch_data_0

    .line 159
    :try_start_0
    const-string v20, "PushReceiver"

    const-string v21, "Received unrecognized PDU."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .line 108
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->findThreadIdAndMessageId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)[J

    move-result-object v6

    .line 109
    .local v6, "ids":[J
    const/16 v20, 0x0

    aget-wide v16, v6, v20

    .line 110
    const/16 v20, 0x1

    aget-wide v8, v6, v20

    .line 112
    .local v8, "messageId":J
    const-wide/16 v20, -0x1

    cmp-long v20, v16, v20

    if-eqz v20, :cond_2

    .line 118
    invoke-virtual {v14, v12}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;

    move-result-object v19

    .line 119
    .local v19, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateThreadId(Landroid/content/Context;JLandroid/net/Uri;)V

    .line 121
    const/16 v20, 0x86

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 122
    move-object v0, v12

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v4, v0

    .line 124
    .local v4, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/mms/transaction/PushReceiver;->handleDeliveryReport(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V
    invoke-static {v0, v4, v8, v9}, Lcom/android/mms/transaction/PushReceiver;->access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 161
    .end local v4    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    .end local v6    # "ids":[J
    .end local v8    # "messageId":J
    .end local v19    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Lcom/google/android/mms/MmsException;
    const-string v20, "PushReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to save the data from PUSH: type="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 131
    .end local v5    # "e":Lcom/google/android/mms/MmsException;
    :sswitch_1
    :try_start_1
    move-object v0, v12

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v10, v0

    .line 132
    .local v10, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 133
    invoke-virtual {v14, v12}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;

    move-result-object v19

    .line 134
    .restart local v19    # "uri":Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->allowMmsNetworkTrafficWhenRoaming()Z

    move-result v20

    if-nez v20, :cond_3

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 163
    .end local v10    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v19    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 164
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v20, "PushReceiver"

    const-string v21, "Unexpected RuntimeException."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 145
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v10    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v19    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_2
    new-instance v15, Landroid/content/Intent;

    const-string v20, "android.intent.action.ACTION_NOTIFY_TRANSACTION"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-class v23, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v15, "svc":Landroid/content/Intent;
    const-string v20, "uri"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v20, "type"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
