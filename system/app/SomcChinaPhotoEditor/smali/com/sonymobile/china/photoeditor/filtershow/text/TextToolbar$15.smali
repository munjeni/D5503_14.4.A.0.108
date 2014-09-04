.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;
.super Ljava/lang/Object;
.source "TextToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
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
    .line 805
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 807
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$700(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 808
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I
    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I

    .line 809
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createFontDialog()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$700(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 811
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I
    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I

    .line 812
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createColorDialog()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    goto :goto_0

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$700(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 814
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I
    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I

    .line 815
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createSizeDialog()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    goto :goto_0
.end method
