.class public final enum Lcom/sonymobile/china/photoeditor/filtershow/Result;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/china/photoeditor/filtershow/Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/china/photoeditor/filtershow/Result;

.field public static final enum ERROR_DECODING:Lcom/sonymobile/china/photoeditor/filtershow/Result;

.field public static final enum ERROR_DRM_PROTECTED:Lcom/sonymobile/china/photoeditor/filtershow/Result;

.field public static final enum OK:Lcom/sonymobile/china/photoeditor/filtershow/Result;

.field public static final enum OK_AND_SUPPORTS_LIGHT_CYCLE_360:Lcom/sonymobile/china/photoeditor/filtershow/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;->OK:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .line 16
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;

    const-string v1, "ERROR_DRM_PROTECTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;->ERROR_DRM_PROTECTED:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .line 18
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;

    const-string v1, "ERROR_DECODING"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/china/photoeditor/filtershow/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;->ERROR_DECODING:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .line 20
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;

    const-string v1, "OK_AND_SUPPORTS_LIGHT_CYCLE_360"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/china/photoeditor/filtershow/Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;->OK_AND_SUPPORTS_LIGHT_CYCLE_360:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/china/photoeditor/filtershow/Result;

    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/Result;->OK:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/Result;->ERROR_DRM_PROTECTED:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/Result;->ERROR_DECODING:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/Result;->OK_AND_SUPPORTS_LIGHT_CYCLE_360:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;->$VALUES:[Lcom/sonymobile/china/photoeditor/filtershow/Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/china/photoeditor/filtershow/Result;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;->$VALUES:[Lcom/sonymobile/china/photoeditor/filtershow/Result;

    invoke-virtual {v0}, [Lcom/sonymobile/china/photoeditor/filtershow/Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/china/photoeditor/filtershow/Result;

    return-object v0
.end method
