.class public Landroid/content/pm/RuntimeSkinDigest;
.super Ljava/lang/Object;
.source "RuntimeSkinDigest.java"


# static fields
.field private static final DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "RuntimeSkinDigest"


# instance fields
.field private mDigest:[B

.field private mTimeStamp:J


# direct methods
.method private constructor <init>([B)V
    .locals 0
    .param p1, "digest"    # [B

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    .line 56
    return-void
.end method

.method public static createDigestFromStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/pm/RuntimeSkinDigest;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v5, 0x0

    .line 135
    if-nez p0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v5

    .line 140
    :cond_1
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 146
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    :try_start_1
    new-instance v2, Ljava/security/DigestInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .local v2, "dis":Ljava/security/DigestInputStream;
    const/16 v6, 0x2000

    :try_start_2
    new-array v0, v6, [B

    .line 151
    .local v0, "buffer":[B
    :cond_2
    :goto_1
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v2, v0, v6, v7}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 152
    if-eqz p1, :cond_2

    .line 153
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 157
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v6, "RuntimeSkinDigest"

    const-string v7, "Could not create digest from stream"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 141
    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v3

    .line 143
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "SHA-256 is not available"

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 156
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    :cond_3
    :try_start_5
    new-instance v6, Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/pm/RuntimeSkinDigest;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    :try_start_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 163
    if-eqz p1, :cond_4

    .line 164
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_4
    move-object v5, v6

    goto :goto_0

    .line 160
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_0
    move-exception v5

    :try_start_7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 163
    .end local v2    # "dis":Ljava/security/DigestInputStream;
    :catchall_1
    move-exception v5

    if-eqz p1, :cond_5

    .line 164
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v5
.end method

.method public static createDigestFromString(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/pm/RuntimeSkinDigest;

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/RuntimeSkinDigest;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 81
    instance-of v2, p1, Landroid/content/pm/RuntimeSkinDigest;

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 84
    check-cast v0, Landroid/content/pm/RuntimeSkinDigest;

    .line 85
    .local v0, "other":Landroid/content/pm/RuntimeSkinDigest;
    if-eq v0, p0, :cond_2

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    iget-object v3, v0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Landroid/content/pm/RuntimeSkinDigest;->mTimeStamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Landroid/content/pm/RuntimeSkinDigest;->mTimeStamp:J

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
