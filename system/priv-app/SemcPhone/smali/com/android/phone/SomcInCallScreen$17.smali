.class Lcom/android/phone/SomcInCallScreen$17;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0

    .prologue
    .line 2930
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2932
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v1, "Dismiss voicemail AlertDialog: CANCEL handler..."

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 2934
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2935
    return-void
.end method
