.class Lcom/android/phone/SomcInCallScreen$13;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->showExitingECMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;

.field final synthetic val$inCallUiState:Lcom/android/phone/InCallUiState;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/InCallUiState;)V
    .locals 0

    .prologue
    .line 2842
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$13;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$13;->val$inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$13;->val$inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2845
    return-void
.end method
