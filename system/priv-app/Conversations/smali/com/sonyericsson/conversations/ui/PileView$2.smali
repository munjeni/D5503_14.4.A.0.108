.class Lcom/sonyericsson/conversations/ui/PileView$2;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView;->layoutChildrenPreExpansion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/PileView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$2;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$2;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$2;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildren()V

    .line 399
    return-void
.end method
