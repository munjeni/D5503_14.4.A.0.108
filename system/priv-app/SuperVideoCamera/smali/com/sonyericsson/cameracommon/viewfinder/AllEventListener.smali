.class public Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;
.super Landroid/view/View;
.source "AllEventListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AllEventListener"


# instance fields
.field private mBaseActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field mTouchEventConsumed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mTouchEventConsumed:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mTouchEventConsumed:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mTouchEventConsumed:Z

    .line 53
    return-void
.end method


# virtual methods
.method public disableTouchEvent()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mTouchEventConsumed:Z

    .line 121
    return-void
.end method

.method public enableTouchEvent()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mTouchEventConsumed:Z

    .line 113
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mTouchEventConsumed:Z

    return v1

    .line 88
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mBaseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 89
    .local v0, "activity":Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->restartAutoOffTimer()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseActivity()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mBaseActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mBaseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 77
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 2
    .param p1, "baseActivity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BaseActivity can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->mBaseActivity:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method
