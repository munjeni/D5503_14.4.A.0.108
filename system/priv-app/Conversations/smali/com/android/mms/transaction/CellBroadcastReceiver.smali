.class public Lcom/android/mms/transaction/CellBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CellBroadcastReceiver.java"


# static fields
.field public static final BRAND_DOCOMO:Ljava/lang/String; = "docomo"

.field public static final CELL_BROADCAST_ACTIVITY_ALIAS:Ljava/lang/String; = "com.android.mms.ui.CellBroadcastActivity"

.field private static final TAG:Ljava/lang/String; = "CellBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isDisplayCBAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "docomo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCellBroadcastEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private final removeMsgBodyTrailingChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "messageBody"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    .end local p1    # "messageBody":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 169
    .restart local p1    # "messageBody":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x40

    .line 170
    .local v1, "trailingCharacter":C
    const/4 v0, 0x0

    .line 171
    .local v0, "endIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-lez v0, :cond_1

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_2

    .line 176
    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "validMessageBody":Ljava/lang/String;
    move-object p1, v2

    .line 177
    goto :goto_0

    .line 171
    .end local v2    # "validMessageBody":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, "isCreateFromPduExsit":Z
    :try_start_0
    const-class v3, Landroid/telephony/SmsCbMessage;

    const-string v4, "createFromPdu"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    .local v0, "createFromPduMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 54
    const/4 v2, 0x1

    .line 60
    .end local v0    # "createFromPduMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/CellBroadcastReceiver;->onReceiveOnJB(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    goto :goto_0

    .line 63
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/CellBroadcastReceiver;->onReceiveOnICS(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onReceiveOnICS(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    const-string v11, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.provider.telephony.SMS_CB_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 101
    :cond_0
    const-string v11, "CellBroadcastReceiver"

    const-string v12, "Received CB message on ICS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v9, 0x0

    check-cast v9, [[B

    .line 105
    .local v9, "pdus":[[B
    const-string v11, "pdus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v8, v11

    check-cast v8, [Ljava/lang/Object;

    .line 106
    .local v8, "o":[Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 107
    array-length v11, v8

    new-array v9, v11, [[B

    .line 108
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v8

    if-ge v5, v11, :cond_1

    .line 109
    aget-object v11, v8, v5

    check-cast v11, [B

    check-cast v11, [B

    aput-object v11, v9, v5

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v5    # "i":I
    :cond_1
    if-eqz v9, :cond_5

    .line 114
    const-string v11, "CellBroadcastReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " CB pdus"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    array-length v11, v9

    if-ge v5, v11, :cond_4

    .line 118
    const/4 v6, 0x0

    .line 121
    .local v6, "message":Landroid/telephony/SmsCbMessage;
    :try_start_0
    const-class v11, Landroid/telephony/SmsCbMessage;

    const-string v12, "createFromPdu"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, [B

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 123
    .local v3, "createFromPduMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 124
    const-class v11, Landroid/telephony/SmsCbMessage;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v9, v5

    aput-object v14, v12, v13

    invoke-virtual {v3, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/telephony/SmsCbMessage;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v3    # "createFromPduMethod":Ljava/lang/reflect/Method;
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 132
    invoke-virtual {v6}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CellBroadcastReceiver;->removeMsgBodyTrailingChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .end local v1    # "body":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 127
    :catch_0
    move-exception v4

    .line 128
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "CellBroadcastReceiver"

    const-string v12, "Could not createFromPdu"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 136
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "message":Landroid/telephony/SmsCbMessage;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "messageBody":Ljava/lang/String;
    const-string v11, "CellBroadcastReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CB text: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/CellBroadcastReceiver;->isDisplayCBAllowed(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 140
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.android.mms.ui.CellBroadcastActivity"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "CLASS_ZERO_BODY"

    invoke-virtual {v11, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/high16 v12, 0x18000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 147
    .local v2, "cellBroadcastIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v2    # "cellBroadcastIntent":Landroid/content/Intent;
    .end local v5    # "i":I
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "o":[Ljava/lang/Object;
    .end local v9    # "pdus":[[B
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-void
.end method

.method public onReceiveOnJB(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const-string v5, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.provider.telephony.SMS_CB_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    :cond_0
    const-string v5, "CellBroadcastReceiver"

    const-string v6, "Received CB message on JB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 73
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 74
    const-string v5, "CellBroadcastReceiver"

    const-string v6, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 78
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v5, "message"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsCbMessage;

    .line 79
    .local v3, "message":Landroid/telephony/SmsCbMessage;
    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "body":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/CellBroadcastReceiver;->removeMsgBodyTrailingChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "messageBody":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CellBroadcastReceiver;->isDisplayCBAllowed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.mms.ui.CellBroadcastActivity"

    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "CLASS_ZERO_BODY"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x18000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, "cellBroadcastIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    .end local v1    # "cellBroadcastIntent":Landroid/content/Intent;
    :cond_3
    const-string v5, "CellBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring unprivileged action received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
