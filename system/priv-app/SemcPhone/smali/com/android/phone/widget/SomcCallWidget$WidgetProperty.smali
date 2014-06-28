.class public final enum Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
.super Ljava/lang/Enum;
.source "SomcCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum iconDisabled:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum iconPressed:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum prio:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum status:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum visible:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum visibleDuringCall:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum visibleOnIncomingCall:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

.field public static final enum visibleWhenCalling:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "prio"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->prio:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "iconPressed"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->iconPressed:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "iconDisabled"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->iconDisabled:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "visible"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visible:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "status"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->status:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "visibleWhenCalling"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visibleWhenCalling:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    .line 55
    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "visibleOnIncomingCall"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visibleOnIncomingCall:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    const-string v1, "visibleDuringCall"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visibleDuringCall:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->prio:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->iconPressed:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->iconDisabled:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visible:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->status:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visibleWhenCalling:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visibleOnIncomingCall:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->visibleDuringCall:Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->$VALUES:[Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->$VALUES:[Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    return-object v0
.end method
