.class public Lcom/sony/smallapp/internal/util/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWindowTypeIfNeeded(Landroid/view/Window;Landroid/content/Context;)V
    .locals 1
    .param p0, "w"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    instance-of v0, p1, Lcom/sony/smallapp/AbstractSmallApplication;

    if-eqz v0, :cond_0

    .line 20
    const/16 v0, 0xbb5

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 22
    :cond_0
    return-void
.end method
