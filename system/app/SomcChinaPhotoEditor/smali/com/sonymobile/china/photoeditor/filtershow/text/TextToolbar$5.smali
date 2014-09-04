.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;
.super Ljava/lang/Object;
.source "TextToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createFontDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 370
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I
    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$302(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I

    .line 371
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iput v2, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    .line 372
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->notifyToolbarChanged()V

    .line 373
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 374
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$500(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 376
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 378
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$602(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 380
    :cond_0
    return-void
.end method
