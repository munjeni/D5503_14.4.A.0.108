.class Lcom/android/phone/LargeCallView$9;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initManageConferencePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/android/phone/LargeCallView$9;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 1756
    iget-object v2, p0, Lcom/android/phone/LargeCallView$9;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1757
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1758
    check-cast v1, Landroid/app/Activity;

    .line 1760
    .local v1, "ownerActivity":Landroid/app/Activity;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1762
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1770
    .end local v1    # "ownerActivity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 1766
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1767
    iget-object v2, p0, Lcom/android/phone/LargeCallView$9;->this$0:Lcom/android/phone/LargeCallView;

    const-string v3, "Unexpected. mContext is not activity."

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    goto :goto_0
.end method
