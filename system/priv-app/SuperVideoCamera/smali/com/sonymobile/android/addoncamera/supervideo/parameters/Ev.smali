.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;
.super Ljava/lang/Enum;
.source "Ev.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum M1_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum M2_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum M3_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum M4_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum M5_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum M6_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum P1_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum P2_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum P3_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum P4_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum P5_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum P6_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field public static final enum ZERO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

.field private static final sParameterTextId:I = 0x7f0a003f


# instance fields
.field private final mIconId:I

.field private mIndex:I

.field private final mTextId:I

.field private final mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const v3, 0x7f020039

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v1, "M6_3"

    const v4, 0x7f0a0040

    const/high16 v5, -0x40000000

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M6_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 26
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v5, "M5_3"

    const v8, 0x7f0a0041

    const v9, -0x40266666

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M5_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 30
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "M4_3"

    const v11, 0x7f0a0042

    const v12, -0x4059999a

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M4_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 34
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "M3_3"

    const v11, 0x7f0a0043

    const/high16 v12, -0x40800000

    move v9, v14

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M3_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 38
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "M2_3"

    const/4 v9, 0x4

    const v11, 0x7f0a0044

    const v12, -0x40cccccd

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M2_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 42
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "M1_3"

    const/4 v9, 0x5

    const v11, 0x7f0a0045

    const v12, -0x41666666

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M1_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 46
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "ZERO"

    const/4 v9, 0x6

    const v10, 0x7f02003a

    const v11, 0x7f0a0046

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->ZERO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 50
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "P1_3"

    const/4 v9, 0x7

    const v11, 0x7f0a0047

    const v12, 0x3e99999a

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P1_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 54
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "P2_3"

    const/16 v9, 0x8

    const v11, 0x7f0a0048

    const v12, 0x3f333333

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P2_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 58
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "P3_3"

    const/16 v9, 0x9

    const v11, 0x7f0a0049

    const/high16 v12, 0x3f800000

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P3_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 62
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "P4_3"

    const/16 v9, 0xa

    const v11, 0x7f0a004a

    const v12, 0x3fa66666

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P4_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 66
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "P5_3"

    const/16 v9, 0xb

    const v11, 0x7f0a004b

    const v12, 0x3fd9999a

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P5_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 70
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    const-string v8, "P6_3"

    const/16 v9, 0xc

    const v11, 0x7f0a004c

    const/high16 v12, 0x40000000

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P6_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .line 21
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M6_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M5_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M4_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M3_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M2_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->M1_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->ZERO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P1_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P2_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P3_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P4_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P5_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->P6_3:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIF)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mIconId:I

    .line 100
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mTextId:I

    .line 101
    iput p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mValue:F

    .line 102
    return-void
.end method

.method public static getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;
    .locals 15
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 144
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v8, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v6

    .line 147
    .local v6, "maxIndex":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    .line 149
    .local v7, "minIndex":I
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 166
    :cond_0
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    return-object v10

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 155
    .local v1, "evStep":F
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v9, v0, v3

    .line 156
    .local v9, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;
    move v4, v7

    .local v4, "index":I
    :goto_1
    if-gt v4, v6, :cond_2

    .line 157
    int-to-float v10, v4

    mul-float v2, v1, v10

    .line 158
    .local v2, "evValue":F
    const/high16 v10, 0x41200000

    mul-float/2addr v10, v2

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L

    add-double/2addr v10, v12

    double-to-int v10, v10

    iget v11, v9, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mValue:F

    const/high16 v12, 0x41200000

    mul-float/2addr v11, v12

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0000000000000L

    add-double/2addr v11, v13

    double-to-int v11, v11

    if-ne v10, v11, :cond_3

    .line 159
    iput v4, v9, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mIndex:I

    .line 160
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v2    # "evValue":F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .restart local v2    # "evValue":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mIconId:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mIndex:I

    return v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->EV:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 171
    const v0, 0x7f0a003f

    return v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 181
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->ZERO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
