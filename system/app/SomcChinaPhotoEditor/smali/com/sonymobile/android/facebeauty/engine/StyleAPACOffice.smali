.class public Lcom/sonymobile/android/facebeauty/engine/StyleAPACOffice;
.super Lcom/sonymobile/android/facebeauty/engine/Style;
.source "StyleAPACOffice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I
    .param p3, "isReal"    # Z

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xa

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/facebeauty/engine/Style;-><init>(Landroid/content/Context;IZ)V

    .line 17
    const v0, 0x7f04001e

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeId:I

    .line 18
    const v0, 0x7f040050

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mShadowId:I

    .line 19
    const v0, 0x7f04005b

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mUpperId:I

    .line 20
    const v0, 0x7f040046

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mLowerId:I

    .line 21
    const v0, 0x7f040004

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushId:I

    .line 22
    const v0, 0x7f040023

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashId:I

    .line 24
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v3, v0, v4

    .line 25
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v3, v0, v3

    .line 26
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v4, v0, v7

    .line 27
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x3

    const/16 v2, 0x46

    aput v2, v0, v1

    .line 30
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 31
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 32
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x7

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 35
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x8

    aput v4, v0, v1

    .line 36
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x9

    aput v7, v0, v1

    .line 37
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v5, v0, v6

    .line 38
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xb

    aput v5, v0, v1

    .line 41
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xc

    const/16 v2, 0x69

    aput v2, v0, v1

    .line 42
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xd

    const/16 v2, 0x53

    aput v2, v0, v1

    .line 44
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xe

    aput v5, v0, v1

    .line 45
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xf

    const/16 v2, 0x96

    aput v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x10

    const/16 v2, 0xb9

    aput v2, v0, v1

    .line 48
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x11

    const/16 v2, 0xb9

    aput v2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x12

    aput v3, v0, v1

    .line 53
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x13

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x14

    const/16 v2, 0xc8

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x15

    const/16 v2, 0x36ff

    aput v2, v0, v1

    .line 59
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x17

    aput v5, v0, v1

    .line 64
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x19

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1a

    aput v4, v0, v1

    .line 70
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1b

    aput v5, v0, v1

    .line 72
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1c

    aput v4, v0, v1

    .line 74
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1d

    aput v5, v0, v1

    .line 78
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1e

    aput v6, v0, v1

    .line 80
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1f

    aput v3, v0, v1

    .line 82
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x20

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x21

    aput v6, v0, v1

    .line 86
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x22

    aput v4, v0, v1

    .line 88
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x23

    aput v6, v0, v1

    .line 90
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x24

    aput v3, v0, v1

    .line 92
    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/android/facebeauty/engine/StyleAPACOffice;->changeParamsForReal()V

    .line 95
    :cond_0
    return-void
.end method
