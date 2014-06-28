.class public final enum Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;
.super Ljava/lang/Enum;
.source "SomcCallWidgetMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

.field public static final enum CALLING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

.field public static final enum DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

.field public static final enum INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

.field public static final enum INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    const-string v1, "CALLING"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->CALLING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    const-string v1, "INCALL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->CALLING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->$VALUES:[Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->$VALUES:[Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    return-object v0
.end method
