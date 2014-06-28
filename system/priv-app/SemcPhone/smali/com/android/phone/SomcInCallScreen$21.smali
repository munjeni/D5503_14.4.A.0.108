.class Lcom/android/phone/SomcInCallScreen$21;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .prologue
    .line 4468
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$21;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$21;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 4470
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$21;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v1, "handle POST_DIAL_CANCELED!"

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 4471
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$21;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    .line 4472
    return-void
.end method
