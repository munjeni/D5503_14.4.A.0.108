.class Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;
.super Ljava/lang/Object;
.source "AutoReviewWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->show()V

    .line 363
    :cond_0
    return-void
.end method
