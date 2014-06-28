.class Lcom/android/phone/SomcInCallButtonPanel$InCallButton;
.super Ljava/lang/Object;
.source "SomcInCallButtonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallButtonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InCallButton"
.end annotation


# instance fields
.field private mButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mPressed:Z

.field private mValues:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "values"    # [I

    .prologue
    const/4 v0, 0x0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    .line 680
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    .line 681
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z

    .line 691
    iput-object p2, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    .line 692
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mContext:Landroid/content/Context;

    .line 693
    invoke-virtual {p0, p3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 695
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;-><init>(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 734
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;-><init>(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 744
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;
    .param p1, "x1"    # Z

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setFocused()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setImageNull()V

    return-void
.end method

.method private setFocused()V
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 782
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setIcon()V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 797
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setImageNull()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
    return-void
.end method

.method private setNormal()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon()V

    .line 775
    return-void
.end method

.method private setPressed()V
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method public isButtonEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 836
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    .line 839
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 805
    return-void
.end method

.method public setButtonEnabled(I)V
    .locals 4
    .param p1, "enabledState"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    .line 820
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 821
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 822
    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    aput v1, v2, v3

    .line 826
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 827
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 828
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon()V

    .line 829
    return-void

    .line 820
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 824
    .restart local v0    # "enabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x2

    aput v2, v1, v3

    goto :goto_1
.end method

.method public setButtonValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    .line 748
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    .line 749
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon()V

    .line 751
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setAction(I)V

    .line 752
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 755
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 845
    return-void
.end method

.method public updateButton()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 763
    return-void
.end method
