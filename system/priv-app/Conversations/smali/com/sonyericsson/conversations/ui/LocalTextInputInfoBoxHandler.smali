.class public Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;
.super Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
.source "LocalTextInputInfoBoxHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalTextInputInfoBoxHandler"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mContainer:Landroid/view/View;

.field private final mPrimaryInfoView:Landroid/widget/TextView;

.field private final mSecondaryInfoView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p3, "textInput"    # Landroid/widget/TextView;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "primaryInfoView"    # Landroid/widget/TextView;
    .param p6, "secondaryInfoView"    # Landroid/widget/TextView;
    .param p7, "infoViewsContainer"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mPrimaryInfoView:Landroid/widget/TextView;

    .line 45
    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mSecondaryInfoView:Landroid/widget/TextView;

    .line 46
    iput-object p7, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mContainer:Landroid/view/View;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mPrimaryInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mSecondaryInfoView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected forceRefreshInfoBoxes()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected updateTextInputInfoBoxes(Z)V
    .locals 2
    .param p1, "initialUpdate"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;-><init>(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
