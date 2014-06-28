.class public Lcom/sonyericsson/conversations/model/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# instance fields
.field public final mHeight:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/sonyericsson/conversations/model/Dimension;->mWidth:I

    .line 14
    iput p2, p0, Lcom/sonyericsson/conversations/model/Dimension;->mHeight:I

    .line 15
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/sonyericsson/conversations/model/Dimension;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/sonyericsson/conversations/model/Dimension;->mWidth:I

    return v0
.end method
