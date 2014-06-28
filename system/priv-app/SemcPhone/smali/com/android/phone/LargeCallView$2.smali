.class Lcom/android/phone/LargeCallView$2;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LargeCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;
    invoke-static {v1}, Lcom/android/phone/LargeCallView;->access$200(Lcom/android/phone/LargeCallView;)Lcom/android/phone/RejectMsgAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ItemWithIcon;

    .line 269
    .local v0, "item":Lcom/android/phone/ItemWithIcon;
    invoke-virtual {v0}, Lcom/android/phone/ItemWithIcon;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->activateAmByUser()V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    const/4 v2, 0x3

    # setter for: Lcom/android/phone/LargeCallView;->mDrawerNextState:I
    invoke-static {v1, v2}, Lcom/android/phone/LargeCallView;->access$302(Lcom/android/phone/LargeCallView;I)I

    .line 275
    iget-object v1, p0, Lcom/android/phone/LargeCallView$2;->this$0:Lcom/android/phone/LargeCallView;

    # invokes: Lcom/android/phone/LargeCallView;->triggerDrawerStateChanged()V
    invoke-static {v1}, Lcom/android/phone/LargeCallView;->access$400(Lcom/android/phone/LargeCallView;)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
