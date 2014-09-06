.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
.super Ljava/lang/Enum;
.source "VideoSize.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$Constants;,
        Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_30FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

.field public static final enum HD_120FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

.field private static final TAG:Ljava/lang/String; = "VideoSize"

.field private static final sParameterTextId:I = 0x7f0a0165


# instance fields
.field private mAverageFileSize:J

.field private final mDefaultQuality:I

.field private final mIconId:I

.field private final mIsConstraint:Z

.field private mMinFileSize:J

.field private final mSubTextId:I

.field private final mTextId:I

.field private mVideoBitRate:I

.field private mVideoProfile:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

.field private mVideoRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 28
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    const-string v1, "FOUR_K_UHD_30FPS"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0a025a

    const v5, 0x7f0a02ed

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf00

    const/16 v10, 0x870

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    const/16 v8, 0x64

    const/4 v9, 0x1

    const v10, 0x3473bc0

    const/16 v11, 0x1e

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;-><init>(Ljava/lang/String;IIIILandroid/graphics/Rect;ZIIII)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->FOUR_K_UHD_30FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .line 39
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    const-string v1, "FULL_HD_60FPS"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const v4, 0x7f0a0071

    const v5, 0x7f0a02f4

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x780

    const/16 v10, 0x438

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    const/16 v8, 0x65

    const/4 v9, 0x1

    const v10, 0x1c9c380

    const/16 v11, 0x3c

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;-><init>(Ljava/lang/String;IIIILandroid/graphics/Rect;ZIIII)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .line 50
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    const-string v1, "HD_120FPS"

    const/4 v2, 0x2

    const/4 v3, -0x1

    const v4, 0x7f0a02e8

    const v5, 0x7f0a02f5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x500

    const/16 v10, 0x2d0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    const/16 v8, 0x66

    const/4 v9, 0x1

    const v10, 0x2faf080

    const/16 v11, 0x78

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;-><init>(Ljava/lang/String;IIIILandroid/graphics/Rect;ZIIII)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->HD_120FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->FOUR_K_UHD_30FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->HD_120FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILandroid/graphics/Rect;ZIIII)V
    .locals 3
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "subTextId"    # I
    .param p6, "videoRect"    # Landroid/graphics/Rect;
    .param p7, "isConstraint"    # Z
    .param p8, "quality"    # I
    .param p9, "defaultQuality"    # I
    .param p10, "videoBitRate"    # I
    .param p11, "videoFrameRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/graphics/Rect;",
            "ZIIII)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mIconId:I

    .line 99
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mTextId:I

    .line 100
    iput p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mSubTextId:I

    .line 101
    iput-object p6, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 102
    iput-boolean p7, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mIsConstraint:Z

    .line 103
    iput p9, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mDefaultQuality:I

    .line 105
    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;

    invoke-direct {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;-><init>()V

    iget v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mDefaultQuality:I

    invoke-virtual {v1, p8, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->quality(II)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->build()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoProfile:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

    .line 109
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoProfile:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mDefaultQuality:I

    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getAudioBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v0

    .line 110
    .local v0, "audioBitRate":I
    invoke-static {v0, p10}, Lcom/sonymobile/android/addoncamera/supervideo/CameraSize;->getAverageFileSize(II)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mAverageFileSize:J

    .line 111
    invoke-static {v0, p10}, Lcom/sonymobile/android/addoncamera/supervideo/CameraSize;->getMinFileSize(II)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mMinFileSize:J

    .line 112
    return-void
.end method

.method private static getAudioBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 1
    .param p0, "profile"    # Landroid/media/CamcorderProfile;
    .param p1, "quality"    # I

    .prologue
    .line 384
    if-eqz p0, :cond_0

    .line 385
    iget v0, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 392
    :goto_0
    return v0

    .line 389
    :cond_0
    if-nez p1, :cond_1

    .line 390
    const/16 v0, 0x1388

    goto :goto_0

    .line 392
    :cond_1
    const v0, 0x1f400

    goto :goto_0
.end method

.method public static getDefaultValue()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->FOUR_K_UHD_30FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .locals 2

    .prologue
    .line 431
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .line 432
    .local v0, "options":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    return-object v0
.end method

.method public static getValueFromFrameSize(II)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 371
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 372
    .local v4, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 373
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v5, p0, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 380
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    :goto_1
    return-object v4

    .line 371
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getVideoSize(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .locals 6
    .param p0, "mode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->getCorrespondingVideoSize()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    move-result-object v3

    .line 410
    .local v3, "size":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 411
    .local v4, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    invoke-virtual {v4, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    .end local v4    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    :goto_1
    return-object v4

    .line 410
    .restart local v4    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v4    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    return-object v0
.end method


# virtual methods
.method public getAverageFileSize()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mAverageFileSize:J

    return-wide v0
.end method

.method public getDefaultQuality()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mDefaultQuality:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mIconId:I

    return v0
.end method

.method public getMinFileSize()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mMinFileSize:J

    return-wide v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_SIZE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f0a0165

    return v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 443
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->FOUR_K_UHD_30FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    return-object v0
.end method

.method public getSubTextId()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mSubTextId:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoBitRate()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoBitRate:I

    return v0
.end method

.method public getVideoFrameRate()I
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getVideoProfile()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 397
    .local v0, "profile":Landroid/media/CamcorderProfile;
    if-eqz v0, :cond_0

    .line 398
    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 405
    :goto_0
    return v1

    .line 402
    :cond_0
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mDefaultQuality:I

    if-nez v1, :cond_1

    .line 403
    const/16 v1, 0xf

    goto :goto_0

    .line 405
    :cond_1
    const/16 v1, 0x1e

    goto :goto_0
.end method

.method public getVideoFrameSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoProfile()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoProfile:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

    return-object v0
.end method

.method public getVideoRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isConstraint()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->mIsConstraint:Z

    return v0
.end method

.method public log()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
