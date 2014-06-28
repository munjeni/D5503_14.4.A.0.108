.class Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;
.super Ljava/lang/Object;
.source "SmileyParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/SmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LengthComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/util/SmileyParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/util/SmileyParser$1;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 65
    .local v0, "firstLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 66
    .local v1, "secondLength":I
    sub-int v2, v1, v0

    return v2
.end method
