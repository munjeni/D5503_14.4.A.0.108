.class Lcom/android/phone/GetPin2Screen$1;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    # getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    # invokes: Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$100(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 104
    .local v0, "length_Pin2":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    # invokes: Lcom/android/phone/GetPin2Screen;->printMessage()V
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;)V

    .line 106
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    # getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    # getter for: Lcom/android/phone/GetPin2Screen;->mOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$300(Lcom/android/phone/GetPin2Screen;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    # invokes: Lcom/android/phone/GetPin2Screen;->returnResult()V
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$400(Lcom/android/phone/GetPin2Screen;)V

    goto :goto_0
.end method
