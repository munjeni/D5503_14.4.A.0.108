.class Lcom/android/phone/LargeCallView$4;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initPopupDialog()V
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
    .line 317
    iput-object p1, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 323
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/CallView;->mBluetoothAudioIsOn:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x11

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 343
    :cond_0
    :goto_1
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    goto :goto_0

    .line 329
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/CallView;->mSpeakerIsOn:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0xf

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_1

    .line 335
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/CallView;->mSpeakerIsOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    iget-boolean v0, v0, Lcom/android/phone/CallView;->mBluetoothAudioIsOn:Z

    if-eqz v0, :cond_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView$4;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x10

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_1

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f0700bb -> :sswitch_1
        0x7f0700cf -> :sswitch_2
        0x7f0700d0 -> :sswitch_3
        0x7f0700d1 -> :sswitch_0
    .end sparse-switch
.end method
