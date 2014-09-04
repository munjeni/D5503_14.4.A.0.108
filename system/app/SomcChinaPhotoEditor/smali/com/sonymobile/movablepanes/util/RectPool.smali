.class public Lcom/sonymobile/movablepanes/util/RectPool;
.super Ljava/lang/Object;
.source "RectPool.java"


# static fields
.field private static mRectPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sonymobile/movablepanes/util/RectPool;->mRectPool:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/movablepanes/util/RectPool;->mRectPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonymobile/movablepanes/util/RectPool;->mRectPool:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonymobile/movablepanes/util/RectPool;->mRectPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public static recycleRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 34
    sget-object v0, Lcom/sonymobile/movablepanes/util/RectPool;->mRectPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method
