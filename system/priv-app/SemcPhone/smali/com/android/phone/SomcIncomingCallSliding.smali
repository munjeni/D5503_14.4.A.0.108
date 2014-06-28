.class public Lcom/android/phone/SomcIncomingCallSliding;
.super Lcom/android/phone/SomcIncomingCallView;
.source "SomcIncomingCallSliding.java"


# instance fields
.field private mSlidingTab:Lcom/android/phone/SomcSlidingTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/phone/SomcIncomingCallView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcIncomingCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcIncomingCallSliding;)Lcom/android/phone/SomcSlidingTab;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcIncomingCallSliding;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 31
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSlidingTab;

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    .line 32
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    new-instance v1, Lcom/android/phone/SomcIncomingCallSliding$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcIncomingCallSliding$1;-><init>(Lcom/android/phone/SomcIncomingCallSliding;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingTab;->setOnTriggerListener(Lcom/android/phone/SomcSlidingTab$OnTriggerListener;)V

    .line 63
    return-void
.end method

.method public setSingleCallSliderMarginBottom()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingTab;->setSingleCallSliderMarginBottom()V

    .line 74
    return-void
.end method

.method public setTwoCallSliderMarginBottom()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingTab;->setTwoCallSliderMarginBottom()V

    .line 79
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcSlidingTab;->setVisibility(I)V

    .line 69
    return-void
.end method
