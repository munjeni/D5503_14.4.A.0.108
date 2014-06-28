.class Lcom/sonyericsson/conversations/ui/PileView$4$1;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/PileView$4;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView$4;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$4$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$4$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$4;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/PileView$4;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 514
    return-void
.end method
