.class public Lcom/sonymobile/android/facebeauty/engine/StyleAPACSuntan;
.super Lcom/sonymobile/android/facebeauty/engine/Style;
.source "StyleAPACSuntan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I
    .param p3, "isReal"    # Z

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/facebeauty/engine/Style;-><init>(Landroid/content/Context;IZ)V

    .line 15
    const v0, 0x7f04001e

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeId:I

    .line 16
    const v0, 0x7f040052

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mShadowId:I

    .line 17
    const v0, 0x7f04005d

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mUpperId:I

    .line 18
    const v0, 0x7f040048

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mLowerId:I

    .line 19
    const v0, 0x7f040006

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushId:I

    .line 20
    const v0, 0x7f040025

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashId:I

    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v4, v0, v3

    .line 23
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v3, v0, v4

    .line 24
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v3, v0, v6

    .line 25
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x3

    const/16 v2, 0x5a

    aput v2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 29
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x5

    aput v6, v0, v1

    .line 30
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x6

    const v2, 0xa285f

    aput v2, v0, v1

    .line 31
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x7

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 34
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 35
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x9

    aput v6, v0, v1

    .line 36
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v5, v0, v7

    .line 37
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xb

    aput v5, v0, v1

    .line 40
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xc

    aput v4, v0, v1

    .line 41
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xd

    aput v4, v0, v1

    .line 43
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 44
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xf

    aput v4, v0, v1

    .line 46
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x10

    aput v4, v0, v1

    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x11

    aput v4, v0, v1

    .line 50
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x12

    aput v3, v0, v1

    .line 52
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x13

    const/16 v2, 0x50

    aput v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x14

    const/16 v2, 0xc8

    aput v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x15

    const v2, 0x213088

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 60
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x17

    aput v5, v0, v1

    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 65
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x19

    aput v5, v0, v1

    .line 67
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1a

    aput v3, v0, v1

    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1b

    aput v5, v0, v1

    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1c

    aput v3, v0, v1

    .line 73
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1d

    aput v5, v0, v1

    .line 77
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1e

    aput v7, v0, v1

    .line 79
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1f

    aput v3, v0, v1

    .line 81
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x20

    aput v7, v0, v1

    .line 83
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x21

    const/16 v2, 0x19

    aput v2, v0, v1

    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x22

    aput v3, v0, v1

    .line 87
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x23

    const/16 v2, 0x19

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x24

    aput v3, v0, v1

    .line 91
    if-eqz p3, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACSuntan;->changeParamsForReal()V

    .line 94
    :cond_0
    return-void
.end method
