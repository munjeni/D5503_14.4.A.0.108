.class public Lcom/sonymobile/movablepanes/transfer/TransferView;
.super Landroid/widget/RelativeLayout;
.source "TransferView.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/transfer/TransferHandler;
.implements Lcom/sonymobile/movablepanes/transfer/TransferTarget$DropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;,
        Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z

.field public static final TRANSFER_TARGET_TAG:I


# instance fields
.field private mData:Ljava/lang/Object;

.field private mDeleteRect:Landroid/graphics/Rect;

.field private mDeleteRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

.field private mDeleteView:Landroid/view/View;

.field private mFocusHandler:Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;

.field private mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

.field private mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

.field private mResetFocusability:Z

.field private mTargetRect:Landroid/graphics/Rect;

.field private mTouchX:I

.field private mTouchXOffset:I

.field private mTouchY:I

.field private mTouchYOffset:I

.field private mTouchingView:Z

.field private mTransferListener:Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;

.field private mTransferSource:Lcom/sonymobile/movablepanes/transfer/TransferSource;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/sonymobile/movablepanes/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->setDescendantFocusability(I)V

    .line 166
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    .line 167
    return-void
.end method

.method private doHinting(II)Lcom/sonymobile/movablepanes/transfer/TransferTarget;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 245
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 246
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v2, v0}, Lcom/sonymobile/movablepanes/animation/Renderer;->getCurrentRect(Landroid/graphics/Rect;)V

    .line 247
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/movablepanes/transfer/TransferView;->updateViewPosition(II)V

    .line 248
    invoke-static {v0}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 250
    invoke-direct {p0, p0, p1, p2}, Lcom/sonymobile/movablepanes/transfer/TransferView;->hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    move-result-object v1

    .line 251
    .local v1, "target":Lcom/sonymobile/movablepanes/transfer/TransferTarget;
    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    if-eq v1, v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonymobile/movablepanes/transfer/TransferTarget;->cancelHint(Lcom/sonymobile/movablepanes/animation/Renderer;)V

    .line 254
    :cond_0
    iput-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    .line 256
    return-object v1
.end method

