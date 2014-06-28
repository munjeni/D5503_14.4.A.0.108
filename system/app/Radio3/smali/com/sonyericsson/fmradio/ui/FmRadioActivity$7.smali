.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

.field final synthetic val$fbLike:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->val$fbLike:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLikeAvailable(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-boolean p1, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFbAvailable:Z

    .line 838
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFbAvailable:Z

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1500(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 848
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1602(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 849
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
