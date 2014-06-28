.class public final enum Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
.super Ljava/lang/Enum;
.source "SomcCallWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

.field public static final enum WIDGET_TYPE_BACKGROUND:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

.field public static final enum WIDGET_TYPE_DIALOG:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

.field public static final enum WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    const-string v1, "WIDGET_TYPE_BACKGROUND"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    const-string v1, "WIDGET_TYPE_MAIN"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    const-string v1, "WIDGET_TYPE_DIALOG"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->$VALUES:[Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->id:I

    .line 45
    return-void
.end method

.method public static valueOf(I)Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 52
    invoke-static {}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->values()[Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 53
    .local v3, "type":Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    invoke-virtual {v3}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 57
    .end local v3    # "type":Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    :goto_1
    return-object v3

    .line 52
    .restart local v3    # "type":Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v3    # "type":Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->$VALUES:[Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->id:I

    return v0
.end method
