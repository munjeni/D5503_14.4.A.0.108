.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;
.super Ljava/lang/Enum;
.source "SavePhotos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

.field public static final enum ALL:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

.field public static final enum ONLY_ONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

.field private static final SHARED_PREFS_KEY:Ljava/lang/String; = "SAVE_PHOTOS"

.field private static final sParameterTextId:I = 0x7f0a0240


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    const-string v1, "ONLY_ONE"

    const v4, 0x7f0a0241

    const-string v5, "ONLY_ONE"

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->ONLY_ONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    .line 26
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    const-string v5, "ALL"

    const v8, 0x7f0a0242

    const-string v9, "ALL"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->ALL:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->ONLY_ONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->ALL:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->mIconId:I

    .line 48
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->mTextId:I

    .line 49
    iput-object p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->mValue:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->ALL:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPrefsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "SAVE_PHOTOS"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0a0240

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SavePhotos;->mValue:Ljava/lang/String;

    return-object v0
.end method
