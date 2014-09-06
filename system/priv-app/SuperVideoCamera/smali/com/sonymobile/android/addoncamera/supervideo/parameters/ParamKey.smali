.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
.super Ljava/lang/Enum;
.source "ParamKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum EV:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum FOCUS_MODE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum MICROPHONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum PHOTO_LIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum STEADY_SHOT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum VIDEO_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum VIDEO_SIZE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

.field public static final enum WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;


# instance fields
.field private final mIsUsedForSharedPrefs:Z

.field private final mTitleTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "PHOTO_LIGHT"

    const v2, 0x7f0a023e

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->PHOTO_LIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 25
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "EV"

    const v2, 0x7f0a010f

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->EV:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 28
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "WHITE_BALANCE"

    const v2, 0x7f0a0111

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 31
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "VIDEO_SIZE"

    const v2, 0x7f0a0166

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_SIZE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 34
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "FOCUS_MODE"

    const v2, 0x7f0a010e

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->FOCUS_MODE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 37
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "VIDEO_AUTO_REVIEW"

    const/4 v2, 0x5

    const v3, 0x7f0a021c

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 40
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "STEADY_SHOT"

    const/4 v2, 0x6

    const v3, 0x7f0a01b8

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->STEADY_SHOT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 43
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    const-string v1, "MICROPHONE"

    const/4 v2, 0x7

    const v3, 0x7f0a011a

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->MICROPHONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->PHOTO_LIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->EV:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_SIZE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->FOCUS_MODE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->STEADY_SHOT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->MICROPHONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p3, "isUsedForSP"    # Z
    .param p4, "titleTextId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-boolean p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->mIsUsedForSharedPrefs:Z

    .line 54
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->mTitleTextId:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method


# virtual methods
.method public getTitleTextId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->mTitleTextId:I

    return v0
.end method

.method public isUsedForSharedPrefs()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->mIsUsedForSharedPrefs:Z

    return v0
.end method
