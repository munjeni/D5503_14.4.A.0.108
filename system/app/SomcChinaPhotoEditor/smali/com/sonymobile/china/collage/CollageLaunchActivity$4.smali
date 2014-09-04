.class Lcom/sonymobile/china/collage/CollageLaunchActivity$4;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

.field final synthetic val$fragment:Lcom/sonymobile/china/collage/BaseCollageFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/BaseCollageFragment;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iput-object p2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;->val$fragment:Lcom/sonymobile/china/collage/BaseCollageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;->val$fragment:Lcom/sonymobile/china/collage/BaseCollageFragment;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;->val$fragment:Lcom/sonymobile/china/collage/BaseCollageFragment;

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$600(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/collage/BaseCollageFragment;->updateTemplate(ILjava/lang/String;)V

    .line 455
    :cond_0
    return-void
.end method
