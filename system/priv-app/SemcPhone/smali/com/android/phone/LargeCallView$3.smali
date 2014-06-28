.class Lcom/android/phone/LargeCallView$3;
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
    .line 281
    iput-object p1, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v4, 0x17

    .line 283
    if-nez p3, :cond_1

    .line 284
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    const-string v2, "write new message"

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;
    invoke-static {v1}, Lcom/android/phone/LargeCallView;->access$600(Lcom/android/phone/LargeCallView;)Lcom/android/phone/RejectMsgAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ItemWithIcon;

    .line 288
    .local v0, "item":Lcom/android/phone/ItemWithIcon;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/phone/LargeCallView$3;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Lcom/android/phone/ItemWithIcon;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0
.end method
