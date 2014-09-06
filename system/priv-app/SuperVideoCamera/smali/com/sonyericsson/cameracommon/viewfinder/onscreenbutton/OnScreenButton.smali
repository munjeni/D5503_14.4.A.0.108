.class public Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
.super Landroid/widget/ImageView;
.source "OnScreenButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    }
.end annotation


# static fields
.field public static final EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

.field public static final EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsTouched:Z

.field private mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

.field private mOrientation:I

.field private mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->TAG:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .line 201
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v0, v1, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 53
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 54
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .line 55
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 56
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 58
    return-void
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 92
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v1, v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->landscape:I

    .line 94
    .local v1, "res":I
    :goto_0
    if-ne v1, v4, :cond_1

    .line 95
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v2, v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->description:I

    if-eq v2, v4, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v3, v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    .end local v0    # "description":Ljava/lang/String;
    :goto_2
    return-void

    .line 92
    .end local v1    # "res":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v1, v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->portrait:I

    goto :goto_0

    .line 97
    .restart local v1    # "res":I
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 103
    :cond_2
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public clearTouched()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 84
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V

    .line 182
    return-void
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 114
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return v3

    .line 118
    :pswitch_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 119
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 127
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 140
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 141
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 151
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 157
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 158
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V
    .locals 1
    .param p1, "resource"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->update()V

    .line 67
    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    goto :goto_0
.end method

.method public setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    goto :goto_0
.end method

.method public setUiOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->update()V

    .line 80
    return-void
.end method
