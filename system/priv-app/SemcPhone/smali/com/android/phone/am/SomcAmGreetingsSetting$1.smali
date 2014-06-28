.class Lcom/android/phone/am/SomcAmGreetingsSetting$1;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingsSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$1;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

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
    .line 78
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$1;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # setter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I
    invoke-static {v0, p3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$002(Lcom/android/phone/am/SomcAmGreetingsSetting;I)I

    .line 79
    const/4 v0, 0x0

    return v0
.end method
