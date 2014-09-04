.class public Lcom/sonymobile/movablepanes/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 50
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 51
    move p0, p1

    .line 55
    :cond_0
    :goto_0
    return p0

    .line 52
    :cond_1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 53
    move p0, p2

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 33
    if-ge p0, p1, :cond_1

    .line 34
    move p0, p1

    .line 38
    :cond_0
    :goto_0
    return p0

    .line 35
    :cond_1
    if-le p0, p2, :cond_0

    .line 36
    move p0, p2

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 70
    .end local p1    # "def":I
    :goto_0
    return p1

    .line 67
    .restart local p1    # "def":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method
