.class Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$4;
.super Ljava/lang/Object;
.source "MessageTimestampHeaderView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->initStarAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAnimationShowing:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->access$002(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;Z)Z

    .line 357
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 360
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 363
    return-void
.end method
