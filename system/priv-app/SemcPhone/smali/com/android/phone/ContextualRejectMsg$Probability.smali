.class public final enum Lcom/android/phone/ContextualRejectMsg$Probability;
.super Ljava/lang/Enum;
.source "ContextualRejectMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContextualRejectMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Probability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/ContextualRejectMsg$Probability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/ContextualRejectMsg$Probability;

.field public static final enum CERTAIN:Lcom/android/phone/ContextualRejectMsg$Probability;

.field public static final enum HIGH:Lcom/android/phone/ContextualRejectMsg$Probability;

.field public static final enum LOW:Lcom/android/phone/ContextualRejectMsg$Probability;

.field public static final enum MEDIUM:Lcom/android/phone/ContextualRejectMsg$Probability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/android/phone/ContextualRejectMsg$Probability;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ContextualRejectMsg$Probability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ContextualRejectMsg$Probability;->LOW:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 19
    new-instance v0, Lcom/android/phone/ContextualRejectMsg$Probability;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/ContextualRejectMsg$Probability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ContextualRejectMsg$Probability;->MEDIUM:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 20
    new-instance v0, Lcom/android/phone/ContextualRejectMsg$Probability;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/ContextualRejectMsg$Probability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ContextualRejectMsg$Probability;->HIGH:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 21
    new-instance v0, Lcom/android/phone/ContextualRejectMsg$Probability;

    const-string v1, "CERTAIN"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/ContextualRejectMsg$Probability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ContextualRejectMsg$Probability;->CERTAIN:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/ContextualRejectMsg$Probability;

    sget-object v1, Lcom/android/phone/ContextualRejectMsg$Probability;->LOW:Lcom/android/phone/ContextualRejectMsg$Probability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/ContextualRejectMsg$Probability;->MEDIUM:Lcom/android/phone/ContextualRejectMsg$Probability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/ContextualRejectMsg$Probability;->HIGH:Lcom/android/phone/ContextualRejectMsg$Probability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/ContextualRejectMsg$Probability;->CERTAIN:Lcom/android/phone/ContextualRejectMsg$Probability;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/ContextualRejectMsg$Probability;->$VALUES:[Lcom/android/phone/ContextualRejectMsg$Probability;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/ContextualRejectMsg$Probability;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/phone/ContextualRejectMsg$Probability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContextualRejectMsg$Probability;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/ContextualRejectMsg$Probability;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/phone/ContextualRejectMsg$Probability;->$VALUES:[Lcom/android/phone/ContextualRejectMsg$Probability;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/ContextualRejectMsg$Probability;

    return-object v0
.end method
