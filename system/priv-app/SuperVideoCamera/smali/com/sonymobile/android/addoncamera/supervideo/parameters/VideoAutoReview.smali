.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;
.super Ljava/lang/Enum;
.source "VideoAutoReview.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

.field public static final enum EDIT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

.field public static final enum OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

.field public static final enum ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

.field private static final sParameterTextId:I = 0x7f0a021b


# instance fields
.field private final mDuration:I

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 19
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    const-string v1, "ON"

    const v4, 0x7f0a0014

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    .line 23
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    const-string v5, "EDIT"

    const v8, 0x7f0a023d

    move v7, v3

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    .line 27
    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    const-string v8, "OFF"

    const v11, 0x7f0a0015

    move v9, v13

    move v10, v3

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->mIconId:I

    .line 53
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->mTextId:I

    .line 54
    iput p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->mDuration:I

    .line 55
    return-void
.end method

.method public static getOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;
    .locals 1
    .param p0, "mode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .prologue
    .line 93
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    return-object v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->mDuration:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->mIconId:I

    return v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0a021b

    return v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 115
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
