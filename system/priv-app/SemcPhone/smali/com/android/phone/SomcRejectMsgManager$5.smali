.class Lcom/android/phone/SomcRejectMsgManager$5;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcRejectMsgManager;->showCustomMessageDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgManager;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRejectMsgManager;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$5;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    iput-object p2, p0, Lcom/android/phone/SomcRejectMsgManager$5;->val$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/SomcRejectMsgManager$5;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager$5;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    iget-object v1, p0, Lcom/android/phone/SomcRejectMsgManager$5;->val$phoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgManager$5;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SomcRejectMsgManager;->addPendingRejectMsgInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method
