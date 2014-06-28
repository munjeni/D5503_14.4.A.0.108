.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsServiceAvailable:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setMode(IZ)V

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setClickable(Z)V

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setDrawable(Z)V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setMode(IZ)V

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setClickable(Z)V

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setDrawable(Z)V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07010d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
