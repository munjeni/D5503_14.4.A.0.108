.class public Lcom/android/settings/SettingsCertificatesActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsCertificatesActivity.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsCertificatesActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCertificatesActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method public static certificatesExist()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getPrimaryCertificatesFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getFallbackCertificatesFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getFallbackCertificatesFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    const-string v0, "/lta-label/"

    const-string v1, ".*\\.html"

    invoke-static {v0, v1}, Lcom/android/settings/SettingsCertificatesActivity;->getFileNameWithSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileNameWithSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "regExSuffix"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "fileDir":Ljava/io/File;
    new-instance v2, Lcom/android/settings/SettingsCertificatesActivity$2;

    invoke-direct {v2, p1}, Lcom/android/settings/SettingsCertificatesActivity$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "fileNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getPrimaryCertificatesFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/certificates/certificates.html"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/etc/certificates/certificates.html"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v2, "file:///etc/certificates/"

    .line 68
    .local v2, "baseUrl":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getPrimaryCertificatesFileName()Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "fileName":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 71
    invoke-static {}, Lcom/android/settings/SettingsCertificatesActivity;->getFallbackCertificatesFileName()Ljava/lang/String;

    move-result-object v10

    .line 72
    if-nez v10, :cond_1

    .line 73
    const-string v1, "SettingsCertificatesActivity"

    const-string v3, "No certificates HTML file found."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v2, "file:///lta-label/"

    .line 80
    :cond_2
    const/4 v11, 0x0

    .line 81
    .local v11, "inputReader":Ljava/io/InputStreamReader;
    const/4 v7, 0x0

    .line 83
    .local v7, "data":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v7    # "data":Ljava/lang/StringBuilder;
    .local v8, "data":Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    :try_start_1
    new-array v0, v1, [C

    move-object/from16 v16, v0

    .line 87
    .local v16, "tmp":[C
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v13, "inputStream":Ljava/io/InputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v12, v13, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .end local v11    # "inputReader":Ljava/io/InputStreamReader;
    .local v12, "inputReader":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/Reader;->read([C)I

    move-result v14

    .local v14, "numRead":I
    if-ltz v14, :cond_3

    .line 90
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v1, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 92
    .end local v14    # "numRead":I
    :catch_0
    move-exception v9

    move-object v7, v8

    .end local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    move-object v11, v12

    .line 93
    .end local v12    # "inputReader":Ljava/io/InputStreamReader;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "tmp":[C
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "inputReader":Ljava/io/InputStreamReader;
    :goto_2
    :try_start_3
    const-string v1, "SettingsCertificatesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "certificates HTML file not found at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    if-eqz v11, :cond_0

    .line 103
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v9

    .line 106
    .local v9, "e":Ljava/io/IOException;
    const-string v1, "SettingsCertificatesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    .end local v7    # "data":Ljava/lang/StringBuilder;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v12    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "numRead":I
    .restart local v16    # "tmp":[C
    :cond_3
    if-eqz v12, :cond_4

    .line 103
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 110
    :cond_4
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    const-string v1, "SettingsCertificatesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "certificates HTML is empty (from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 105
    :catch_2
    move-exception v9

    .line 106
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v1, "SettingsCertificatesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 96
    .end local v8    # "data":Ljava/lang/StringBuilder;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "inputReader":Ljava/io/InputStreamReader;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "numRead":I
    .end local v16    # "tmp":[C
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    .restart local v11    # "inputReader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v9

    .line 97
    .restart local v9    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v1, "SettingsCertificatesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading certificates HTML file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 102
    if-eqz v11, :cond_0

    .line 103
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 105
    :catch_4
    move-exception v9

    .line 106
    const-string v1, "SettingsCertificatesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 101
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 102
    :goto_5
    if-eqz v11, :cond_5

    .line 103
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 107
    :cond_5
    :goto_6
    throw v1

    .line 105
    :catch_5
    move-exception v9

    .line 106
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "SettingsCertificatesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing the file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 116
    .end local v7    # "data":Ljava/lang/StringBuilder;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v12    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "numRead":I
    .restart local v16    # "tmp":[C
    :cond_6
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/SettingsCertificatesActivity;->mWebView:Landroid/webkit/WebView;

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsCertificatesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsCertificatesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/android/settings/SettingsCertificatesActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/SettingsCertificatesActivity$1;-><init>(Lcom/android/settings/SettingsCertificatesActivity;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 130
    .local v15, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0b004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsCertificatesActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v1, v15, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    goto/16 :goto_0

    .line 101
    .end local v12    # "inputReader":Ljava/io/InputStreamReader;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "numRead":I
    .end local v15    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v16    # "tmp":[C
    .restart local v11    # "inputReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    goto :goto_5

    .end local v7    # "data":Ljava/lang/StringBuilder;
    .end local v11    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v12    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "tmp":[C
    :catchall_2
    move-exception v1

    move-object v7, v8

    .end local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    move-object v11, v12

    .end local v12    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v11    # "inputReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 96
    .end local v7    # "data":Ljava/lang/StringBuilder;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "tmp":[C
    .restart local v8    # "data":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v9

    move-object v7, v8

    .end local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v7    # "data":Ljava/lang/StringBuilder;
    .end local v11    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v12    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "tmp":[C
    :catch_7
    move-exception v9

    move-object v7, v8

    .end local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    move-object v11, v12

    .end local v12    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v11    # "inputReader":Ljava/io/InputStreamReader;
    goto/16 :goto_4

    .line 92
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "tmp":[C
    :catch_8
    move-exception v9

    goto/16 :goto_2

    .end local v7    # "data":Ljava/lang/StringBuilder;
    .restart local v8    # "data":Ljava/lang/StringBuilder;
    :catch_9
    move-exception v9

    move-object v7, v8

    .end local v8    # "data":Ljava/lang/StringBuilder;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/SettingsCertificatesActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/SettingsCertificatesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCertificatesActivity;->mWebView:Landroid/webkit/WebView;

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method
