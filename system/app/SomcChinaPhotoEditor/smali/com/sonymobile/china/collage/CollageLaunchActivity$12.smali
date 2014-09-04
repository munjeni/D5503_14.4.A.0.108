.class Lcom/sonymobile/china/collage/CollageLaunchActivity$12;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;->addPicture([Landroid/net/Uri;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

.field final synthetic val$pcb:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V
    .locals 0

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iput-object p2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->val$pcb:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1561
    .local p1, "pictures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->val$pcb:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->val$pcb:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;->onPictureAdded(Ljava/util/List;)V

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurFragment:I
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateListTabStatus(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2800(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)V

    .line 1567
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurFragment:I
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I

    move-result v1

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1000(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)V

    .line 1569
    :cond_1
    return-void
.end method
