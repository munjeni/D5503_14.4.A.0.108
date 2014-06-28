.class Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$2;
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$2;->this$1:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;

    iput-object p2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$2;->this$1:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    return-void
.end method
