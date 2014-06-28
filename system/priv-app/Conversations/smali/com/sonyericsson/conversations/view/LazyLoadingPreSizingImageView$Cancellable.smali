.class abstract Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;
.super Ljava/lang/Object;
.source "LazyLoadingPreSizingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cancellable"
.end annotation


# instance fields
.field private mCancelled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;->mCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;->mCancelled:Z

    .line 336
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;->mCancelled:Z

    return v0
.end method
