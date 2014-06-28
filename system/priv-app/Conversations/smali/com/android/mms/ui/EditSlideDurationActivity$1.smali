.class Lcom/android/mms/ui/EditSlideDurationActivity$1;
.super Ljava/lang/Object;
.source "EditSlideDurationActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditSlideDurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditSlideDurationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/EditSlideDurationActivity$1;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return v1

    .line 128
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity$1;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->editDone()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method
