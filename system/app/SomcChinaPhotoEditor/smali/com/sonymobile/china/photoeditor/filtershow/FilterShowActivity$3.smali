.class Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->toggleHistoryPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

.field final synthetic val$viewList:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;->val$viewList:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;->val$viewList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1004
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;->val$viewList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;->val$viewList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1007
    return-void
.end method
