.class public Lcom/sonyericsson/conversations/ui/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static upperToast(Landroid/widget/Toast;)V
    .locals 3
    .param p0, "t"    # Landroid/widget/Toast;

    .prologue
    .line 21
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v1, 0x4

    .line 22
    .local v0, "heightOffset":I
    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 23
    return-void
.end method
