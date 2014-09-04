.class public Lcom/sonymobile/china/collage/utils/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeltaAngle:D

.field private mFirstPointerID:I

.field private mFirstPointerPrevX:F

.field private mFirstPointerPrevY:F

.field private mInProgress:Z

.field private final mListener:Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;

.field private mSecondPointerID:I

.field private mSecondPointerPrevX:F

.field private mSecondPointerPrevY:F

.field private mfirstTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 1
    .param p1, "onRotationListener"    # Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;

    .prologue
    const/4 v0, -0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    .line 51
    iput v0, p0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    .line 71
    iput-object p1, p0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mListener:Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;

    .line 72
    return-void
.end method


# virtual methods
.method public getDeltaAngle()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mDeltaAngle:D

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 84
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 85
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mInProgress:Z

    .line 88
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 189
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    .line 98
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mfirstTime:Z

    goto :goto_0

    .line 99
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    .line 104
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mfirstTime:Z

    goto :goto_0

    .line 112
    :pswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    .line 117
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mfirstTime:Z

    goto :goto_0

    .line 118
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    .line 123
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mfirstTime:Z

    goto :goto_0

    .line 131
    :pswitch_3
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    .line 132
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    goto :goto_0

    .line 138
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    if-ne v12, v13, :cond_4

    .line 139
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    goto/16 :goto_0

    .line 140
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    if-ne v12, v13, :cond_1

    .line 141
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    goto/16 :goto_0

    .line 145
    :pswitch_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 148
    .local v4, "firstPointerIndex":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 149
    .local v11, "secondPointerIndex":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_5

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 151
    :cond_5
    const-string v12, "fj2"

    const-string v13, "firstPointerIndex or secondPointerIndex is MotionEvent.INVALID_POINTER_ID"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 155
    .local v5, "newFirstPointerX":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 156
    .local v6, "newFirstPointerY":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 157
    .local v7, "newSecondPointerX":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 159
    .local v8, "newSecondPointerY":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mfirstTime:Z

    if-eqz v12, :cond_7

    .line 163
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mfirstTime:Z

    .line 178
    :goto_1
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerPrevX:F

    .line 179
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerPrevY:F

    .line 180
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerPrevX:F

    .line 181
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerPrevY:F

    goto/16 :goto_0

    .line 165
    :cond_7
    sub-float v12, v8, v6

    float-to-double v12, v12

    sub-float v14, v7, v5

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 167
    .local v2, "currLineAngle":D
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerPrevY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerPrevY:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mSecondPointerPrevX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mFirstPointerPrevX:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    .line 169
    .local v9, "prevLineAngle":D
    sub-double v12, v2, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mDeltaAngle:D

    .line 170
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mInProgress:Z

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->mListener:Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;->onRotate(Lcom/sonymobile/china/collage/utils/RotationGestureDetector;)V

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
