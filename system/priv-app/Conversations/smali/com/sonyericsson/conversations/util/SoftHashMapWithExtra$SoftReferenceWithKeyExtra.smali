.class final Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;
.super Ljava/lang/ref/SoftReference;
.source "SoftHashMapWithExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SoftReferenceWithKeyExtra"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mExtra:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TE;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra<TK;TV;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "extra":Ljava/lang/Object;, "TE;"
    .local p4, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->mKey:Ljava/lang/Object;

    .line 45
    iput-object p3, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->mExtra:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/ref/ReferenceQueue;
    .param p5, "x4"    # Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$1;

    .prologue
    .line 37
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra<TK;TV;TE;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->mExtra:Ljava/lang/Object;

    return-object v0
.end method
