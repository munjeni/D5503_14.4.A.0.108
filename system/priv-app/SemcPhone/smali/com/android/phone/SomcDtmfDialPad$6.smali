.class Lcom/android/phone/SomcDtmfDialPad$6;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcDtmfDialPad;->backspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcDtmfDialPad;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcDtmfDialPad;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # getter for: Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$800(Lcom/android/phone/SomcDtmfDialPad;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # getter for: Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$900(Lcom/android/phone/SomcDtmfDialPad;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # getter for: Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$1000(Lcom/android/phone/SomcDtmfDialPad;)Lcom/android/phone/SomcEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # operator-- for: Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$910(Lcom/android/phone/SomcDtmfDialPad;)I

    .line 367
    return-void
.end method
