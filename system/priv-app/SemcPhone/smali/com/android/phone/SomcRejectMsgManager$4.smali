.class Lcom/android/phone/SomcRejectMsgManager$4;
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


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRejectMsgManager;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$4;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 408
    return-void
.end method
