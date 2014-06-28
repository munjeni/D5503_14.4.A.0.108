.class Lcom/android/phone/SomcInCallScreen$15;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 2904
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$15;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$15;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2906
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2907
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$15;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v1, "Missing voicemail AlertDialog: POSITIVE click..."

    # invokes: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 2908
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$15;->val$msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2910
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    .line 2911
    return-void
.end method
