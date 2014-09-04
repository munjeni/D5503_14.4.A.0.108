.class Lcom/sonymobile/china/collage/CollageLaunchActivity$3;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

.field final synthetic val$curFrag:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$3;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iput-object p2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$3;->val$curFrag:Landroid/app/Fragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$3;->val$curFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$3;->val$curFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/sonymobile/china/collage/BaseCollageFragment;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->discard()V

    .line 391
    :cond_0
    return-void
.end method
