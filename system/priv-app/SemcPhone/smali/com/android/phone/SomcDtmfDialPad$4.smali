.class Lcom/android/phone/SomcDtmfDialPad$4;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcDtmfDialPad;->initButtons(Z)V
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
    .line 299
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$4;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 302
    .local v1, "id":I
    # getter for: Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/phone/SomcDtmfDialPad;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 305
    .local v0, "c":C
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad$4;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # getter for: Lcom/android/phone/SomcDtmfDialPad;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v2}, Lcom/android/phone/SomcDtmfDialPad;->access$300(Lcom/android/phone/SomcDtmfDialPad;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/phone/SomcDtmfDialPad;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad$4;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->processDtmf(C)V
    invoke-static {v2, v0}, Lcom/android/phone/SomcDtmfDialPad;->access$400(Lcom/android/phone/SomcDtmfDialPad;C)V

    .line 313
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating display for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/SomcDtmfDialPad;->access$500(Ljava/lang/String;)V

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad$4;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # getter for: Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/phone/SomcDtmfDialPad;->access$600()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V
    invoke-static {v3, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$700(Lcom/android/phone/SomcDtmfDialPad;I)V

    .line 319
    :cond_2
    :goto_0
    return-void

    .line 317
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring display request for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/SomcDtmfDialPad;->access$500(Ljava/lang/String;)V

    goto :goto_0
.end method
