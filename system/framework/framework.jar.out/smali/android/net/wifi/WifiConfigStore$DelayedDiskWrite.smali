.class Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedDiskWrite"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DelayedDiskWrite"

.field private static sDiskWriteHandler:Landroid/os/Handler;

.field private static sDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private static sWriteSequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 952
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->onWriteCalled(Ljava/util/List;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1103
    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void
.end method

.method private static onWriteCalled(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v10, 0x0

    .line 983
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v16, Ljava/io/BufferedOutputStream;

    new-instance v17, Ljava/io/FileOutputStream;

    # getter for: Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->access$100()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 986
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .local v11, "out":Ljava/io/DataOutputStream;
    const/16 v16, 0x2

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 988
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v15, 0x0

    .line 992
    .local v15, "writeToFile":Z
    :try_start_2
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 993
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    sget-object v16, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 1034
    const-string v16, "Ignore invalid ip assignment while writing"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    .line 1038
    :goto_1
    :pswitch_0
    sget-object v16, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    .line 1069
    const-string v16, "Ignthisore invalid proxy settings while writing"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    .line 1072
    :goto_2
    :pswitch_1
    if-eqz v15, :cond_0

    .line 1073
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1074
    # invokes: Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->access$200(Landroid/net/wifi/WifiConfiguration;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1079
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    :cond_0
    :goto_3
    :try_start_3
    const-string v16, "eos"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1082
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "writeToFile":Z
    :catch_0
    move-exception v3

    move-object v10, v11

    .line 1083
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :goto_4
    :try_start_4
    const-string v16, "Error writing data file"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1085
    if-eqz v10, :cond_1

    .line 1087
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FilterOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1092
    :cond_1
    :goto_5
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 1093
    :try_start_6
    sget v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v16, v16, -0x1

    sput v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v16, :cond_2

    .line 1094
    sget-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Looper;->quit()V

    .line 1095
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 1096
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1098
    :cond_2
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1100
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    return-void

    .line 995
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v9    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "writeToFile":Z
    :pswitch_2
    :try_start_7
    const-string v16, "ipAssignment"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 996
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 998
    .local v8, "linkAddr":Landroid/net/LinkAddress;
    const-string v16, "linkAddress"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 1076
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "linkAddr":Landroid/net/LinkAddress;
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    :catch_1
    move-exception v3

    .line 1077
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failure in writing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 1085
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v15    # "writeToFile":Z
    :catchall_0
    move-exception v16

    move-object v10, v11

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :goto_8
    if-eqz v10, :cond_3

    .line 1087
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FilterOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1092
    :cond_3
    :goto_9
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 1093
    :try_start_a
    sget v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v18, v18, -0x1

    sput v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v18, :cond_4

    .line 1094
    sget-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v18 .. v18}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Looper;->quit()V

    .line 1095
    const/16 v18, 0x0

    sput-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 1096
    const/16 v18, 0x0

    sput-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1098
    :cond_4
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v16

    .line 1002
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "writeToFile":Z
    :cond_5
    :try_start_b
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 1003
    .local v14, "route":Landroid/net/RouteInfo;
    const-string v16, "gateway"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v2

    .line 1005
    .local v2, "dest":Landroid/net/LinkAddress;
    if-eqz v2, :cond_6

    .line 1006
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1007
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1012
    :goto_b
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 1013
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1014
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_a

    .line 1010
    :cond_6
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_b

    .line 1016
    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_a

    .line 1019
    .end local v2    # "dest":Landroid/net/LinkAddress;
    .end local v14    # "route":Landroid/net/RouteInfo;
    :cond_8
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 1020
    .local v7, "inetAddr":Ljava/net/InetAddress;
    const-string v16, "dns"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_c

    .line 1023
    .end local v7    # "inetAddr":Ljava/net/InetAddress;
    :cond_9
    const/4 v15, 0x1

    .line 1024
    goto/16 :goto_1

    .line 1026
    .end local v6    # "i$":Ljava/util/Iterator;
    :pswitch_3
    const-string v16, "ipAssignment"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1027
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1028
    const/4 v15, 0x1

    .line 1029
    goto/16 :goto_1

    .line 1040
    :pswitch_4
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v13

    .line 1041
    .local v13, "proxyProperties":Landroid/net/ProxyProperties;
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    .line 1042
    .local v4, "exclusionList":Ljava/lang/String;
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1043
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1044
    const-string/jumbo v16, "proxyHost"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v16, "proxyPort"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1048
    const-string v16, "exclusionList"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1050
    const/4 v15, 0x1

    .line 1051
    goto/16 :goto_2

    .line 1053
    .end local v4    # "exclusionList":Ljava/lang/String;
    .end local v13    # "proxyProperties":Landroid/net/ProxyProperties;
    :pswitch_5
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 1054
    .local v12, "proxyPacProperties":Landroid/net/ProxyProperties;
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1055
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v16, "proxyPac"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1058
    const/4 v15, 0x1

    .line 1059
    goto/16 :goto_2

    .line 1061
    .end local v12    # "proxyPacProperties":Landroid/net/ProxyProperties;
    :pswitch_6
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1062
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1063
    const/4 v15, 0x1

    .line 1064
    goto/16 :goto_2

    .line 1085
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    .end local v15    # "writeToFile":Z
    :cond_a
    if-eqz v11, :cond_b

    .line 1087
    :try_start_c
    invoke-virtual {v11}, Ljava/io/FilterOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1092
    :cond_b
    :goto_d
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 1093
    :try_start_d
    sget v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v16, v16, -0x1

    sput v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v16, :cond_c

    .line 1094
    sget-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Looper;->quit()V

    .line 1095
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 1096
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 1098
    :cond_c
    monitor-exit v17

    move-object v10, v11

    .line 1099
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .line 1098
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v16

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v16

    :try_start_e
    monitor-exit v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v16

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v16

    :try_start_f
    monitor-exit v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v16

    .line 1088
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v16

    goto :goto_d

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v16

    goto/16 :goto_5

    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v17

    goto/16 :goto_9

    .line 1085
    :catchall_4
    move-exception v16

    goto/16 :goto_8

    .line 1082
    :catch_5
    move-exception v3

    goto/16 :goto_4

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 1038
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method static write(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-class v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v1

    .line 964
    :try_start_0
    sget v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 965
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "WifiConfigThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 966
    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 967
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 969
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 977
    return-void

    .line 969
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
