.class Lcom/android/phone/SomcInCallScreen$11;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V
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
    .line 2771
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$11;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$11;->this$0:Lcom/android/phone/SomcInCallScreen;

    # invokes: Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$100(Lcom/android/phone/SomcInCallScreen;)V

    .line 2774
    return-void
.end method
