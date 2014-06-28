.class Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;
.super Landroid/os/Handler;
.source "NativeConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/NativeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomHandler"
.end annotation


# static fields
.field public static final MSG_EVENT:I


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;->mListeners:Ljava/util/ArrayList;

    .line 169
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown message has been sent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;

    .line 176
    .local v1, "listener":Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;->onDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v1    # "listener":Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;
    :cond_0
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
