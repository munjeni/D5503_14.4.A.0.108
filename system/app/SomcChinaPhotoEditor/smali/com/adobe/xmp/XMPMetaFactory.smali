.class public final Lcom/adobe/xmp/XMPMetaFactory;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"


# static fields
.field private static schema:Lcom/adobe/xmp/XMPSchemaRegistry;

.field private static versionInfo:Lcom/adobe/xmp/XMPVersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static assertImplementation(Lcom/adobe/xmp/XMPMeta;)V
    .locals 2
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    .line 232
    instance-of v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    return-void
.end method

.method public static create()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v0
.end method

.method public static getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    return-object v0
.end method

.method public static declared-synchronized getVersionInfo()Lcom/adobe/xmp/XMPVersionInfo;
    .locals 9

    .prologue
    .line 259
    const-class v8, Lcom/adobe/xmp/XMPMetaFactory;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 263
    const/4 v3, 0x5

    .line 264
    .local v3, "major":I
    const/4 v6, 0x1

    .line 265
    .local v6, "minor":I
    const/4 v5, 0x0

    .line 266
    .local v5, "micro":I
    const/4 v2, 0x3

    .line 267
    .local v2, "engBuild":I
    const/4 v0, 0x0

    .line 270
    .local v0, "debug":Z
    :try_start_1
    const-string v4, "Adobe XMP Core 5.1.0-jc003"

    .line 273
    .local v4, "message":Ljava/lang/String;
    new-instance v7, Lcom/adobe/xmp/XMPMetaFactory$1;

    invoke-direct {v7}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>()V

    sput-object v7, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v7, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-object v7

    .line 312
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 259
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPMetaFactory;->parse(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromBuffer([BLcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "packet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "packet"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 248
    return-void
.end method

.method public static serialize(Lcom/adobe/xmp/XMPMeta;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/adobe/xmp/XMPMetaFactory;->serialize(Lcom/adobe/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V

    .line 175
    return-void
.end method

.method public static serialize(Lcom/adobe/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V
    .locals 0
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Lcom/adobe/xmp/options/SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p0}, Lcom/adobe/xmp/XMPMetaFactory;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 190
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .end local p0    # "xmp":Lcom/adobe/xmp/XMPMeta;
    invoke-static {p0, p1, p2}, Lcom/adobe/xmp/impl/XMPSerializerHelper;->serialize(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V

    .line 191
    return-void
.end method

.method public static serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "options"    # Lcom/adobe/xmp/options/SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0}, Lcom/adobe/xmp/XMPMetaFactory;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 206
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .end local p0    # "xmp":Lcom/adobe/xmp/XMPMeta;
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPSerializerHelper;->serializeToBuffer(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v0

    return-object v0
.end method

.method public static serializeToString(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)Ljava/lang/String;
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "options"    # Lcom/adobe/xmp/options/SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p0}, Lcom/adobe/xmp/XMPMetaFactory;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 223
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .end local p0    # "xmp":Lcom/adobe/xmp/XMPMeta;
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPSerializerHelper;->serializeToString(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/SerializeOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