.method private hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonymobile/movablepanes/transfer/TransferTarget;
    .locals 16
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 284
    const/4 v12, 0x0

    .line 285
    .local v12, "target":Lcom/sonymobile/movablepanes/transfer/TransferTarget;
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 286
    .local v13, "targetHitRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 287
    .local v8, "hintHitRect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_3

    if-nez v12, :cond_3

    .line 288
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 289
    .local v7, "child":Landroid/view/View;
    sget v1, Lcom/sonymobile/movablepanes/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v7, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    .line 294
    .local v10, "tag":Ljava/lang/Object;
    invoke-virtual {v7, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 296
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v13, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 299
    .local v14, "xOffset":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v15

    .line 300
    .local v15, "yOffset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    neg-int v2, v14

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    neg-int v2, v15

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 302
    if-eqz v10, :cond_2

    instance-of v1, v10, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 303
    check-cast v10, Ljava/lang/ref/WeakReference;

    .end local v10    # "tag":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    .line 304
    .local v11, "tagObj":Ljava/lang/Object;
    if-eqz v11, :cond_0

    instance-of v1, v11, Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    if-eqz v1, :cond_0

    move-object v1, v11

    check-cast v1, Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    sub-int v4, p2, v14

    sub-int v5, p3, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface/range {v1 .. v6}, Lcom/sonymobile/movablepanes/transfer/TransferTarget;->hint(Ljava/lang/Object;Landroid/view/View;IILcom/sonymobile/movablepanes/animation/Renderer;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v12, v11

    .line 308
    check-cast v12, Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    .line 313
    .end local v7    # "child":Landroid/view/View;
    .end local v11    # "tagObj":Ljava/lang/Object;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 287
    .end local v14    # "xOffset":I
    .end local v15    # "yOffset":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 310
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "tag":Ljava/lang/Object;
    .restart local v14    # "xOffset":I
    .restart local v15    # "yOffset":I
    :cond_2
    instance-of v1, v7, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 311
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7    # "child":Landroid/view/View;
    sub-int v1, p2, v14

    sub-int v2, p3, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/sonymobile/movablepanes/transfer/TransferView;->hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    move-result-object v12

    goto :goto_1

    .line 317
    .end local v10    # "tag":Ljava/lang/Object;
    .end local v14    # "xOffset":I
    .end local v15    # "yOffset":I
    :cond_3
    invoke-static {v8}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 318
    const/4 v8, 0x0

    .line 319
    invoke-static {v13}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 320
    const/4 v13, 0x0

    .line 322
    return-object v12
.end method

.method private offsetView(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceView"    # Landroid/view/View;

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "xOffset":I
    const/4 v2, 0x0

    .line 394
    .local v2, "yOffset":I
    :goto_0
    if-eqz p2, :cond_1

    if-eq p2, p0, :cond_1

    .line 395
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    .line 396
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 397
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 398
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object p2, v0

    .line 399
    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    .line 401
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 404
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 405
    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 406
    return-void
.end method

.method private updateViewPosition(II)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 266
    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 267
    .local v0, "currentLeft":I
    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 268
    .local v1, "currentTop":I
    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 269
    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    sub-int v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 270
    return-void
.end method


# virtual methods
.method public cancelTransfer()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v0, v1}, Lcom/sonymobile/movablepanes/transfer/TransferTarget;->cancelHint(Lcom/sonymobile/movablepanes/animation/Renderer;)V

    .line 469
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->dropFinished(Z)V

    .line 471
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 345
    const-wide/16 v7, 0x0

    .line 350
    .local v7, "startTime":J
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 352
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    const/4 v6, 0x1

    .line 354
    .local v6, "newFrame":Z
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 360
    :goto_0
    if-eqz v6, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->invalidate()V

    .line 364
    .end local v6    # "newFrame":Z
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 367
    .restart local v6    # "newFrame":Z
    if-eqz v6, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->invalidate()V

    .line 381
    .end local v6    # "newFrame":Z
    :cond_1
    :goto_1
    return-void

    .line 358
    .restart local v6    # "newFrame":Z
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    goto :goto_0

    .line 370
    :cond_3
    iput-object v9, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 371
    iput-object v9, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    .line 372
    iput-object v9, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteView:Landroid/view/View;

    .line 373
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->invalidate()V

    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mFocusHandler:Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mFocusHandler:Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;->onUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dropFinished(Z)V
    .locals 7
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 475
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    const-string v1, "COMMAND_DROP"

    invoke-interface {v0, v1, v2, v2, v6}, Lcom/sonymobile/movablepanes/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 477
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferSource:Lcom/sonymobile/movablepanes/transfer/TransferSource;

    if-eqz v0, :cond_0

    .line 478
    if-eqz p1, :cond_2

    .line 479
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferSource:Lcom/sonymobile/movablepanes/transfer/TransferSource;

    invoke-interface {v0}, Lcom/sonymobile/movablepanes/transfer/TransferSource;->onTransferCompleted()V

    .line 492
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferListener:Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferListener:Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;->onTransferEnd(Z)V

    .line 496
    :cond_1
    iput-object v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferSource:Lcom/sonymobile/movablepanes/transfer/TransferSource;

    .line 497
    iput-object v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    .line 498
    iput-object v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    .line 499
    iput-object v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mPreviousHintTarget:Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    .line 500
    return-void

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferSource:Lcom/sonymobile/movablepanes/transfer/TransferSource;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v0, v1, v3, v4}, Lcom/sonymobile/movablepanes/transfer/TransferSource;->onTransferCanceled(Ljava/lang/Object;Landroid/view/View;Lcom/sonymobile/movablepanes/animation/Renderer;)Lcom/sonymobile/movablepanes/animation/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 482
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteView:Landroid/view/View;

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    .line 485
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 486
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 487
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->invalidate()V

    goto :goto_0
.end method

.method public isInTransferMode()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/sonymobile/movablepanes/transfer/TransferView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 332
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchX:I

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchY:I

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mFocusHandler:Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mFocusHandler:Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget-object v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 232
    :goto_0
    return v4

    .line 193
    :cond_0
    iget-boolean v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchingView:Z

    if-nez v6, :cond_1

    move v4, v5

    .line 197
    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 201
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 202
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 204
    .local v3, "y":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 205
    iget-object v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchXOffset:I

    add-int/2addr v7, v8

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchYOffset:I

    add-int/2addr v8, v9

    sub-int v8, v3, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 212
    :cond_2
    if-ne v0, v5, :cond_3

    .line 215
    iget v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchX:I

    iget v7, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchY:I

    invoke-direct {p0, v6, v7}, Lcom/sonymobile/movablepanes/transfer/TransferView;->doHinting(II)Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    move-result-object v1

    .line 217
    .local v1, "target":Lcom/sonymobile/movablepanes/transfer/TransferTarget;
    if-eqz v1, :cond_4

    .line 218
    iget-object v6, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v8, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v1, v6, v7, v8, p0}, Lcom/sonymobile/movablepanes/transfer/TransferTarget;->drop(Ljava/lang/Object;Landroid/view/View;Lcom/sonymobile/movablepanes/animation/Renderer;Lcom/sonymobile/movablepanes/transfer/TransferTarget$DropListener;)V

    .line 224
    :goto_1
    iput-boolean v4, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchingView:Z

    .line 227
    .end local v1    # "target":Lcom/sonymobile/movablepanes/transfer/TransferTarget;
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->invalidate()V

    .line 229
    iput v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchX:I

    .line 230
    iput v3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchY:I

    move v4, v5

    .line 232
    goto :goto_0

    .line 220
    .restart local v1    # "target":Lcom/sonymobile/movablepanes/transfer/TransferTarget;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sonymobile/movablepanes/transfer/TransferView;->dropFinished(Z)V

    goto :goto_1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mResetFocusability:Z

    if-eqz v0, :cond_0

    .line 173
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/transfer/TransferView;->setDescendantFocusability(I)V

    .line 175
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setFocusHandler(Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mFocusHandler:Lcom/sonymobile/movablepanes/transfer/TransferView$FocusHandler;

    .line 509
    return-void
.end method

.method public setResetFocusability(Z)V
    .locals 0
    .param p1, "reset"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mResetFocusability:Z

    .line 186
    return-void
.end method

.method public setTransferListener(Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;)V
    .locals 0
    .param p1, "transferListener"    # Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferListener:Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;

    .line 448
    return-void
.end method

.method public transferView(Lcom/sonymobile/movablepanes/transfer/TransferSource;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;)Lcom/sonymobile/movablepanes/animation/Renderer;
    .locals 7
    .param p1, "source"    # Lcom/sonymobile/movablepanes/transfer/TransferSource;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "sourceView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 411
    iput-object p1, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferSource:Lcom/sonymobile/movablepanes/transfer/TransferSource;

    .line 412
    iput-object p2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    .line 413
    iput-object p3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mView:Landroid/view/View;

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchingView:Z

    .line 416
    invoke-direct {p0, p3, p4}, Lcom/sonymobile/movablepanes/transfer/TransferView;->offsetView(Landroid/view/View;Landroid/view/View;)V

    .line 420
    new-instance v0, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/graphics/mesh/MeshRenderer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 422
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 423
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 424
    iget v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchX:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchXOffset:I

    .line 425
    iget v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchY:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchYOffset:I

    .line 426
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    iget v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchXOffset:I

    iget v3, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchYOffset:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 427
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    invoke-static {v1}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 430
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferListener:Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTransferListener:Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mData:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/sonymobile/movablepanes/transfer/TransferView$TransferListener;->onTransferStart(Ljava/lang/Object;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    const-string v2, "COMMAND_PICKUP"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v6, v6, v3}, Lcom/sonymobile/movablepanes/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 436
    iget v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchX:I

    iget v2, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mTouchY:I

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/movablepanes/transfer/TransferView;->doHinting(II)Lcom/sonymobile/movablepanes/transfer/TransferTarget;

    .line 438
    iget-object v0, p0, Lcom/sonymobile/movablepanes/transfer/TransferView;->mRenderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    return-object v0
.end method
