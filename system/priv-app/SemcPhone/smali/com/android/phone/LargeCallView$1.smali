.class Lcom/android/phone/LargeCallView$1;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LargeCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/phone/LargeCallView$1;->this$0:Lcom/android/phone/LargeCallView;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/LargeCallView;->requestLargeHeaderAnimation(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/LargeCallView;->access$100(Lcom/android/phone/LargeCallView;Z)V

    .line 263
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 257
    return-void
.end method
