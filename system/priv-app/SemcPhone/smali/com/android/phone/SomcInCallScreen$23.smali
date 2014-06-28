.class Lcom/android/phone/SomcInCallScreen$23;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->displayMmiInfo(Lcom/android/internal/telephony/MmiCode;)Landroid/app/Dialog;
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
    .line 4699
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$23;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4701
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4704
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$23;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v1, "displayMmiInfo()"

    # invokes: Lcom/android/phone/SomcInCallScreen;->finishIfNotInUse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$2600(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 4705
    return-void
.end method
