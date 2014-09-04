.class public Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;
.super Landroid/app/Dialog;
.source "EasyClickDialog.java"


# instance fields
.field private mEasyClickRun:Ljava/lang/Runnable;

.field private mExcept:Landroid/view/View;

.field private mGroup:[Landroid/view/View;

.field private mOwner:Landroid/view/View;

.field private mWhichToClick:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "owner"    # Landroid/view/View;
    .param p3, "group"    # [Landroid/view/View;
    .param p4, "except"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mWhichToClick:I

    .line 76
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mEasyClickRun:Ljava/lang/Runnable;

    .line 22
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mOwner:Landroid/view/View;

    .line 23
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    .line 24
    iput-object p4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mExcept:Landroid/view/View;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    .prologue
    .line 15
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mWhichToClick:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    return-object v0
.end method

.method private shouldCloseOnTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 29
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 30
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 32
    .local v3, "y":I
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "decorView":Landroid/view/View;
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-gt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 40
    .local v6, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v4, v9

    .line 41
    .local v4, "ptY":I
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mOwner:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-le v4, v9, :cond_3

    .line 42
    if-nez v6, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->shouldCloseOnTouch(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->cancel()V

    .line 45
    const/4 v6, 0x1

    .line 48
    :cond_0
    if-eqz v6, :cond_3

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    if-eqz v9, :cond_3

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 50
    .local v2, "offsetX":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 51
    .local v3, "offsetY":I
    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 52
    :cond_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 53
    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 54
    .local v5, "rect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    int-to-float v10, v2

    add-float v7, v9, v10

    .line 55
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    int-to-float v10, v3

    add-float v8, v9, v10

    .line 56
    .local v8, "y":F
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 58
    .local v1, "location":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    array-length v9, v9

    if-ge v0, v9, :cond_3

    .line 59
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    aget-object v9, v9, v0

    invoke-virtual {v9, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 60
    const/4 v9, 0x0

    aget v9, v1, v9

    int-to-float v9, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    aget v11, v1, v11

    iget-object v12, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    aget-object v12, v12, v0

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    iget-object v13, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    aget-object v13, v13, v0

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    invoke-virtual {v5, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mExcept:Landroid/view/View;

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mExcept:Landroid/view/View;

    if-eq v9, v10, :cond_4

    .line 65
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mWhichToClick:I

    .line 66
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mOwner:Landroid/view/View;

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mEasyClickRun:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    .end local v0    # "i":I
    .end local v1    # "location":[I
    .end local v2    # "offsetX":I
    .end local v3    # "offsetY":I
    .end local v5    # "rect":Landroid/graphics/RectF;
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    return v6

    .line 58
    .restart local v0    # "i":I
    .restart local v1    # "location":[I
    .restart local v2    # "offsetX":I
    .restart local v3    # "offsetY":I
    .restart local v5    # "rect":Landroid/graphics/RectF;
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
