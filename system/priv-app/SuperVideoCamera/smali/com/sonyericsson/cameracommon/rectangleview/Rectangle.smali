.class public Lcom/sonyericsson/cameracommon/rectangleview/Rectangle;
.super Landroid/widget/RelativeLayout;
.source "Rectangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;
    }
.end annotation


# instance fields
.field private mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public final changeRectangleColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 85
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 75
    :goto_0
    monitor-exit p0

    return v0

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;->onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;->onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setOnRectTouchedListener(Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rectangleview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/rectangleview/Rectangle$OnRectTouchedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
