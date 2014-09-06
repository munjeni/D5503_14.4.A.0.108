.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private mFooterView:Landroid/widget/TextView;

.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mMessage:I


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p2, "footer"    # Landroid/widget/TextView;
    .param p3, "textId"    # I

    .prologue
    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1457
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1458
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    .line 1459
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mMessage:I

    .line 1460
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1468
    if-eqz p2, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1470
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 1476
    return-void

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;->mFooterView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
