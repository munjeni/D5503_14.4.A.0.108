.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$14;
.super Ljava/lang/Object;
.source "TextToolbar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$14;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$14;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$602(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 597
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$14;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I

    .line 598
    return-void
.end method
