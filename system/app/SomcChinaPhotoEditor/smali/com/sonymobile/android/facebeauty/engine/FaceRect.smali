.class public Lcom/sonymobile/android/facebeauty/engine/FaceRect;
.super Ljava/lang/Object;
.source "FaceRect.java"


# instance fields
.field public bottom:I

.field public index:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V
    .locals 1
    .param p1, "rect"    # Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    .line 42
    iget v0, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    .line 43
    iget v0, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    .line 44
    iget v0, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    .line 45
    iget v0, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->index:I

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->index:I

    .line 46
    return-void
.end method


# virtual methods
.method public final height()I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public same(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Z
    .locals 3
    .param p1, "rect"    # Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    iget v2, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    iget v2, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    iget v2, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    iget v2, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    if-ne v1, v2, :cond_0

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 28
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v1, "top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    const-string v1, "right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v1, "bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final width()I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    iget v1, p0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
