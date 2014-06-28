.class Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;
.super Ljava/lang/Object;
.source "SomcAmIncomingMessageSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmIncomingMessageSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # invokes: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->stopPlayingAllMessages()V
    invoke-static {v0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$200(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    .line 262
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # getter for: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$400(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)Lcom/android/phone/am/SomcAmContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmContentHelper;->deleteAllMessages()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # invokes: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->showDeleteToast()V
    invoke-static {v0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$500(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # invokes: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->refreshMessages()V
    invoke-static {v0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$600(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    .line 266
    return-void
.end method
