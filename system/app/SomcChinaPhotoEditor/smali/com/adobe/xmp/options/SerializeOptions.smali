.class public final Lcom/adobe/xmp/options/SerializeOptions;
.super Lcom/adobe/xmp/options/Options;
.source "SerializeOptions.java"


# static fields
.field public static final ENCODE_UTF16BE:I = 0x2

.field public static final ENCODE_UTF16LE:I = 0x3

.field public static final ENCODE_UTF8:I = 0x0

.field private static final ENCODING_MASK:I = 0x3

.field public static final EXACT_PACKET_LENGTH:I = 0x200

.field public static final INCLUDE_THUMBNAIL_PAD:I = 0x100

.field private static final LITTLEENDIAN_BIT:I = 0x1

.field public static final OMIT_PACKET_WRAPPER:I = 0x10

.field public static final OMIT_XMPMETA_ELEMENT:I = 0x1000

.field public static final READONLY_PACKET:I = 0x20

.field public static final SORT:I = 0x2000

.field public static final USE_CANONICAL_FORMAT:I = 0x80

.field public static final USE_COMPACT_FORMAT:I = 0x40

.field private static final UTF16_BIT:I = 0x2


# instance fields
.field private baseIndent:I

.field private indent:Ljava/lang/String;

.field private newline:Ljava/lang/String;

.field private omitVersionAttribute:Z

.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    .line 72
    const/16 v0, 0x800

    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 77
    const-string v0, "\n"

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 82
    const-string v0, "  "

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 89
    iput-boolean v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    .line 72
    const/16 v0, 0x800

    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 77
    const-string v0, "\n"

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 82
    const-string v0, "  "

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 89
    iput-boolean v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    .line 109
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 439
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/adobe/xmp/options/SerializeOptions;-><init>(I)V

    .line 440
    .local v0, "clone":Lcom/adobe/xmp/options/SerializeOptions;
    iget v2, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setBaseIndent(I)Lcom/adobe/xmp/options/SerializeOptions;

    .line 441
    iget-object v2, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setIndent(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;

    .line 442
    iget-object v2, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setNewline(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;

    .line 443
    iget v2, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setPadding(I)Lcom/adobe/xmp/options/SerializeOptions;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0    # "clone":Lcom/adobe/xmp/options/SerializeOptions;
    :goto_0
    return-object v0

    .line 446
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 459
    sparse-switch p1, :sswitch_data_0

    .line 469
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 461
    :sswitch_0
    const-string v0, "OMIT_PACKET_WRAPPER"

    goto :goto_0

    .line 462
    :sswitch_1
    const-string v0, "READONLY_PACKET"

    goto :goto_0

    .line 463
    :sswitch_2
    const-string v0, "USE_COMPACT_FORMAT"

    goto :goto_0

    .line 465
    :sswitch_3
    const-string v0, "INCLUDE_THUMBNAIL_PAD"

    goto :goto_0

    .line 466
    :sswitch_4
    const-string v0, "EXACT_PACKET_LENGTH"

    goto :goto_0

    .line 467
    :sswitch_5
    const-string v0, "OMIT_XMPMETA_ELEMENT"

    goto :goto_0

    .line 468
    :sswitch_6
    const-string v0, "NORMALIZED"

    goto :goto_0

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x100 -> :sswitch_3
        0x200 -> :sswitch_4
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_6
    .end sparse-switch
.end method

.method public getBaseIndent()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    return v0
.end method

.method public getEncodeUTF16BE()Z
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncodeUTF16LE()Z
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "UTF-16BE"

    .line 424
    :goto_0
    return-object v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    const-string v0, "UTF-16LE"

    goto :goto_0

    .line 424
    :cond_1
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public getExactPacketLength()Z
    .locals 1

    .prologue
    .line 236
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIncludeThumbnailPad()Z
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitPacketWrapper()Z
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getOmitVersionAttribute()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return v0
.end method

.method public getOmitXmpMetaElement()Z
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    return v0
.end method

.method public getReadOnlyPacket()Z
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getSort()Z
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCanonicalFormat()Z
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCompactFormat()Z
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    .line 480
    const/16 v0, 0x3370

    .line 479
    return v0
.end method

.method public setBaseIndent(I)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0
    .param p1, "baseIndent"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 332
    return-object p0
.end method

.method public setEncodeUTF16BE(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 287
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 288
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 289
    return-object p0
.end method

.method public setEncodeUTF16LE(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x3

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 310
    invoke-virtual {p0, v1, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 311
    return-object p0
.end method

.method public setExactPacketLength(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 246
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 247
    return-object p0
.end method

.method public setIncludeThumbnailPad(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 226
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 227
    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public setNewline(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0
    .param p1, "newline"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 374
    return-object p0
.end method

.method public setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 127
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 128
    return-object p0
.end method

.method public setOmitXmpMetaElement(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 147
    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 148
    return-object p0
.end method

.method public setPadding(I)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 394
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 395
    return-object p0
.end method

.method public setReadOnlyPacket(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 167
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 168
    return-object p0
.end method

.method public setSort(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 266
    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 267
    return-object p0
.end method

.method public setUseCanonicalFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 207
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 208
    return-object p0
.end method

.method public setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 187
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 188
    return-object p0
.end method
