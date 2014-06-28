.class public Lcom/sonyericsson/conversations/util/VCardUtil;
.super Ljava/lang/Object;
.source "VCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/VCardUtil$1;,
        Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;,
        Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
    }
.end annotation


# static fields
.field private static final CONTACT_LAYER:I = 0x0

.field private static final VCARD_CANVAS_SIZE:F = 0.9f

.field private static final VCARD_LAYER:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    return-void
.end method

.method public static createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "internal"    # Z

    .prologue
    .line 65
    const/4 v8, 0x0

    .line 66
    .local v8, "vCardUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 67
    .local v5, "vCardFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 68
    .local v2, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 70
    .local v3, "output":Ljava/io/OutputStream;
    const-string v7, "vCard"

    .line 94
    .local v7, "vCardFileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_f

    .line 96
    if-eqz p2, :cond_0

    .line 97
    const-string v9, ".vcf"

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-static {v7, v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 105
    :goto_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v3    # "output":Ljava/io/OutputStream;
    .local v4, "output":Ljava/io/OutputStream;
    if-eqz v4, :cond_e

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "done":Z
    :goto_1
    if-nez v1, :cond_e

    .line 110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    move-result v0

    .line 111
    .local v0, "data":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    .line 112
    const/4 v1, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "data":I
    .end local v1    # "done":Z
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_2
    new-instance v6, Ljava/io/File;

    const-string v9, "sdcard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".vcf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .end local v5    # "vCardFile":Ljava/io/File;
    .local v6, "vCardFile":Ljava/io/File;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    move-object v5, v6

    .end local v6    # "vCardFile":Ljava/io/File;
    .restart local v5    # "vCardFile":Ljava/io/File;
    goto :goto_0

    .line 114
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v0    # "data":I
    .restart local v1    # "done":Z
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_12

    goto :goto_1

    .line 119
    .end local v0    # "data":I
    :catch_0
    move-exception v9

    move-object v3, v4

    .line 132
    .end local v1    # "done":Z
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 133
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    :cond_2
    if-eqz v3, :cond_3

    .line 140
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 145
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 149
    :goto_3
    return-object v8

    .line 131
    :catchall_0
    move-exception v9

    .line 132
    :goto_4
    if-eqz v2, :cond_4

    .line 133
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 139
    :cond_4
    if-eqz v3, :cond_5

    .line 140
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 145
    :cond_5
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 131
    :goto_5
    throw v9

    .line 135
    :catch_1
    move-exception v9

    .line 139
    if-eqz v3, :cond_6

    .line 140
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 145
    :cond_6
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    .line 138
    :catchall_1
    move-exception v9

    .line 139
    if-eqz v3, :cond_7

    .line 140
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 145
    :cond_7
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 138
    :goto_6
    throw v9

    .line 142
    :catch_2
    move-exception v9

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    :catchall_2
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_3
    move-exception v9

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    :catchall_3
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_4
    move-exception v10

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_6

    :catchall_4
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 122
    :catch_5
    move-exception v9

    .line 132
    :goto_7
    if-eqz v2, :cond_8

    .line 133
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 139
    :cond_8
    if-eqz v3, :cond_9

    .line 140
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 145
    :cond_9
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    .line 135
    :catch_6
    move-exception v9

    .line 139
    if-eqz v3, :cond_a

    .line 140
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 145
    :cond_a
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    .line 138
    :catchall_5
    move-exception v9

    .line 139
    if-eqz v3, :cond_b

    .line 140
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 145
    :cond_b
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 138
    :goto_8
    throw v9

    .line 142
    :catch_7
    move-exception v9

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    :catchall_6
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_8
    move-exception v9

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_3

    :catchall_7
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_9
    move-exception v10

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_8

    :catchall_8
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 135
    :catch_a
    move-exception v10

    .line 139
    if-eqz v3, :cond_c

    .line 140
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 145
    :cond_c
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_5

    .line 138
    :catchall_9
    move-exception v9

    .line 139
    if-eqz v3, :cond_d

    .line 140
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 145
    :cond_d
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 138
    :goto_9
    throw v9

    .line 142
    :catch_b
    move-exception v10

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_5

    :catchall_a
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_c
    move-exception v10

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_5

    :catchall_b
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_d
    move-exception v10

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_9

    :catchall_c
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_e
    move-object v3, v4

    .line 132
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :cond_f
    if-eqz v2, :cond_10

    .line 133
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 139
    :cond_10
    if-eqz v3, :cond_11

    .line 140
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 145
    :cond_11
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_3

    .line 135
    :catch_e
    move-exception v9

    .line 139
    if-eqz v3, :cond_12

    .line 140
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    .line 145
    :cond_12
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_3

    .line 138
    :catchall_d
    move-exception v9

    .line 139
    if-eqz v3, :cond_13

    .line 140
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    .line 145
    :cond_13
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 138
    :goto_a
    throw v9

    .line 142
    :catch_f
    move-exception v9

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_3

    :catchall_e
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_10
    move-exception v9

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_3

    :catchall_f
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 142
    :catch_11
    move-exception v10

    .line 145
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_a

    :catchall_10
    move-exception v9

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    throw v9

    .line 131
    .end local v5    # "vCardFile":Ljava/io/File;
    .restart local v6    # "vCardFile":Ljava/io/File;
    :catchall_11
    move-exception v9

    move-object v5, v6

    .end local v6    # "vCardFile":Ljava/io/File;
    .restart local v5    # "vCardFile":Ljava/io/File;
    goto/16 :goto_4

    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v1    # "done":Z
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_12
    move-exception v9

    move-object v3, v4

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 122
    .end local v1    # "done":Z
    .end local v5    # "vCardFile":Ljava/io/File;
    .restart local v6    # "vCardFile":Ljava/io/File;
    :catch_12
    move-exception v9

    move-object v5, v6

    .end local v6    # "vCardFile":Ljava/io/File;
    .restart local v5    # "vCardFile":Ljava/io/File;
    goto/16 :goto_7

    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v1    # "done":Z
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catch_13
    move-exception v9

    move-object v3, v4

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    goto/16 :goto_7

    .line 119
    .end local v1    # "done":Z
    :catch_14
    move-exception v9

    goto/16 :goto_2

    .end local v5    # "vCardFile":Ljava/io/File;
    .restart local v6    # "vCardFile":Ljava/io/File;
    :catch_15
    move-exception v9

    move-object v5, v6

    .end local v6    # "vCardFile":Ljava/io/File;
    .restart local v5    # "vCardFile":Ljava/io/File;
    goto/16 :goto_2
.end method

.method public static getAllVCardContactDetails(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, "contact":Lcom/android/vcard/VCardEntry;
    if-eqz p1, :cond_1

    .line 338
    const/4 v4, 0x0

    .line 340
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 341
    if-eqz v4, :cond_0

    .line 342
    new-instance v5, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v5}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 343
    .local v5, "vCardParser":Lcom/android/vcard/VCardParser_V21;
    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    .line 344
    .local v1, "builder":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v3, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;-><init>(Lcom/sonyericsson/conversations/util/VCardUtil$1;)V

    .line 345
    .local v3, "holder":Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
    invoke-virtual {v1, v3}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 347
    invoke-virtual {v5, v1}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 348
    invoke-virtual {v5, v4}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V

    .line 349
    iget-object v6, v3, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 350
    iget-object v6, v3, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/vcard/VCardEntry;

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v1    # "builder":Lcom/android/vcard/VCardEntryConstructor;
    .end local v3    # "holder":Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
    .end local v5    # "vCardParser":Lcom/android/vcard/VCardParser_V21;
    :cond_0
    if-eqz v4, :cond_1

    .line 362
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 360
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 362
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 360
    :cond_2
    :goto_1
    throw v6

    .line 353
    :catch_0
    move-exception v6

    .line 360
    if-eqz v4, :cond_1

    .line 362
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 363
    :catch_1
    move-exception v6

    goto :goto_0

    .line 355
    :catch_2
    move-exception v6

    .line 360
    if-eqz v4, :cond_1

    .line 362
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 357
    :catch_3
    move-exception v6

    .line 360
    if-eqz v4, :cond_1

    .line 362
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 363
    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method public static getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 265
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_0

    .line 267
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactNameFromInputStream(Ljava/io/InputStream;Z)Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;

    move-result-object v0

    .line 268
    .local v0, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    if-eqz v0, :cond_0

    .line 269
    iget-object v2, v0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v0    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 277
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :cond_1
    :goto_0
    return-object v2

    .line 275
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 277
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 275
    :cond_2
    :goto_1
    throw v3

    .line 272
    :catch_0
    move-exception v3

    .line 275
    if-eqz v1, :cond_1

    .line 277
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public static getVCardContactName(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 235
    const/4 v2, 0x0

    .line 237
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    array-length v3, p1

    invoke-direct {v1, p1, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 238
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    if-eqz v1, :cond_1

    .line 239
    invoke-static {v1, v4}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactNameFromInputStream(Ljava/io/InputStream;Z)Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;

    move-result-object v0

    .line 240
    .local v0, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    if-eqz v0, :cond_0

    .line 241
    iget-object v2, v0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mName:Ljava/lang/String;

    .line 244
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 245
    .restart local v0    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getVCardContactNameFromInputStream(Ljava/io/InputStream;Z)Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "getPhoto"    # Z

    .prologue
    const/4 v10, 0x0

    .line 298
    const/4 v4, 0x0

    .line 299
    .local v4, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    new-instance v9, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v9}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 300
    .local v9, "vCardParser":Lcom/android/vcard/VCardParser_V21;
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v0, v10}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    .line 301
    .local v0, "builder":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v3, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;-><init>(Lcom/sonyericsson/conversations/util/VCardUtil$1;)V

    .line 302
    .local v3, "holder":Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
    invoke-virtual {v0, v3}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 304
    :try_start_0
    invoke-virtual {v9, v0}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 305
    invoke-virtual {v9, p0}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V

    .line 306
    iget-object v10, v3, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 307
    iget-object v10, v3, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry;

    .line 309
    .local v1, "contact":Lcom/android/vcard/VCardEntry;
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 312
    .local v7, "photo":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v8

    .line 314
    .local v8, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 315
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v2

    .line 316
    .local v2, "data":[B
    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 320
    .end local v2    # "data":[B
    .end local v8    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_0
    new-instance v5, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    .local v5, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    move-object v4, v5

    .line 327
    .end local v1    # "contact":Lcom/android/vcard/VCardEntry;
    .end local v5    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "photo":Landroid/graphics/Bitmap;
    .restart local v4    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    :cond_1
    :goto_0
    return-object v4

    .line 324
    :catch_0
    move-exception v10

    goto :goto_0

    .line 322
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method public static getVCardContactPhoto(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 153
    const/4 v10, 0x0

    .line 155
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 157
    .local v13, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 158
    if-eqz v13, :cond_0

    .line 159
    const/4 v4, 0x1

    invoke-static {v13, v4}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactNameFromInputStream(Ljava/io/InputStream;Z)Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;

    move-result-object v12

    .line 160
    .local v12, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    if-eqz v12, :cond_0

    .line 161
    iget-object v10, v12, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mPhoto:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v12    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    :cond_0
    if-eqz v13, :cond_1

    .line 169
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 176
    .local v16, "res":Landroid/content/res/Resources;
    if-nez v10, :cond_2

    .line 178
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getThemeDefaultContactBadgeBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 182
    :cond_2
    const/4 v4, 0x2

    new-array v15, v4, [Landroid/graphics/drawable/Drawable;

    .line 184
    .local v15, "layers":[Landroid/graphics/drawable/Drawable;
    const v4, 0x7f020098

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 185
    .local v20, "vcard":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 188
    .local v18, "scaledHeight":I
    const/4 v4, 0x0

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-static {v10, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 190
    .local v19, "scaledImage":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v15, v4

    .line 196
    const/4 v4, 0x1

    aput-object v20, v15, v4

    .line 198
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v15}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 203
    .local v2, "ld1":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v14, v4, 0x2

    .line 205
    .local v14, "inset":I
    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v17, v4, v14

    .line 210
    .local v17, "righInset":I
    const/4 v3, 0x0

    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v14, -0x1

    add-int/lit8 v6, v17, -0x1

    add-int/lit8 v7, v14, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 211
    const v4, 0x7f020097

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 212
    .local v9, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v4, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    move-object v4, v9

    .line 213
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 215
    :cond_3
    const/4 v4, 0x0

    aput-object v9, v15, v4

    .line 216
    const/4 v4, 0x1

    aput-object v2, v15, v4

    .line 217
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v15}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 218
    .local v3, "ld2":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v14, v4, 0x2

    .line 220
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v11, v4, v14

    .line 222
    .local v11, "bottomInset":I
    const/4 v4, 0x1

    add-int/lit8 v5, v14, -0x1

    add-int/lit8 v6, v14, -0x1

    add-int/lit8 v7, v14, -0x1

    add-int/lit8 v8, v11, -0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 224
    return-object v3

    .line 167
    .end local v2    # "ld1":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "ld2":Landroid/graphics/drawable/LayerDrawable;
    .end local v9    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v11    # "bottomInset":I
    .end local v14    # "inset":I
    .end local v15    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "righInset":I
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledImage":Landroid/graphics/Bitmap;
    .end local v20    # "vcard":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_4

    .line 169
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 167
    :cond_4
    :goto_1
    throw v4

    .line 164
    :catch_0
    move-exception v4

    .line 167
    if-eqz v13, :cond_1

    .line 169
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 170
    :catch_1
    move-exception v4

    goto/16 :goto_0

    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static isMultipleContactsVCard(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vCardUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 413
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 414
    .local v4, "input":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 416
    const/16 v7, 0x2710

    new-array v1, v7, [B

    .line 417
    .local v1, "data":[B
    const/4 v7, 0x0

    const/16 v8, 0x2710

    invoke-virtual {v4, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 418
    .local v0, "bytesRead":I
    if-eq v0, v9, :cond_0

    .line 419
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 420
    .local v2, "dataStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 421
    const-string v7, "BEGIN:VCARD"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 422
    .local v3, "index":I
    if-ne v3, v9, :cond_1

    .line 443
    .end local v0    # "bytesRead":I
    .end local v1    # "data":[B
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v5

    .line 426
    .restart local v0    # "bytesRead":I
    .restart local v1    # "data":[B
    .restart local v2    # "dataStr":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v4    # "input":Ljava/io/InputStream;
    :cond_1
    const-string v7, "BEGIN:VCARD"

    const-string v8, "BEGIN:VCARD"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 427
    if-ne v3, v9, :cond_0

    move v5, v6

    .line 429
    goto :goto_0

    .line 440
    .end local v0    # "bytesRead":I
    .end local v1    # "data":[B
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 438
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static saveContact(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vCardUri"    # Landroid/net/Uri;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 378
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v3}, Lcom/sonyericsson/conversations/util/VCardUtil;->createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    .line 379
    .local v2, "vCardFile":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 380
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "text/x-vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 393
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "vCardFile":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local v2    # "vCardFile":Landroid/net/Uri;
    :cond_1
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/VCardUtil;->saveContactInternal(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    .end local v2    # "vCardFile":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/VCardUtil;->saveContactInternal(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private static saveContactInternal(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vCardUri"    # Landroid/net/Uri;

    .prologue
    .line 396
    if-eqz p1, :cond_0

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 401
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
