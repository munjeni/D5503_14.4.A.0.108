.class Lcom/android/phone/SomcDtmfDialPad$5;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 321
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 335
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 326
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    const/16 v2, 0x37

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V
    invoke-static {v1, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$700(Lcom/android/phone/SomcDtmfDialPad;I)V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    const/16 v2, 0x51

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V
    invoke-static {v1, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$700(Lcom/android/phone/SomcDtmfDialPad;I)V

    goto :goto_0

    .line 332
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    const/16 v2, 0x4a

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V
    invoke-static {v1, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$700(Lcom/android/phone/SomcDtmfDialPad;I)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x7f07006c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
