.class public final enum Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;
.super Ljava/lang/Enum;
.source "VernissageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MovementSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

.field public static final enum ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

.field public static final enum TOUCH:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    const-string v1, "TOUCH"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->TOUCH:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    const-string v1, "ANIMATE_TO_POSITION"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    sget-object v1, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->TOUCH:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->$VALUES:[Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->$VALUES:[Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    return-object v0
.end method
