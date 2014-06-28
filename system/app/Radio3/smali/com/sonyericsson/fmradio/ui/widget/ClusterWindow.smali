.class public Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;
.super Ljava/lang/Object;
.source "ClusterWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;,
        Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;,
        Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mOnViewSelectedListener:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;

.field private mPressX:I

.field private mPressY:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "rawX"    # I
    .param p4, "rawY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContext:Landroid/content/Context;

    .line 61
    iput p3, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mPressX:I

    .line 62
    iput p4, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mPressY:I

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 66
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mAdapter:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;)Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mOnViewSelectedListener:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;)Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mAdapter:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;

    return-object v0
.end method

.method private clamp(III)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "value"    # I
    .param p3, "max"    # I

    .prologue
    .line 129
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContentView:Landroid/view/ViewGroup;

    .line 138
    return-void
.end method

.method public setOnViewSelectedListener(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mOnViewSelectedListener:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;

    .line 71
    return-void
.end method

.method public show()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 74
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const/high16 v8, 0x7f030000

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    .line 76
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    const v8, 0x7f02004c

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mAdapter:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;

    invoke-direct {v8, p0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;-><init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;)V

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 94
    .local v6, "widthSpec":I
    const/16 v7, 0x2710

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 95
    .local v0, "heightSpec":I
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6, v0}, Landroid/view/View;->measure(II)V

    .line 96
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 99
    .local v1, "listHeight":I
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 102
    .local v3, "listWidth":I
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 105
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v7, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;

    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ContentView;-><init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContentView:Landroid/view/ViewGroup;

    .line 109
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 113
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    const/16 v7, 0x33

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 116
    const/16 v7, 0x32

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mPressX:I

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v9, v3

    add-int/lit8 v9, v9, -0x32

    invoke-direct {p0, v7, v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->clamp(III)I

    move-result v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 117
    const/16 v7, 0x96

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mPressY:I

    sub-int/2addr v8, v1

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v9, v1

    add-int/lit16 v9, v9, -0x96

    invoke-direct {p0, v7, v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->clamp(III)I

    move-result v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    const/16 v7, 0x302

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 121
    const/high16 v7, 0x3f000000

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 122
    const/4 v7, -0x3

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 123
    const v7, 0x1030056

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 125
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-interface {v7, v8, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method
