.class public final Lcom/adobe/xmp/options/ParseOptions;
.super Lcom/adobe/xmp/options/Options;
.source "ParseOptions.java"


# static fields
.field public static final ACCEPT_LATIN_1:I = 0x10

.field public static final FIX_CONTROL_CHARS:I = 0x8

.field public static final OMIT_NORMALIZATION:I = 0x20

.field public static final REQUIRE_XMP_META:I = 0x1

.field public static final STRICT_ALIASING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    .line 41
    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/ParseOptions;->setOption(IZ)V

    .line 42
    return-void
.end method


# virtual methods
.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 150
    sparse-switch p1, :sswitch_data_0

    .line 157
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 152
    :sswitch_0
    const-string v0, "REQUIRE_XMP_META"

    goto :goto_0

    .line 153
    :sswitch_1
    const-string v0, "STRICT_ALIASING"

    goto :goto_0

    .line 154
    :sswitch_2
    const-string v0, "FIX_CONTROL_CHARS"

    goto :goto_0

    .line 155
    :sswitch_3
    const-string v0, "ACCEPT_LATIN_1"

    goto :goto_0

    .line 156
    :sswitch_4
    const-string v0, "OMIT_NORMALIZATION"

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public getAcceptLatin1()Z
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getFixControlChars()Z
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getOmitNormalization()Z
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getRequireXMPMeta()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getStrictAliasing()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x3d

    .line 167
    return v0
.end method

.method public setAcceptLatin1(Z)Lcom/adobe/xmp/options/ParseOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 140
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/ParseOptions;->setOption(IZ)V

    .line 141
    return-object p0
.end method

.method public setFixControlChars(Z)Lcom/adobe/xmp/options/ParseOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 100
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/ParseOptions;->setOption(IZ)V

    .line 101
    return-object p0
.end method

.method public setOmitNormalization(Z)Lcom/adobe/xmp/options/ParseOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 120
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/ParseOptions;->setOption(IZ)V

    .line 121
    return-object p0
.end method

.method public setRequireXMPMeta(Z)Lcom/adobe/xmp/options/ParseOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/ParseOptions;->setOption(IZ)V

    .line 61
    return-object p0
.end method

.method public setStrictAliasing(Z)Lcom/adobe/xmp/options/ParseOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/ParseOptions;->setOption(IZ)V

    .line 81
    return-object p0
.end method
