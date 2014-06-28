.class public Lcom/sonyericsson/conversations/util/SoftHashMap;
.super Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;
.source "SoftHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra",
        "<TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "nrHardRefs"    # I

    .prologue
    .line 18
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMap;, "Lcom/sonyericsson/conversations/util/SoftHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;-><init>(I)V

    .line 19
    return-void
.end method
