.class Lcom/android/mms/transaction/TransactionService$1;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 256
    :cond_0
    return-void

    .line 238
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
