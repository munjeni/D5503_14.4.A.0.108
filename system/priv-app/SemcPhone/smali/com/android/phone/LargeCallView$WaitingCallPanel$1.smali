.class Lcom/android/phone/LargeCallView$WaitingCallPanel$1;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView$WaitingCallPanel;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/LargeCallView$WaitingCallPanel;

.field final synthetic val$viewAndAction:[I


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView$WaitingCallPanel;[I)V
    .locals 0

    .prologue
    .line 2237
    iput-object p1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;->this$1:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iput-object p2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;->val$viewAndAction:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;->this$1:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-object v0, v0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    iget-object v1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;->val$viewAndAction:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 2240
    return-void
.end method
