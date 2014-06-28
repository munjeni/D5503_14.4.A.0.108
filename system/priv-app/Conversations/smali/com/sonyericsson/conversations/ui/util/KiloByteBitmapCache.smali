.class public Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;
.super Landroid/util/LruCache;
.source "KiloByteBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LruCache",
        "<TK;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final KILOBYTE:I = 0x400


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 19
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;, "Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache<TK;>;"
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 20
    return-void
.end method

.method public static create(I)Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;
    .locals 5
    .param p0, "memoryFraction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache",
            "<TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 40
    if-gtz p0, :cond_0

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative memory fractions are not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 46
    .local v0, "maxMemory":I
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    div-int v2, v0, p0

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroid/graphics/Bitmap;",
            ")I"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;, "Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;, "Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache<TK;>;"
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;->sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
