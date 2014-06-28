.class public Lcom/sonyericsson/fmradio/service/FmParams;
.super Ljava/lang/Object;
.source "FmParams.java"


# static fields
.field public static final FM_BAND_PARAMS_CHANNEL_OFFSET_DEFAULT:I = 0x64

.field public static final FM_BAND_PARAMS_CHANNEL_OFFSET_ITALY_THAILAND:I = 0x32

.field public static final FM_BAND_PARAMS_CHANNEL_OFFSET_JAPAN:I = 0x64

.field public static final FM_BAND_PARAMS_DEFAULT:I = 0x0

.field public static final FM_BAND_PARAMS_ITALY_THAILAND:I = 0x2

.field public static final FM_BAND_PARAMS_JAPAN:I = 0x1

.field public static final FM_BAND_PARAMS_MAX_FREQ_DEFAULT:I = 0x1a5e0

.field public static final FM_BAND_PARAMS_MAX_FREQ_ITALY_THAILAND:I = 0x1a5e0

.field public static final FM_BAND_PARAMS_MAX_FREQ_JAPAN:I = 0x15f90

.field public static final FM_BAND_PARAMS_MIN_FREQ_DEFAULT:I = 0x155cc

.field public static final FM_BAND_PARAMS_MIN_FREQ_ITALY_THAILAND:I = 0x155cc

.field public static final FM_BAND_PARAMS_MIN_FREQ_JAPAN:I = 0x128e0

.field public static final FM_BAND_PARAMS_NOT_SET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFmBandForRegion(I)Lcom/stericsson/hardware/fm/FmBand;
    .locals 4
    .param p0, "region"    # I

    .prologue
    .line 58
    packed-switch p0, :pswitch_data_0

    .line 71
    const v1, 0x155cc

    .line 72
    .local v1, "min":I
    const v0, 0x1a5e0

    .line 73
    .local v0, "max":I
    const/16 v2, 0x64

    .line 76
    .local v2, "off":I
    :goto_0
    new-instance v3, Lcom/stericsson/hardware/fm/FmBand;

    invoke-direct {v3, v1, v0, v2, v1}, Lcom/stericsson/hardware/fm/FmBand;-><init>(IIII)V

    return-object v3

    .line 60
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "off":I
    :pswitch_0
    const v1, 0x128e0

    .line 61
    .restart local v1    # "min":I
    const v0, 0x15f90

    .line 62
    .restart local v0    # "max":I
    const/16 v2, 0x64

    .line 63
    .restart local v2    # "off":I
    goto :goto_0

    .line 65
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "off":I
    :pswitch_1
    const v1, 0x155cc

    .line 66
    .restart local v1    # "min":I
    const v0, 0x1a5e0

    .line 67
    .restart local v0    # "max":I
    const/16 v2, 0x32

    .line 68
    .restart local v2    # "off":I
    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFmBandFromResources(Landroid/content/res/Resources;)Lcom/stericsson/hardware/fm/FmBand;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 80
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 81
    .local v0, "region":I
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmParams;->createFmBandForRegion(I)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v1

    return-object v1
.end method
