.class final Landroid/net/wifi/SupplicantConf;
.super Ljava/lang/Object;
.source "SupplicantConf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantConf$1;,
        Landroid/net/wifi/SupplicantConf$Entry;
    }
.end annotation


# static fields
.field private static final SUPPLICANT_CONF:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final SUPPLICANT_CONF_HASH:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.hash"

.field private static final SUPPLICANT_CONF_TEMP:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant_temp.conf"

.field private static final SUPPLICANT_CONF_TEMPLATE:Ljava/lang/String; = "/system/etc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "SupplicantConf"


# instance fields
.field private mBlockPatterns:[Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array v0, v3, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    const-string/jumbo v2, "network=\\{\\W*ssid\\W*=([a-fA-F0-9\"].*)[^\\}]*\\}"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cred=\\{[^\\}]*profile_name\\W*=\\W*(\".*\")[^\\}]*\\}"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/net/wifi/SupplicantConf;->mBlockPatterns:[Ljava/util/regex/Pattern;

    .line 68
    return-void
.end method

.method private appendBlock()Z
    .locals 18

    .prologue
    .line 134
    const-string v15, "/system/etc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/SupplicantConf;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 135
    .local v13, "tempBuf":Ljava/lang/String;
    const-string v15, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/SupplicantConf;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "confBuf":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-nez v4, :cond_1

    .line 137
    :cond_0
    const/4 v15, 0x0

    .line 168
    :goto_0
    return v15

    .line 141
    :cond_1
    const/4 v2, 0x0

    .line 143
    .local v2, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v15, Ljava/io/FileWriter;

    const-string v16, "/data/misc/wifi/wpa_supplicant_temp.conf"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v3, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/SupplicantConf;->mBlockPatterns:[Ljava/util/regex/Pattern;

    .local v1, "arr$":[Ljava/util/regex/Pattern;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v12, v1, v9

    .line 146
    .local v12, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Landroid/net/wifi/SupplicantConf;->parse(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/HashMap;

    move-result-object v14

    .line 147
    .local v14, "templateEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Landroid/net/wifi/SupplicantConf;->parse(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/HashMap;

    move-result-object v5

    .line 150
    .local v5, "confEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9    # "i$":I
    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 151
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 163
    .end local v1    # "arr$":[Ljava/util/regex/Pattern;
    .end local v5    # "confEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "len$":I
    .end local v12    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "templateEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 164
    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v6, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    const-string v15, "SupplicantConf"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Can not write to temporary file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 168
    const/4 v15, 0x0

    goto :goto_0

    .line 155
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "arr$":[Ljava/util/regex/Pattern;
    .restart local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v5    # "confEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v12    # "pattern":Ljava/util/regex/Pattern;
    .restart local v14    # "templateEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 157
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/SupplicantConf$Entry;

    .line 158
    .local v7, "entry":Landroid/net/wifi/SupplicantConf$Entry;
    iget-object v15, v7, Landroid/net/wifi/SupplicantConf$Entry;->mBlock:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 166
    .end local v1    # "arr$":[Ljava/util/regex/Pattern;
    .end local v5    # "confEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    .end local v7    # "entry":Landroid/net/wifi/SupplicantConf$Entry;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v12    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "templateEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    :catchall_0
    move-exception v15

    move-object v2, v3

    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    throw v15

    .line 145
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "arr$":[Ljava/util/regex/Pattern;
    .restart local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v5    # "confEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v12    # "pattern":Ljava/util/regex/Pattern;
    .restart local v14    # "templateEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    :cond_3
    add-int/lit8 v8, v9, 0x1

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_1

    .line 162
    .end local v5    # "confEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    .end local v12    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "templateEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    :cond_4
    const/4 v15, 0x1

    .line 166
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v1    # "arr$":[Ljava/util/regex/Pattern;
    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v15

    goto :goto_5

    .line 163
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SupplicantConf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not close the file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createTempConf()Z
    .locals 10

    .prologue
    .line 241
    const/4 v5, 0x0

    .line 242
    .local v5, "temporaryConf":Ljava/io/BufferedWriter;
    const/4 v0, 0x0

    .line 245
    .local v0, "brSupplicantConfTemp":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .local v1, "brSupplicantConfTemp":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/data/misc/wifi/wpa_supplicant_temp.conf"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    .end local v5    # "temporaryConf":Ljava/io/BufferedWriter;
    .local v6, "temporaryConf":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 249
    .local v4, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 250
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "formatedLine":Ljava/lang/String;
    const-string v7, "#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 256
    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 260
    .end local v2    # "formatedLine":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 261
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "temporaryConf":Ljava/io/BufferedWriter;
    .local v3, "ioEx":Ljava/io/IOException;
    .restart local v5    # "temporaryConf":Ljava/io/BufferedWriter;
    :goto_1
    :try_start_3
    const-string v7, "SupplicantConf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not perform file operation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    const/4 v7, 0x0

    .line 264
    invoke-direct {p0, v5}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 265
    invoke-direct {p0, v0}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 267
    .end local v3    # "ioEx":Ljava/io/IOException;
    :goto_2
    return v7

    .line 264
    .end local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .end local v5    # "temporaryConf":Ljava/io/BufferedWriter;
    .restart local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "temporaryConf":Ljava/io/BufferedWriter;
    :cond_1
    invoke-direct {p0, v6}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 265
    invoke-direct {p0, v1}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 267
    const/4 v7, 0x1

    move-object v0, v1

    .end local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "temporaryConf":Ljava/io/BufferedWriter;
    .restart local v5    # "temporaryConf":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 264
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-direct {p0, v5}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 265
    invoke-direct {p0, v0}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    throw v7

    .line 264
    .end local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .end local v5    # "temporaryConf":Ljava/io/BufferedWriter;
    .restart local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "temporaryConf":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "temporaryConf":Ljava/io/BufferedWriter;
    .restart local v5    # "temporaryConf":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 260
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    .restart local v0    # "brSupplicantConfTemp":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getFileHash(Ljava/lang/String;)[B
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, "md":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 195
    .local v1, "digestInputStream":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .line 197
    .local v3, "digestedMsg":[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 198
    new-instance v2, Ljava/security/DigestInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8, v6}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .local v2, "digestInputStream":Ljava/security/DigestInputStream;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    .line 201
    .local v5, "length":I
    new-array v0, v5, [B

    .line 202
    .local v0, "bFileData":[B
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v5}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 204
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 210
    invoke-direct {p0, v2}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 212
    .end local v0    # "bFileData":[B
    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v5    # "length":I
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    :goto_0
    return-object v3

    .line 205
    :catch_0
    move-exception v4

    .line 206
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v8, "SupplicantConf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not read the file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    invoke-direct {p0, v1}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 207
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 208
    .local v7, "nsaEx":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_3
    const-string v8, "SupplicantConf"

    const-string v9, "Algorithm is not available"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    invoke-direct {p0, v1}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v7    # "nsaEx":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-direct {p0, v1}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    throw v8

    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    goto :goto_3

    .line 207
    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    :catch_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    goto :goto_2

    .line 205
    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    goto :goto_1
.end method

.method private loadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 93
    const/4 v3, 0x0

    .line 95
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    :goto_0
    return-object v5

    .line 100
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v1, "fileBuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 104
    .local v2, "line":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 115
    .end local v1    # "fileBuf":Ljava/lang/StringBuffer;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 116
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string v6, "SupplicantConf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File operation failed while parsing conf file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-direct {p0, v3}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "fileBuf":Ljava/lang/StringBuffer;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 119
    invoke-direct {p0, v4}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v1    # "fileBuf":Ljava/lang/StringBuffer;
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-direct {p0, v3}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 115
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private parse(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/HashMap;
    .locals 4
    .param p1, "buf"    # Ljava/lang/String;
    .param p2, "block"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SupplicantConf$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/SupplicantConf$Entry;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    .local v0, "blockMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    new-instance v1, Landroid/net/wifi/SupplicantConf$Entry;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/net/wifi/SupplicantConf$Entry;-><init>(Landroid/net/wifi/SupplicantConf$1;)V

    .line 85
    .local v1, "entry":Landroid/net/wifi/SupplicantConf$Entry;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/SupplicantConf$Entry;->mKey:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/SupplicantConf$Entry;->mBlock:Ljava/lang/String;

    .line 87
    iget-object v3, v1, Landroid/net/wifi/SupplicantConf$Entry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    .end local v1    # "entry":Landroid/net/wifi/SupplicantConf$Entry;
    :cond_0
    return-object v2
.end method

.method private updateHash([B)V
    .locals 6
    .param p1, "bHash"    # [B

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "fosTempHash":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/data/misc/wifi/wpa_supplicant.hash"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v0    # "fosTempHash":Ljava/io/FileOutputStream;
    .local v1, "fosTempHash":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_0

    .line 226
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :cond_0
    invoke-direct {p0, v1}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 233
    .end local v1    # "fosTempHash":Ljava/io/FileOutputStream;
    .restart local v0    # "fosTempHash":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "ioEx":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "SupplicantConf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not perform file operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-direct {p0, v0}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "ioEx":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-direct {p0, v0}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "fosTempHash":Ljava/io/FileOutputStream;
    .restart local v1    # "fosTempHash":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fosTempHash":Ljava/io/FileOutputStream;
    .restart local v0    # "fosTempHash":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 228
    .end local v0    # "fosTempHash":Ljava/io/FileOutputStream;
    .restart local v1    # "fosTempHash":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fosTempHash":Ljava/io/FileOutputStream;
    .restart local v0    # "fosTempHash":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private updateSupplicantConf()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 277
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, "supplicantConfFile":Ljava/io/File;
    invoke-direct {p0}, Landroid/net/wifi/SupplicantConf;->createTempConf()Z

    move-result v4

    if-nez v4, :cond_1

    .line 309
    .end local v1    # "supplicantConfFile":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 283
    .restart local v1    # "supplicantConfFile":Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/SupplicantConf;->appendBlock()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/wifi/wpa_supplicant_temp.conf"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "temporaryConfFile":Ljava/io/File;
    const-string v4, "/data/misc/wifi/wpa_supplicant_temp.conf"

    const/16 v5, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3f2

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    const-string v4, "SupplicantConf"

    const-string v5, "Can not set permisson"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    const-string v4, "SupplicantConf"

    const-string v5, "Can not delete temporary file: /data/misc/wifi/wpa_supplicant_temp.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v1    # "supplicantConfFile":Ljava/io/File;
    .end local v2    # "temporaryConfFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "ioEx":Ljava/lang/SecurityException;
    const-string v4, "SupplicantConf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not perform file operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    .end local v0    # "ioEx":Ljava/lang/SecurityException;
    .restart local v1    # "supplicantConfFile":Ljava/io/File;
    .restart local v2    # "temporaryConfFile":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 300
    const-string v4, "SupplicantConf"

    const-string v5, "Can not rename file: /data/misc/wifi/wpa_supplicant_temp.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 302
    const-string v4, "SupplicantConf"

    const-string v5, "Can not delete temporary file: /data/misc/wifi/wpa_supplicant_temp.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkSupplicantConf()V
    .locals 9

    .prologue
    .line 317
    const/4 v4, 0x0

    .line 318
    .local v4, "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 326
    .local v3, "fisSupplicantConfTemp":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/wpa_supplicant.hash"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 327
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/data/misc/wifi/wpa_supplicant.hash"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .local v5, "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/wpa_supplicant.hash"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 330
    .local v0, "bCurTempHash":[B
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    const-string v6, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v6}, Landroid/net/wifi/SupplicantConf;->getFileHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 333
    .local v1, "bHash":[B
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 335
    invoke-direct {p0}, Landroid/net/wifi/SupplicantConf;->updateSupplicantConf()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 336
    invoke-direct {p0, v1}, Landroid/net/wifi/SupplicantConf;->updateHash([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    :cond_0
    invoke-direct {p0, v5}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 351
    invoke-direct {p0, v3}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 353
    .end local v0    # "bCurTempHash":[B
    .end local v1    # "bHash":[B
    .end local v5    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .restart local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .end local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .restart local v0    # "bCurTempHash":[B
    .restart local v5    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    :cond_1
    move-object v4, v5

    .line 344
    .end local v0    # "bCurTempHash":[B
    .end local v5    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .restart local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/net/wifi/SupplicantConf;->updateSupplicantConf()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 345
    const-string v6, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v6}, Landroid/net/wifi/SupplicantConf;->getFileHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/SupplicantConf;->updateHash([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :cond_3
    invoke-direct {p0, v4}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 351
    invoke-direct {p0, v3}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "SupplicantConf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not perform file operation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    invoke-direct {p0, v4}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 351
    invoke-direct {p0, v3}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 350
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-direct {p0, v4}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    .line 351
    invoke-direct {p0, v3}, Landroid/net/wifi/SupplicantConf;->closeStream(Ljava/io/Closeable;)V

    throw v6

    .line 350
    .end local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .restart local v5    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .restart local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    goto :goto_2

    .line 347
    .end local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .restart local v5    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    .restart local v4    # "fisSupplicantConfTempHash":Ljava/io/FileInputStream;
    goto :goto_1
.end method
