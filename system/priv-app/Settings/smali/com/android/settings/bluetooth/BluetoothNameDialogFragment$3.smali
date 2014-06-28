.class Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    # getter for: Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
