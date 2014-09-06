.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;
.super Landroid/os/Handler;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataHandler;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 434
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .local v1, "result":[Ljava/lang/Object;
    move-object v4, v1

    .line 437
    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "res":I
    move-object v4, v1

    .line 438
    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    check-cast v4, Landroid/net/Uri;

    move-object v3, v4

    check-cast v3, Landroid/net/Uri;

    .local v3, "uri":Landroid/net/Uri;
    move-object v4, v1

    .line 439
    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    check-cast v4, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-object v2, v4

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .line 440
    .local v2, "status":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    if-eqz v2, :cond_0

    .line 441
    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v3}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->notifyComplete(ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
