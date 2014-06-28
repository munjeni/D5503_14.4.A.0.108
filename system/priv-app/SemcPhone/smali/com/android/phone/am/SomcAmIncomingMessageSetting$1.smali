.class Lcom/android/phone/am/SomcAmIncomingMessageSetting$1;
.super Ljava/lang/Object;
.source "SomcAmIncomingMessageSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmIncomingMessageSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$1;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$1;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # setter for: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mLongClickMessagePosition:I
    invoke-static {v0, p3}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$002(Lcom/android/phone/am/SomcAmIncomingMessageSetting;I)I

    .line 64
    const/4 v0, 0x0

    return v0
.end method
