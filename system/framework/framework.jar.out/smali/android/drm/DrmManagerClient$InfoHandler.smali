.class Landroid/drm/DrmManagerClient$InfoHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHandler"
.end annotation


# static fields
.field public static final ERROR_EVENT_TYPE:I = 0x2

.field public static final INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 257
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 258
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 259
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    const/4 v3, 0x0

    .line 263
    .local v3, "info":Landroid/drm/DrmInfoEvent;
    const/4 v1, 0x0

    .line 268
    .local v1, "error":Landroid/drm/DrmErrorEvent;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 328
    const-string v7, "DrmManagerClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v7}, Landroid/drm/DrmEvent;->getUniqueId()I

    move-result v6

    .line 271
    .local v6, "uniqueId":I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v7}, Landroid/drm/DrmEvent;->getType()I

    move-result v4

    .line 272
    .local v4, "infoType":I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v7}, Landroid/drm/DrmEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "message":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 299
    :goto_1
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 300
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v7

    iget-object v8, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v7, v8, v3}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    goto :goto_0

    .line 276
    :sswitch_0
    :try_start_0
    invoke-static {v5}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3    # "info":Landroid/drm/DrmInfoEvent;
    check-cast v3, Landroid/drm/DrmInfoEvent;

    .line 281
    .restart local v3    # "info":Landroid/drm/DrmInfoEvent;
    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3    # "info":Landroid/drm/DrmInfoEvent;
    check-cast v3, Landroid/drm/DrmInfoEvent;

    .line 293
    .restart local v3    # "info":Landroid/drm/DrmInfoEvent;
    goto :goto_1

    .line 305
    .end local v4    # "infoType":I
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "uniqueId":I
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmErrorEvent;

    invoke-virtual {v7}, Landroid/drm/DrmEvent;->getUniqueId()I

    move-result v6

    .line 306
    .restart local v6    # "uniqueId":I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmErrorEvent;

    invoke-virtual {v7}, Landroid/drm/DrmEvent;->getType()I

    move-result v2

    .line 307
    .local v2, "errorType":I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmErrorEvent;

    invoke-virtual {v7}, Landroid/drm/DrmEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 308
    .restart local v5    # "message":Ljava/lang/String;
    packed-switch v2, :pswitch_data_1

    .line 323
    :goto_3
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 324
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    # getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v7

    iget-object v8, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v7, v8, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "error":Landroid/drm/DrmErrorEvent;
    check-cast v1, Landroid/drm/DrmErrorEvent;

    .line 318
    .restart local v1    # "error":Landroid/drm/DrmErrorEvent;
    goto :goto_3

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0xbb9 -> :sswitch_1
        0xbba -> :sswitch_1
        0xbbb -> :sswitch_1
    .end sparse-switch

    .line 308
    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
