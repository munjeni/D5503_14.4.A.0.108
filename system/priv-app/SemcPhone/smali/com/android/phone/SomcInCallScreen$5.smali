.class Lcom/android/phone/SomcInCallScreen$5;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V
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
    .line 2443
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$5;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$5;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mSuppService:Lcom/android/internal/telephony/Phone$SuppService;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2300(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    if-ne v0, v1, :cond_0

    .line 2447
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$5;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2449
    :cond_0
    return-void
.end method
