.class Lcom/android/phone/SomcTestUI$1;
.super Ljava/lang/Object;
.source "SomcTestUI.java"

# interfaces
.implements Lcom/android/phone/CallView$CallViewActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcTestUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcTestUI;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcTestUI;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/phone/SomcTestUI$1;->this$0:Lcom/android/phone/SomcTestUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionPerformed(ILjava/lang/Object;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "information"    # Ljava/lang/Object;

    .prologue
    .line 136
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$1;->this$0:Lcom/android/phone/SomcTestUI;

    # getter for: Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcTestUI;->access$100(Lcom/android/phone/SomcTestUI;)Lcom/android/phone/CallView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/SomcTestUI$1;->this$0:Lcom/android/phone/SomcTestUI;

    # getter for: Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z
    invoke-static {v0}, Lcom/android/phone/SomcTestUI;->access$000(Lcom/android/phone/SomcTestUI;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setBluetoothAudioIsOn(Z)V

    .line 139
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
