.class public Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapPosition(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "wrap"    # I

    .prologue
    .line 27
    if-gez p0, :cond_0

    .line 28
    rem-int v0, p0, p1

    add-int/2addr v0, p1

    .line 30
    :goto_0
    return v0

    :cond_0
    rem-int v0, p0, p1

    goto :goto_0
.end method
