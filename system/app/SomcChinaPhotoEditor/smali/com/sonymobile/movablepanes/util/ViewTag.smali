.class public Lcom/sonymobile/movablepanes/util/ViewTag;
.super Ljava/lang/Object;
.source "ViewTag.java"


# static fields
.field private static TAG_COUNTER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const v0, -0x515600

    sput v0, Lcom/sonymobile/movablepanes/util/ViewTag;->TAG_COUNTER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNextTag()I
    .locals 2

    .prologue
    .line 33
    sget v0, Lcom/sonymobile/movablepanes/util/ViewTag;->TAG_COUNTER:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sonymobile/movablepanes/util/ViewTag;->TAG_COUNTER:I

    return v0
.end method
