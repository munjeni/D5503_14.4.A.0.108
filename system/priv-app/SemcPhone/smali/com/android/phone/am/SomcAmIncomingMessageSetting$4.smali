.class Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;
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
    .line 236
    iput-object p1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # invokes: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->stopPlayingAllMessages()V
    invoke-static {v1}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$200(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # getter for: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;
    invoke-static {v1}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$300(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)[Lcom/android/phone/am/SomcAmMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # getter for: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mLongClickMessagePosition:I
    invoke-static {v2}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$000(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/phone/am/SomcAmMessage;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 241
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # getter for: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;
    invoke-static {v1}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$400(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)Lcom/android/phone/am/SomcAmContentHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/am/SomcAmContentHelper;->deleteMessageByUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # invokes: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->showDeleteToast()V
    invoke-static {v1}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$500(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # invokes: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->refreshMessages()V
    invoke-static {v1}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$600(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    .line 245
    return-void
.end method
