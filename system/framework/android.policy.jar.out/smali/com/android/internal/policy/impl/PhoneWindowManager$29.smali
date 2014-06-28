.class Lcom/android/internal/policy/impl/PhoneWindowManager$29;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 5831
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5833
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 5834
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$29$1;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$29$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$29;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5857
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v2, 0x1040424

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 5858
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 5859
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5860
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 5862
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x102

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 5865
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 5866
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5867
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5868
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5869
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5870
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5872
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5873
    return-void
.end method
