.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallLogAsync;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CallLogAsync;
    .param p2, "x1"    # Lcom/android/phone/CallLogAsync$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .locals 14
    .param p1, "callList"    # [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .prologue
    .line 166
    array-length v9, p1

    .line 167
    .local v9, "count":I
    new-array v13, v9, [Landroid/net/Uri;

    .line 168
    .local v13, "result":[Landroid/net/Uri;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 169
    aget-object v8, p1, v11

    .line 171
    .local v8, "c":Lcom/android/phone/CallLogAsync$AddCallArgs;
    :try_start_0
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v1, v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 174
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 177
    :cond_0
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v3, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v4, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v5, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v7, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v0 .. v7}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v13, v11

    .line 183
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_1

    .line 186
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iget-wide v3, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/providers/cnap/CnapRecords;->addOrUpdateRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v10

    .line 190
    .local v10, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v0, "CallLogAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed addCall() SQLiteDiskIOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v8    # "c":Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v10    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_2
    return-object v13

    .line 192
    .restart local v8    # "c":Lcom/android/phone/CallLogAsync$AddCallArgs;
    :catch_1
    move-exception v10

    .line 193
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "CallLogAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed addCall() SQLiteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v12

    .line 195
    .local v12, "iae":Ljava/lang/IllegalArgumentException;
    const-string v0, "CallLogAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed addOrUpdateRecord() IllegalArgumentException: :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6
    .param p1, "result"    # [Landroid/net/Uri;

    .prologue
    .line 206
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 207
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 208
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method
