.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;
.super Ljava/lang/Object;
.source "TextToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createSizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

.field final synthetic val$d:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->val$d:Landroid/util/DisplayMetrics;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 558
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$1100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)[F

    move-result-object v1

    aget v1, v1, v2

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$1002(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;F)F

    .line 559
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$1300(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)[F

    move-result-object v1

    aget v1, v1, v2

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$1202(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;F)F

    .line 560
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$1400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->val$d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    .line 563
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$1200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->val$d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    .line 564
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->notifyToolbarChanged()V

    .line 565
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 567
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$602(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 569
    :cond_0
    return-void
.end method
