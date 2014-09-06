.class public final enum Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;
.super Ljava/lang/Enum;
.source "FeedbackFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

.field public static final enum BURST_START:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

.field public static final enum BURST_STOP:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

.field public static final enum SINGLE:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->SINGLE:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    .line 20
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    const-string v1, "BURST_START"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->BURST_START:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    .line 21
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    const-string v1, "BURST_STOP"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->BURST_STOP:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->SINGLE:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->BURST_START:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->BURST_STOP:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->$VALUES:[Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;->$VALUES:[Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    return-object v0
.end method
