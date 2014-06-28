.class Lcom/android/phone/widget/SomcCallWidgetManager$CustomComparator;
.super Ljava/lang/Object;
.source "SomcCallWidgetManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/phone/widget/ISomcCallWidget;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/widget/SomcCallWidgetManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/widget/SomcCallWidgetManager$1;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/phone/widget/SomcCallWidgetManager$CustomComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/phone/widget/ISomcCallWidget;Lcom/android/phone/widget/ISomcCallWidget;)I
    .locals 2
    .param p1, "c1"    # Lcom/android/phone/widget/ISomcCallWidget;
    .param p2, "c2"    # Lcom/android/phone/widget/ISomcCallWidget;

    .prologue
    .line 543
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->getPrio()I

    move-result v0

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getPrio()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 544
    const/4 v0, -0x1

    .line 548
    :goto_0
    return v0

    .line 545
    :cond_0
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->getPrio()I

    move-result v0

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getPrio()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 546
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 541
    check-cast p1, Lcom/android/phone/widget/ISomcCallWidget;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/phone/widget/ISomcCallWidget;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/widget/SomcCallWidgetManager$CustomComparator;->compare(Lcom/android/phone/widget/ISomcCallWidget;Lcom/android/phone/widget/ISomcCallWidget;)I

    move-result v0

    return v0
.end method
