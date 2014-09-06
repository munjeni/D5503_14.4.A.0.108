.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;
.super Ljava/lang/Enum;
.source "Microphone.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

.field public static final enum OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

.field public static final enum ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

.field private static final sParameterTextId:I = 0x7f0a0072


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    const-string v1, "ON"

    const v4, 0x7f0a0014

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    .line 23
    new-instance v6, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    const-string v7, "OFF"

    const v10, 0x7f0a0015

    move v8, v5

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->mIconId:I

    .line 50
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->mTextId:I

    .line 51
    iput-boolean p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->mBooleanValue:Z

    .line 52
    return-void
.end method

.method public static getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    return-object v0
.end method


# virtual methods
.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->mBooleanValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->mIconId:I

    return v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->MICROPHONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f0a0072

    return v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 114
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
