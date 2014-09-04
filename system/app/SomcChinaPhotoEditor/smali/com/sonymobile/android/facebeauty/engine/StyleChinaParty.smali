.class public Lcom/sonymobile/android/facebeauty/engine/StyleChinaParty;
.super Lcom/sonymobile/android/facebeauty/engine/Style;
.source "StyleChinaParty.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I
    .param p3, "isReal"    # Z

    .prologue
    const/16 v7, 0x19

    const/16 v6, 0xa

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/facebeauty/engine/Style;-><init>(Landroid/content/Context;IZ)V

    .line 15
    const v0, 0x7f04001e

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyeId:I

    .line 16
    const v0, 0x7f040051

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mShadowId:I

    .line 17
    const v0, 0x7f04005c

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mUpperId:I

    .line 18
    const v0, 0x7f040047

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mLowerId:I

    .line 19
    const v0, 0x7f040005

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mBlushId:I

    .line 20
    const v0, 0x7f040024

    iput v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mEyelashId:I

    .line 22
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v3, v0, v4

    .line 23
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v3, v0, v3

    .line 24
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x2

    aput v4, v0, v1

    .line 25
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x3

    const/16 v2, 0x5a

    aput v2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 29
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 30
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/4 v1, 0x7

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 33
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x8

    aput v4, v0, v1

    .line 34
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x9

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 35
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    aput v5, v0, v6

    .line 36
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xb

    aput v5, v0, v1

    .line 39
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xc

    const/16 v2, 0x8b

    aput v2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xd

    aput v5, v0, v1

    .line 42
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xe

    const/16 v2, 0x5f

    aput v2, v0, v1

    .line 43
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xf

    const/16 v2, 0x85

    aput v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x10

    const/16 v2, 0x56

    aput v2, v0, v1

    .line 46
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x11

    const/16 v2, 0x82

    aput v2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x12

    aput v3, v0, v1

    .line 51
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x13

    const/16 v2, 0x78

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x14

    const/16 v2, 0xc8

    aput v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x15

    const v2, 0x548df2

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    .line 59
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x17

    aput v5, v0, v1

    .line 62
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 64
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0xa0

    aput v1, v0, v7

    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1a

    aput v4, v0, v1

    .line 68
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1b

    aput v5, v0, v1

    .line 70
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1c

    aput v4, v0, v1

    .line 72
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1d

    aput v5, v0, v1

    .line 76
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1e

    aput v6, v0, v1

    .line 78
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x1f

    aput v3, v0, v1

    .line 80
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x20

    aput v6, v0, v1

    .line 82
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x21

    aput v7, v0, v1

    .line 84
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x22

    aput v3, v0, v1

    .line 86
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x23

    aput v7, v0, v1

    .line 88
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/Style;->mParams:[I

    const/16 v1, 0x24

    aput v3, v0, v1

    .line 90
    if-eqz p3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/android/facebeauty/engine/StyleChinaParty;->changeParamsForReal()V

    .line 93
    :cond_0
    return-void
.end method
