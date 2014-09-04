.class Lcom/sonymobile/china/collage/CollageLaunchActivity$6;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$6;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$6;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTemplateBySelect(ZI)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1100(Lcom/sonymobile/china/collage/CollageLaunchActivity;ZI)V

    .line 1008
    return-void
.end method
