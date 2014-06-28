.class Landroid/net/wifi/TxPowerControl$2;
.super Ljava/lang/Object;
.source "TxPowerControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/TxPowerControl;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/TxPowerControl;


# direct methods
.method constructor <init>(Landroid/net/wifi/TxPowerControl;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Landroid/net/wifi/TxPowerControl$2;->this$0:Landroid/net/wifi/TxPowerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 199
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 200
    .local v3, "properties":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 202
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    # getter for: Landroid/net/wifi/TxPowerControl;->CONF_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/TxPowerControl;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    if-eqz v2, :cond_2

    .line 210
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 217
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/TxPowerControl$2;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/TxPowerControl$2;->this$0:Landroid/net/wifi/TxPowerControl;

    # getter for: Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/net/wifi/TxPowerControl;->access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    return-void

    .line 211
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 213
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "TxPowerControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/net/wifi/TxPowerControl;->CONF_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/TxPowerControl;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    const/4 v3, 0x0

    .line 208
    if-eqz v1, :cond_0

    .line 210
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 211
    :catch_2
    move-exception v4

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_1

    .line 210
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 213
    :cond_1
    :goto_3
    throw v4

    .line 211
    :catch_3
    move-exception v5

    goto :goto_3

    .line 208
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 204
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method
