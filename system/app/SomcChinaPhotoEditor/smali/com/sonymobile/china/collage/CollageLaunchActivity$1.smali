.class Lcom/sonymobile/china/collage/CollageLaunchActivity$1;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 238
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureAdded(Ljava/util/List;)V
    .locals 3
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
    .line 241
    .local p1, "pictures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$100(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$202(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)I

    .line 243
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTextForPicBtn()V
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$300(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    .line 244
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->initDefaultCollage()V
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$400(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    .line 245
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateShuffleToast()V
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$500(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    .line 247
    :cond_0
    return-void
.end method
