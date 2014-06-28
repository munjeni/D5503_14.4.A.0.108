.class Lcom/android/phone/LargeCallView$10;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->animateHideIncomingCallView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/phone/LargeCallView$10;->this$0:Lcom/android/phone/LargeCallView;

    iput-object p2, p0, Lcom/android/phone/LargeCallView$10;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/phone/LargeCallView$10;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2137
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2133
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2130
    return-void
.end method
