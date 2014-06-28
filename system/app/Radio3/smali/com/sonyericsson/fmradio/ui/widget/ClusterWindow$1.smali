.class Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;
.super Ljava/lang/Object;
.source "ClusterWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    # getter for: Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mOnViewSelectedListener:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->access$000(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;)Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    # getter for: Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mOnViewSelectedListener:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->access$000(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;)Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    # getter for: Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->mAdapter:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->access$100(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;)Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$ClusterAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;->onViewSelected(Landroid/view/View;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->dismiss()V

    .line 86
    return-void
.end method
