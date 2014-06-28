.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v1, 0x1

    .line 230
    :goto_0
    if-eqz v1, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    .line 267
    :goto_1
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/os/storage/ExternalStorageFormatter$3$1;

    invoke-direct {v3, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatAllMediaAndFactoryReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v2, v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v3, v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtCardPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const-string v3, ""

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 252
    :cond_3
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelfInternal()V
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    goto :goto_1

    .line 256
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 261
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const-string v3, ""

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mExtStoragePath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 262
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "Failed talking with mount service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
