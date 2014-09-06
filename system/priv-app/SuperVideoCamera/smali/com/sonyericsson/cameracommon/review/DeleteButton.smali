.class public Lcom/sonyericsson/cameracommon/review/DeleteButton;
.super Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
.source "DeleteButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContentResolverUtilListener()Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;->executeDeteleTask(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;)V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->backToViewFinder()V

    .line 49
    return-void
.end method

.method public select()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const/4 v1, -0x1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_file_delete_confirm_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_file_delete_confirm_title_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    move-object v6, p0

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    return-object v0
.end method
