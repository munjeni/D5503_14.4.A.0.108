.class Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$1;
.super Ljava/lang/Object;
.source "LazyLoadingPreSizingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$1;->this$1:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$1;->this$1:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setErrorDrawable()V

    .line 270
    return-void
.end method
