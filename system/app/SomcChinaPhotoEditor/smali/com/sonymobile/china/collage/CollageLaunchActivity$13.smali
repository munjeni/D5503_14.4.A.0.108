.class Lcom/sonymobile/china/collage/CollageLaunchActivity$13;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$callback:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V
    .locals 0

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iput-object p2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;->val$callback:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1597
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;->val$callback:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;->onPictureAdded(Ljava/util/List;)V

    .line 1600
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2300(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2302(Lcom/sonymobile/china/collage/CollageLaunchActivity;[Landroid/net/Uri;)[Landroid/net/Uri;

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2400(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1604
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2402(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)Z

    .line 1606
    :cond_1
    return-void
.end method
