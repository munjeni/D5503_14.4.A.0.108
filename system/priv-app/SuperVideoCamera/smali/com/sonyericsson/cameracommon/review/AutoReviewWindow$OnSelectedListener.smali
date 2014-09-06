.class Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;
.super Ljava/lang/Object;
.source "AutoReviewWindow.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V
    .locals 1
    .param p1, "button"    # Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->cancelDialog()V

    .line 373
    return-void
.end method

.method public onSelected(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .locals 1
    .param p1, "button"    # Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    .param p2, "dialog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    # getter for: Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->access$300(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;->this$0:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setCurrentDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    .line 381
    return-void
.end method
