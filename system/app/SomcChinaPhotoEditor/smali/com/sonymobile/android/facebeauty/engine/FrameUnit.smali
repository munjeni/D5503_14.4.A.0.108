.class public Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
.super Ljava/lang/Object;
.source "FrameUnit.java"


# instance fields
.field private mAngle:I

.field private mBuffer:[B

.field private mFaceIndexApply:[I

.field private mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

.field private mSize:Landroid/graphics/Rect;

.field private mStyleApply:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mAngle:I

    return v0
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mBuffer:[B

    return-object v0
.end method

.method public getFaceIndexApply()[I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mFaceIndexApply:[I

    return-object v0
.end method

.method public getFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    return-object v0
.end method

.method public getSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStyleApply()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mStyleApply:I

    return v0
.end method

.method public getTimepStamp()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mTimeStamp:J

    return-wide v0
.end method

.method public setAngle(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mAngle:I

    .line 47
    return-void
.end method

.method public setBuffer([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mBuffer:[B

    .line 79
    return-void
.end method

.method public setFaceIndexApply([I)V
    .locals 0
    .param p1, "faceIndexApply"    # [I

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mFaceIndexApply:[I

    .line 63
    return-void
.end method

.method public setSize(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "size"    # Landroid/graphics/Rect;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mSize:Landroid/graphics/Rect;

    .line 87
    return-void
.end method

.method public setStyleApply(I)V
    .locals 0
    .param p1, "mStyleApply"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mStyleApply:I

    .line 55
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mTimeStamp:J

    .line 71
    return-void
.end method

.method public setmFaceRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V
    .locals 0
    .param p1, "faceRects"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->mFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 39
    return-void
.end method
